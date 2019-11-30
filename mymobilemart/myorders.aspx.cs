using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace mymobilemart
{
    public partial class myorders : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\KIRAN\\documents\\visual studio 2010\\Projects\\mymobilemart\\mymobilemart\\App_Data\\martdatabase.mdf;Integrated Security=True;User Instance=True");
        string newstatus = "no";
        int currentstock, newstock, buyqty, orid;
        protected void Page_Load(object sender, EventArgs e)
        {

          
            try
            {
                int st = (int)Session["log"];                                       //get login status to st;
                if (st == 1)
                {

                    ImageButton2.ImageUrl = Session["picurl"].ToString();
                    ImageButton2.Visible = true;
                    HyperLink1.Text = Session["un"].ToString();
                    if ((int)Session["userlog"] == 1)                               //check loged in as customer
                    {
                       
                        HyperLink1.NavigateUrl = "~/myaccount.aspx";
                        ImageButton1.Visible = true;
                       

                    }
                    else
                    {
                        if ((int)Session["adminlog"] == 1)                          //check loged in as admin                         
                        {
                            ImageButton1.Visible = false;
                            HyperLink1.Text = Session["un"].ToString();

                         
                        }
                    }
                }
                else                                                                //if visitor
                {
                    HyperLink1.NavigateUrl = "~/loginpage.aspx";
                    HyperLink1.Text = "login";
                 
                }
                Session["un"] = Session["un"].ToString();

            }
            catch                                                              //if visitor
            {
              
                HyperLink1.Text = "Login";
                HyperLink1.NavigateUrl = "~/loginpage.aspx";
               
                Session["log"] = 0;
                Session["userlog"] = 0;
                Session["adminlog"] = 0;
            }
            finally
            {



            }
        }
        protected void SearchButton_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("product.aspx");
            }
            catch (Exception ex)
            {

            }
        }
        protected void ImageButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("cart.aspx");
        }
        protected void Account_Click(object sender, EventArgs e)
        {
            try
            {
                int st = (int)Session["userlog"];
                if (st == 1)
                {
                    Response.Redirect("myaccount.aspx");
                }
                else
                {
                    Response.Write("<script LANGUAGE='JavaScript'>alert('This operation reqires Login with User Account')</script>");
                }
            }
            catch
            {

            }
            finally
            {


            }

        }
        protected void Cart_Click(object sender, EventArgs e)
        {
            try
            {
                int st = (int)Session["userlog"];
                if (st == 1)
                {
                    Response.Redirect("cart.aspx");
                }
                else
                {
                    Response.Write("<script LANGUAGE='JavaScript'>alert('This operation reqires Login with User Account')</script>");
                }
            }
            catch
            {

            }
            finally
            {


            }
        }

        protected void Order_Click(object sender, EventArgs e)
        {
            try
            {
                int st = (int)Session["userlog"];
                if (st == 1)
                {
                    Response.Redirect("myorders.aspx");
                }
                else
                {
                    Response.Write("<script LANGUAGE='JavaScript'>alert('This operation reqires Login with User Account')</script>");
                }
            }
            catch
            {
                Response.Write("<script LANGUAGE='JavaScript'>alert('This operation reqires Login with User Account')</script>");
            }
            finally
            {


            }
        }

        protected void aboutus_Click(object sender, EventArgs e)
        {
            try
            {
                int st = (int)Session["userlog"];
                if (st == 1)
                {

                }
                else
                {
                    Response.Write("<script LANGUAGE='JavaScript'>alert('This operation reqires Login with User Account')</script>");
                }
            }
            catch
            {

            }
            finally
            {


            }
        }

       

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("product.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button2.Enabled = true;
            Session["orid"] = Convert.ToInt32(orderid.Text);
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from [orderandpay] where username='" + Session["un"] + "' AND orderid='" + Session["orid"].ToString() + "'", con);
            int count = (int)cmd.ExecuteScalar();
            if (count == 1)
            {
                SqlCommand cmd2 = new SqlCommand("select * from [orderandpay] where username='" + Session["un"] + "' AND orderid='" + Session["orid"].ToString() + "'", con);
                SqlDataReader dr = cmd2.ExecuteReader();
                trackorder.Visible = true;
                if (dr.Read())
                {
                    Label1.Text = dr[0].ToString();
                    Label2.Text = dr[2].ToString();
                    Label3.Text = dr[1].ToString();
                    Label4.Text = dr[3].ToString();
                    Label5.Text = dr[4].ToString();
                    Label6.Text = dr[8].ToString();
                    Label7.Text = dr[12].ToString();
                    Label8.Text = dr[13].ToString();
                    Label9.Text = dr[14].ToString();
                }
                dr.Close();
                if (Label9.Text == "Cancelled By Customer" || Label9.Text == "Cancelled By SmartMobileMart")
                {
                    Button2.Enabled = false;
                }
                con.Close();
            }
            else
                Response.Write("<script LANGUAGE='JavaScript'>alert('Invalid Order ID')</script>");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            //**********check orderid existance of specified user*************//
            SqlCommand cmd = new SqlCommand("select count(*) from [orderandpay] where username='" + Session["un"] + "' AND orderid='" + Session["orid"].ToString() + "'", con);
            int count = (int)cmd.ExecuteScalar();
            con.Close();
            if (count == 1)
            {

                con.Open();
                SqlCommand getbuyqty = new SqlCommand("select qty from [order] where username='" + Session["un"].ToString() + "' AND orderid='" + Session["orid"].ToString() + "'", con);
                buyqty = (int)getbuyqty.ExecuteScalar();
                con.Close();
                string buymodel;
                con.Open();
                SqlCommand getbuymodel = new SqlCommand("select model from [order] where username='" + Session["un"].ToString() + "' AND orderid='" + Session["orid"].ToString() + "'", con);
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
        public void updatestock()
        {
            con.Open();
            SqlCommand up1 = new SqlCommand("update [supplier] set qty='" + Session["newstk"].ToString() + "' where productmodel='" + Session["buymodel"].ToString() + "'", con);
            up1.ExecuteNonQuery();
            SqlCommand up2 = new SqlCommand("update [product] set qty='" + Session["newstk"].ToString() + "' , status='" + Session["newsts"].ToString() + "'  where model='" + Session["buymodel"].ToString() + "'", con);
            up2.ExecuteNonQuery();
            SqlCommand up3 = new SqlCommand("update [orderandpay] set  status='" + "Cancelled By Customer" + "'  where model='" + Session["buymodel"].ToString() + "' AND orderid='" + Session["orid"].ToString() + "'", con);
            up3.ExecuteNonQuery();
            SqlCommand up4 = new SqlCommand("update [order] set  status='" + "You Cancelled this Order" + "'  where model='" + Session["buymodel"].ToString() + "' AND orderid='" + Session["orid"].ToString() + "'", con);
            up4.ExecuteNonQuery();
            con.Close();
            Response.Write("<script LANGUAGE='JavaScript'>alert('Order Successfuly Cancelled')</script>");
            Server.Transfer("myorders.aspx");

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Write("<script LANGUAGE='JavaScript'>alert('Order Successfuly Cancelled')</script>");
        }


    }
}