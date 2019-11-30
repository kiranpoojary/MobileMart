using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;


namespace mymobilemart
{

    public partial class deleteuser : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\KIRAN\\documents\\visual studio 2010\\Projects\\mymobilemart\\mymobilemart\\App_Data\\martdatabase.mdf;Integrated Security=True;User Instance=True");
        string user = null;


        protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Visible = false;

            TextBox1.Enabled = true;
            userinfo.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();

            try
            {
                string name = TextBox1.Text;
                user = TextBox1.Text.ToString();
                SqlCommand cmd = new SqlCommand("select count(*) from [user] where username='" + name + "'", con);

                int temp = (int)cmd.ExecuteScalar();
                if (temp == 1)                      //check for user existance
                {
                    userinfo.Visible = true;
                    SqlCommand cmd1 = new SqlCommand("select profilepic from [user] where username='" + TextBox1.Text + "'", con);
                    SqlDataReader dr = cmd1.ExecuteReader();
                    if (dr.Read())
                    {
                        Label2.Text = name;

                        Image1.ImageUrl = dr[0].ToString();
                        Button2.Visible = true;
                        Image1.Visible = true;
                        Label2.Visible = true;
                        TextBox1.Enabled = false;
                    }
                    dr.Close();
                }
                else
                {
                    Label1.Visible = true;
                }

            }
            catch
            {
                Response.Write("<script LANGUAGE='JavaScript'>alert('Something Went Wrong')</script>");
            }
            finally
            {

                con.Close();

            }
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            string st1 = "Approved and Order Placed";
            string st2 = "Packed";
            string st3 = "Dispatched";
            string st4 = "Out For Delivery Today";
            string st5 = "Order Placed";
            int exist1 = 0;
            if (CheckBox1.Checked == true)
            {
                try
                {


                    con.Open();
                    //check for pending orders
                    SqlCommand cmd = new SqlCommand("select count(*) from [orderandpay] where username='" + TextBox1.Text + "' AND( status='" + st1 + "' OR status='" + st2 + "'  OR status='" + st3 + "' OR status='" + st4 + "' OR status='" + st5 + "')", con);   
                    exist1 = (int)cmd.ExecuteScalar();

                    if (exist1 != 0)    //if any pending orders
                    {
                        Response.Write("<script LANGUAGE='JavaScript'>alert('User '+'" + Label2.Text + "'+' has '+'" + exist1 + "'+' pending orders,Cancel order before remove')</script>");
                        Server.Transfer("deleteuser.aspx");

                    }
                    else
                    {
                        SqlCommand cmd2 = new SqlCommand("select profilepic from [user] where username='" + Label2.Text + "'", con);
                        SqlDataReader dr = cmd2.ExecuteReader();
                        if (dr.Read())
                        {

                            string fname = dr[0].ToString();
                            dr.Close();
                            if (fname.Contains("default.jpg"))
                            {
                                deletings();
                            }
                            else
                            {
                                File.Delete(Server.MapPath(fname));
                                deletings();
                            }

                        }



                    }
                }

                      catch
                {
                   
                }

                finally
                {

                    con.Close();
                    TextBox1.Enabled = true;
                }
            }

            else
            {
                Response.Write("<script LANGUAGE='JavaScript'>alert('mark as verified,if verified')</script>");
                userinfo.Visible = true;

            }
        }

        public void deletings()
        {
            //deleting all user informations from database
            con.Close();
            con.Open();
            SqlCommand cmd3 = new SqlCommand("delete from [user] where username='" + Label2.Text + "'", con);
            cmd3.ExecuteNonQuery();
            SqlCommand cmd4 = new SqlCommand("delete from [cart] where username='" + Label2.Text + "'", con);
            cmd4.ExecuteNonQuery();
            SqlCommand cmd5 = new SqlCommand("delete from [userreview] where username='" + Label2.Text + "'", con);
            cmd5.ExecuteNonQuery();
            SqlCommand cmd6 = new SqlCommand("delete from [order] where username='" + Label2.Text + "'", con);
            cmd6.ExecuteNonQuery();
            SqlCommand cmd7 = new SqlCommand("delete from [orderandpay] where username='" + Label2.Text + "'", con);
            cmd7.ExecuteNonQuery();
            Response.Write("<script LANGUAGE='JavaScript'>alert('User '+'" + Label2.Text + "'+' has Successfuly Removed')</script>");
            con.Close();
            Server.Transfer("deleteuser.aspx");
        }
    }
}