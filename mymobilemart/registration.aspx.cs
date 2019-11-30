using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace mymobilemart
{
    public partial class registration1 : System.Web.UI.Page
    {
        string picurl = "images\\profile\\default.jpg";
        string fname = null;
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\KIRAN\\Documents\\Visual Studio 2010\\Projects\\mymobilemart\\mymobilemart\\App_Data\\martdatabase.mdf;Integrated Security=True;User Instance=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text.Length < 8)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "text", "JSconfirm2()", true);

            }
            else
            {

                try
                {

                    con.Open();
                    SqlCommand cmd1 = new SqlCommand("select count(*) from [admintable] where adminid='" + TextBox1.Text + "'", con);
                    int cnt1 = (int)cmd1.ExecuteScalar();
                    if (cnt1 == 0)
                    {
                        SqlCommand cmd2 = new SqlCommand("select count(*) from [user] where username='" + TextBox1.Text + "'", con);
                        int cnt2 = (int)cmd2.ExecuteScalar();
                        if (cnt2 == 0)
                        {
                            if (FileUpload1.HasFile)
                            {
                                if (FileUpload1.FileName.Contains("jpg") || FileUpload1.FileName.Contains("jpeg") || FileUpload1.FileName.Contains("png"))
                                {
                                    if (FileUpload1.FileName.Contains("jpg") || FileUpload1.FileName.Contains("jpeg"))
                                        fname = TextBox1.Text + ".jpg";
                                    else
                                        if (FileUpload1.FileName.Contains("png"))
                                            fname = TextBox1.Text + ".png";
                                    FileUpload1.PostedFile.SaveAs(Server.MapPath("images\\profile\\" + fname));
                                    picurl = "images\\profile\\" + fname;
                                    SqlCommand insert = new SqlCommand("insert into [user] values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + picurl + "')", con);
                                    insert.ExecuteNonQuery();
                                    Session["log"] = 1;
                                    Session["userlog"] = 1;
                                    Session["un"] = TextBox1.Text;
                                    Session["picurl"] = picurl;
                                    Session["emailid"] = TextBox4.Text;
                                    ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "text", "JSconfirm()", true);



                                }
                                else
                                {


                                    //not jpg png***********************
                                    SqlCommand insert = new SqlCommand("insert into [user] values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + picurl + "')", con);
                                    insert.ExecuteNonQuery();
                                    Session["log"] = 1;
                                    Session["userlog"] = 1;
                                    Session["un"] = TextBox1.Text;
                                    Session["picurl"] = picurl;
                                    Session["emailid"] = TextBox4.Text;
                                    ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "text", "JSconfirm()", true);
                                }
                            }
                            else
                            {


                                //no file*******************************************

                                SqlCommand insert = new SqlCommand("insert into [user] values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + picurl + "')", con);
                                insert.ExecuteNonQuery();
                                Session["log"] = 1;
                                Session["userlog"] = 1;
                                Session["un"] = TextBox1.Text;
                                Session["picurl"] = picurl;
                                Session["emailid"] = TextBox4.Text;
                                ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "text", "JSconfirm()", true);
                            }
                        }
                        else
                        {
                            Label1.Text = "UserName " + TextBox1.Text + " Not Available";
                            Label1.Visible = true;

                        }


                    }
                    else
                    {
                        Label1.Text = "UserName " + TextBox1.Text + " Not Available";
                        Label1.Visible = true;

                    }
                }

                finally
                {
                    con.Close();

                }


            }

        }


    }

}


