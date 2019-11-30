using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace mymobilemart
{
    public partial class statusupdate : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\KIRAN\\documents\\visual studio 2010\\Projects\\mymobilemart\\mymobilemart\\App_Data\\martdatabase.mdf;Integrated Security=True;User Instance=True");
        string newstatus = "no";
        int currentstock, newstock, buyqty, orid;
        protected void Page_Load(object sender, EventArgs e)
        {
            upsts.Visible = false;
        }

        protected void btn1_Click(object sender, EventArgs e)
        {

            //int id = Convert.ToInt16(oid.Text);
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select count(*) from [orderandpay] where orderid='" + oid.Text + "'", con);
            int c = (int)cmd1.ExecuteScalar();
            if (c == 1)
            {
                Session["orid"] = oid.Text;
                upsts.Visible = true;
            }
            else
            {
                upsts.Visible = false;
                Response.Write("<script LANGUAGE='JavaScript'>alert('Invalid Order ID')</script>");
            }
            
            con.Close();
        }

        protected void up_Click(object sender, EventArgs e)
        {

            if (DropDownList1.SelectedIndex == 0)
            {
                con.Open();
                //**********check orderid existance of specified user*************//
               
                SqlCommand cmd = new SqlCommand("select count(*) from [orderandpay] where  orderid='" + Session["orid"].ToString() + "'", con);
                int count = (int)cmd.ExecuteScalar();
                con.Close();
                if (count == 1)
                {

                    con.Open();
                    SqlCommand getbuyqty = new SqlCommand("select qty from [order] where orderid='" + Session["orid"].ToString() + "'", con);
                    buyqty = (int)getbuyqty.ExecuteScalar();
                    con.Close();
                    string buymodel;
                    con.Open();
                    SqlCommand getbuymodel = new SqlCommand("select model from [order] where orderid='" + Session["orid"].ToString() + "'", con);
                    SqlDataReader dr = getbuymodel.ExecuteReader();
                    dr.Read();
                    buymodel = dr[0].ToString();
                    Session["buymodel"] = buymodel;
                    dr.Close();
                    SqlCommand getstock = new SqlCommand("select qty from [supplier] where productmodel='" + buymodel + "'", con);
                    currentstock = (int)getstock.ExecuteScalar();
                    newstock = currentstock + buyqty;

                    if (newstock == 0)
                        newstatus = "Out Of Stock";
                    else
                        if (newstock > 10)
                            newstatus = "Available";
                        else
                            newstatus = "Only " + newstock + " Left";
                    Session["newstk"] = newstock;
                    Session["newsts"] = newstatus;
                    con.Close();
                    updatestock();

                }
                else
                {
                    Response.Write("<script LANGUAGE='JavaScript'>alert('Invalid Order ID')</script>");
                }

            }
            else
            {

                try
                {
                    con.Open();
                    SqlCommand cmd2 = new SqlCommand("update [orderandpay] set status='" + DropDownList1.SelectedItem + "' where orderid='" + Session["orid"].ToString() + "'", con);
                    cmd2.ExecuteNonQuery();
                    SqlCommand cmd3 = new SqlCommand("update [order] set status='" + DropDownList1.SelectedItem + "' where orderid='" + Session["orid"].ToString() + "'", con);
                    cmd3.ExecuteNonQuery();                  
                    Response.Write("<script LANGUAGE='JavaScript'>alert('Order Status Successfuly Updated')</script>");
                    Server.Transfer("statusupdate.aspx");
                }
                catch
                {
                    Response.Write("<script LANGUAGE='JavaScript'>alert('Something went wrong')</script>");
                }

                finally
                {
                    con.Close();
                }

            }
        }


        public void updatestock()
        {
            con.Open();
            SqlCommand up1 = new SqlCommand("update [supplier] set qty='" + Session["newstk"].ToString() + "' where productmodel='" + Session["buymodel"].ToString() + "'", con);
            up1.ExecuteNonQuery();
            SqlCommand up2 = new SqlCommand("update [product] set qty='" + Session["newstk"].ToString() + "' , status='" + Session["newsts"].ToString() + "'  where model='" + Session["buymodel"].ToString() + "'", con);
            up2.ExecuteNonQuery();
            SqlCommand up3 = new SqlCommand("update [orderandpay] set  status='" + "Cancelled By SmartMobileMart" + "'  where model='" + Session["buymodel"].ToString() + "' AND orderid='" + Session["orid"].ToString() + "'", con);
            up3.ExecuteNonQuery();
            SqlCommand up4 = new SqlCommand("update [order] set  status='" + "Cancelled By SmartMobileMart" + "'  where model='" + Session["buymodel"].ToString() + "' AND orderid='" + Session["orid"].ToString() + "'", con);
            up4.ExecuteNonQuery();
            con.Close();
            Response.Write("<script LANGUAGE='JavaScript'>alert('Order Successfuly Cancelled')</script>");
            Server.Transfer("statusupdate.aspx");

        }
    }
}