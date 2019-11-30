using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace mymobilemart
{
    public partial class forgotpassword1 : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection("Data Source=LAPTOP-C4ILREB6\\SQLEXPRESS;Initial Catalog=mymobilemart;Integrated Security=True");
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\KIRAN\\documents\\visual studio 2010\\Projects\\mymobilemart\\mymobilemart\\App_Data\\martdatabase.mdf;Integrated Security=True;User Instance=True");
           
        protected void Page_Load(object sender, EventArgs e)
        {
            
            TextBox1.Enabled = false;
            TextBox2.Enabled = false;

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
             con.Open();
            string secq =null;
            try
            {
                SqlCommand cmd = new SqlCommand("select email,secquestion,profilepic from [user] where username='" + TextBox3.Text + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["un"] = TextBox3.Text;
                    Session["emailid"] = dr[0].ToString();
                    secq = dr[1].ToString();
                    Session["picurl"] = dr[2].ToString();
                    TextBox1.Text = secq;
                    TextBox1.Enabled = true;
                    TextBox2.Enabled = true;

                }
                else
                    Label1.Visible = true;
            }
            catch
            {
                Label1.Visible = true;

            }
            finally
            {
                con.Close();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label2.Visible = false;
            con.Open();
            string seca = "";
            try
            {
                SqlCommand cmd = new SqlCommand("select secanswer from [user] where username='" + TextBox3.Text + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    seca = dr[0].ToString();
                    if (seca == TextBox2.Text)
                    {
                        Session["un"] = TextBox3.Text;
                        Response.Redirect("changepassword.aspx");
                    }
                    else
                    {
                        Label2.Visible = true;
                        TextBox1.Text = null;
                        TextBox2.Text = null;
                    }
                }
                else
                {
                    Label2.Visible = true;
                    TextBox1.Text = null;
                    TextBox2.Text = null;
                }

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
}