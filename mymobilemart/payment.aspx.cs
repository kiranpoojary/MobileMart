using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net;
using System.Data;
using System.Collections.Specialized;

namespace mymobilemart
{

    public partial class payment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\KIRAN\\documents\\visual studio 2010\\Projects\\mymobilemart\\mymobilemart\\App_Data\\martdatabase.mdf;Integrated Security=True;User Instance=True");
        string type;
        decimal pay;
        string clr, newstatus = "no";
        Decimal tot;
        int currentstock, buyqty, newstock;

        protected void Page_Load(object sender, EventArgs e)
        {
            clr = Session["clr"].ToString();
            pay = Convert.ToDecimal(Session["price"]);
            cardpay.Visible = false;
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Int64 mob;

            try
            {
                mob = Int64.Parse(TextBox6.Text);


                if (TextBox6.Text.Length != 10)
                {

                    Response.Write("<script LANGUAGE='JavaScript'>alert('Invalid Mobile Number')</script>");
                }
                else
                {
                    con.Open();
                    SqlCommand getstock = new SqlCommand("select qty from [supplier] where productmodel='" + Session["model"] + "'", con);
                    currentstock = (int)getstock.ExecuteScalar();
                    con.Close();
                    buyqty = int.Parse(TextBox4.Text);
                    if (buyqty > currentstock)
                    {
                        Response.Write("<script LANGUAGE='JavaScript'>alert('Only '+'" + currentstock.ToString() + "'+' Pieces of model Available')</script>");
                    }
                    else
                    {
                        newstock = currentstock - buyqty;
                        if (newstock == 0)
                            newstatus = "Out Of Stock";
                        else
                            if (newstock > 10)
                                newstatus = "Available";
                            else
                                newstatus = "Only " + newstock + " Left";
                        Session["newstk"] = newstock;
                        Session["newsts"] = newstatus;
                        Session["qty"] = int.Parse(TextBox4.Text);
                        tot = int.Parse(TextBox4.Text) * pay;
                        if (RadioButton2.Checked == true)
                        {
                            type = "Card";
                            cardpay.Visible = true;
                            qty.Visible = false;
                        }
                        else
                        {
                            type = "COD";
                            codorder();

                        }

                    }
                }
            }
            catch
            {
                Response.Write("<script LANGUAGE='JavaScript'>alert('Somethig went wrong:possible reason 1)invalid product quantity or mobile number')</script>");
            }


            finally
            {

            }


        }


        protected void Button2_Click(object sender, EventArgs e)           //after card details click
        {
            int mnt, yr;
            mnt = DateTime.Today.Month;
            yr = DateTime.Today.Year;
            if (Int32.Parse(DropDownList1.SelectedItem.ToString()) < mnt && Int32.Parse(DropDownList2.SelectedItem.ToString()) == yr)  //checking Card Expiry
            {

                Response.Write("<script LANGUAGE='JavaScript'>alert('Invalid Card')</script>");
                Server.Transfer("product.aspx");
            }
            else
                cardorder();
        }


        public void cardorder()
        {
            Session["qty"] = int.Parse(TextBox4.Text);
            tot = int.Parse(TextBox4.Text) * pay;
            string days = DateTime.Now.ToString("yyyy-MM-dd");
            string exp = DropDownList1.SelectedItem + "-" + DropDownList2.SelectedItem;
            con.Open();
            SqlCommand cmd2 = new SqlCommand("insert into [order] (username,model,modelimg,color,dateofpurchase,qty,rate,payprice,paymode,deladdr,mobile,status) values('" + Session["un"] + "','" + Session["model"] + "','" + Session["image1"] + "','" + clr + "','" + days + "','" + Session["qty"] + "','" + pay + "','" + tot + "','" + "Card" + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + "Order Placed" + "')", con);
            cmd2.ExecuteNonQuery();
            SqlCommand cmd = new SqlCommand("insert into [orderandpay] (dateofpurchase,model,color,qty,rate,finalpayamt,username,paytype,cardholdername,cardno,cardexpiry,deladdr,mobile,status) values('" + days + "','" + Session["model"] + "','" + clr + "','" + Session["qty"] + "','" + pay + "','" + tot + "','" + Session["un"] + "','" + "Card" + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + exp + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + "Order Placed" + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            updatestock();

        }

        public void codorder()
        {

            string days = DateTime.Now.ToString("yyyy-MM-dd");
            con.Open();
            SqlCommand cmd2 = new SqlCommand("insert into [order] (username,model,modelimg,color,dateofpurchase,qty,rate,payprice,paymode,deladdr,mobile,status) values('" + Session["un"] + "','" + Session["model"] + "','" + Session["image1"] + "','" + clr + "','" + days + "','" + Session["qty"] + "','" + pay + "','" + tot + "','" + "COD" + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + "Order Placed" + "')", con);
            cmd2.ExecuteNonQuery();
            SqlCommand cmd = new SqlCommand("insert into [orderandpay] (dateofpurchase,model,color,qty,rate,username,paytype,finalpayamt,deladdr,mobile,status) values('" + days + "','" + Session["model"] + "','" + clr + "','" + Session["qty"] + "','" + pay + "','" + Session["un"] + "','" + "COD" + "','" + tot + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + "Order Placed" + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            updatestock();

        }

        public void updatestock()
        {

            con.Open();
            SqlCommand up1 = new SqlCommand("update [supplier] set qty='" + Session["newstk"].ToString() + "' where productmodel='" + Session["model"].ToString() + "'", con);
            up1.ExecuteNonQuery();
            SqlCommand up2 = new SqlCommand("update [product] set qty='" + Session["newstk"].ToString() + "' , status='" + Session["newsts"].ToString() + "'  where model='" + Session["model"].ToString() + "'", con);
            up2.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "text", "JSconfirm()", true);

            //sending message notification to mobile number

            string desadr = "91" + TextBox6.Text;
            string message = "hi " + Session["un"] + " your order for " + Session["model"] + " worth of rupees " + pay + " has been placed and will be deliverd within 7 days.Thank for purchasing from SmartMobileMart! Happy Shopping";
            string message1 = HttpUtility.UrlEncode(message);
            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("http://api.textlocal.in/send/", new NameValueCollection()
                {

                    {"apikey","	uc66g6zj1Lg-x8bnkxc1zVLoxuavUNPR6wzpJSv8A2"},
                    {"numbers",desadr},
                    {"message",message1},
                    {"sender","TXTLCL"}

                });


            }
        }
    }
}
