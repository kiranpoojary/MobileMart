using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace mymobilemart
{
    public partial class loginpage1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["log"] = 0;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\KIRAN\\documents\\visual studio 2010\\Projects\\mymobilemart\\mymobilemart\\App_Data\\martdatabase.mdf;Integrated Security=True;User Instance=True");
            con.Open();

            try
            {
                SqlCommand cmd1 = new SqlCommand("select count(*) from [admintable] where adminid='" + TextBox1.Text + "' AND password='" + TextBox2.Text + "'", con);
                int temp = (int)cmd1.ExecuteScalar();
                if (temp == 1)
                {

                    Session["log"] = 1;
                    Session["adminlog"] = 1;
                    Session["userlog"] = 0;
                    Session["picurl"] = "images\\profile\\default.jpg";
                    Session["un"] = TextBox1.Text;
                    Response.Redirect("home.aspx");
                }
                else
                {
                    SqlCommand cmd2 = new SqlCommand("select count(*) from [user] where username='" + TextBox1.Text + "' AND password='" + TextBox2.Text + "'", con);
                    int temp2 = (int)cmd2.ExecuteScalar();
                    if (temp2 == 1)                                                                            //if user exist
                    {
                        string picurl = null;

                        SqlCommand cmd3 = new SqlCommand("select email,profilepic from [user] where username='" + TextBox1.Text + "'", con);
                        SqlDataReader dr = cmd3.ExecuteReader();
                        if (dr.Read())
                        {
                            Session["emailid"] = dr[0].ToString();
                            picurl = dr[1].ToString();
                        }
                        Session["picurl"] = picurl;
                        Session["log"] = 1;
                        Session["adminlog"] = 0;
                        Session["userlog"] = 1;
                        Session["un"] = TextBox1.Text;
                        Response.Redirect("home.aspx");

                    }

                    else
                    {
                       Label1.Visible = true;
                    }
                }
            }
            catch
            {
                Response.Write("<script LANGUAGE='JavaScript'>alert('Somthing went wrong')</script>");

            }
            finally
            {
                con.Close();
            }

        }
    }
}