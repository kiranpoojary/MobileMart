using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services;
namespace mymobilemart
{
    public partial class auto : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\KIRAN\\documents\\visual studio 2010\\Projects\\mymobilemart\\mymobilemart\\App_Data\\martdatabase.mdf;Integrated Security=True;User Instance=True");
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
                        topt.Visible = true;
                        menulogout1.Text = "Logout";
                        HyperLink1.NavigateUrl = "~/myaccount.aspx";
                        ImageButton1.Visible = true;
                        usermenu.Visible = true;
                        adminmenu.Visible = false;
                    }
                    else
                    {
                        if ((int)Session["adminlog"] == 1)                          //check loged in as admin                         
                        {
                            topt.Visible = false;
                            ImageButton1.Visible = false;
                            HyperLink1.Text = Session["un"].ToString();
                            menulogout2.Text = "Logout";
                            adminmenu.Visible = true;
                            usermenu.Visible = false;
                        }
                    }
                }
                else                                                                //if visitor
                {
                    topt.Visible = false;
                    HyperLink1.NavigateUrl = "~/loginpage.aspx";
                    HyperLink1.Text = "login";
                    menulogout1.Text = "Login";
                    usermenu.Visible = true;
                    adminmenu.Visible = false;
                }
                Session["un"] = Session["un"].ToString();

            }
            catch                                                              //if visitor
            {
                topt.Visible = false;
                usermenu.Visible = true;
                HyperLink1.Text = "Login";
                HyperLink1.NavigateUrl = "~/loginpage.aspx";
                menulogout1.Text = "Login";
                Session["log"] = 0;
                Session["userlog"] = 0;
                Session["adminlog"] = 0;
            }
            finally
            {


            }

           
                        


        }
       
        [WebMethod]
        public static List<string> GetAutoCompleteData(string DName)
        {
            List<string> result = new List<string>();
            using (SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\KIRAN\\documents\\visual studio 2010\\Projects\\mymobilemart\\mymobilemart\\App_Data\\martdatabase.mdf;Integrated Security=True;User Instance=True"))
            {
                using (SqlCommand cmd = new SqlCommand("select DISTINCT model from productfeature where model LIKE '%'+@SearchText+'%'", con))
                {
                    con.Open();
                    cmd.Parameters.AddWithValue("@SearchText", DName);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        result.Add(dr["model"].ToString());
                    }
                   
                    return result;

                }
            }
        
    }
        protected void SearchButton_Click(object sender, EventArgs e)
        {
              try
            {
                con.Open();
                if (txtSearch.Text != string.Empty)
                {
                    SqlCommand chk = new SqlCommand("select count(*) from [productfeature] where model='" + txtSearch.Text + "'", con);
                    int c = (int)chk.ExecuteScalar();
                    if (c == 0)
                    {

                        Response.Write("<script LANGUAGE='JavaScript'>alert('Product Model Not Found')</script>");
                    }
                    else
                    {

                        Session["model"] = txtSearch.Text;
                        Response.Redirect("product.aspx");
                    }
                }
                else
                    Response.Write("<script LANGUAGE='JavaScript'>alert('Please specify Model')</script>");
            }
            finally
            {
                con.Close();
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
                     string y = "hhhhhhhhhh";
                   ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "text", "JSconfirm('"+y+"')", true);
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
                    ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "text", "JSconfirm()", true);
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
                    ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "text", "JSconfirm()", true);
                }
            }
            catch
            {

            }
            finally
            {


            }
        }


        protected void aboutus_Click(object sender, EventArgs e)
        {
            
                Response.Redirect("aboutandcontactus.aspx");
            
        }
      
        protected void menulogout1_Click(object sender, EventArgs e)
        {
            if ((int)Session["log"] == 1)
            {
                Session["userlog"] = 0;
                Session["adminlog"] = 0;
                Session["log"] = 0;
                menulogout1.Text = "login";
                menulogout2.Text = "login";
                Response.Redirect("home.aspx");
            }
            else
            {
                Response.Redirect("loginpage.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["model"] = Label2.Text;
            Response.Redirect("product.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["model"] = Label3.Text;
            Response.Redirect("product.aspx");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["model"] = Label4.Text;
            Response.Redirect("product.aspx");

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["model"] = Label5.Text;
            Response.Redirect("product.aspx");

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Session["model"] = Label6.Text;
            Response.Redirect("product.aspx");

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Session["model"] = Label1.Text;
            Response.Redirect("product.aspx");
        }
    }
}