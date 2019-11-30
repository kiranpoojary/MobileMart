using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace mymobilemart
{
    public partial class changepassword1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == string.Empty || TextBox2.Text == string.Empty)   //check password field is empty or not
            {
                Response.Write("<script LANGUAGE='JavaScript'>alert('Empty password field found')</script>");

            }
            else
            if (TextBox1.Text.Length < 8 || TextBox2.Text.Length < 8)   //check for valid mobile number
            {
                ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "text", "JSconfirm2()", true);
            }
            else            
            {

                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\KIRAN\\documents\\visual studio 2010\\Projects\\mymobilemart\\mymobilemart\\App_Data\\martdatabase.mdf;Integrated Security=True;User Instance=True");
                con.Open();
                try
                {    //set new password
                    SqlCommand cmd = new SqlCommand("update [user] set password='" + TextBox1.Text + "' where username='" + Session["un"] + "'", con);
                    cmd.ExecuteNonQuery();
                    Session["un"] = Session["un"];
                    Session["log"] = 1;
                    Session["userlog"] = 1;
                    ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "text", "JSconfirm()", true);
            

                }

                catch
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('something went wrong');window.open('home.aspx');", true);

                }

                {
                    con.Close();
                }
            }
        }
    }
}