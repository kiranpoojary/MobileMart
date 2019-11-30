using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Services;


namespace mymobilemart
{

    public partial class home2 : System.Web.UI.Page
    {

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
                        menulogout1.Text = "Logout";
                        HyperLink1.NavigateUrl = "~/manageuser.aspx";
                        ImageButton1.Visible = true;
                        usermenu.Visible = true;
                        adminmenu.Visible = false;
                    }
                    else
                    {
                        if ((int)Session["adminlog"] == 1)                          //check loged in as admin                         
                        {
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
                using (SqlCommand cmd = new SqlCommand("select DISTINCT productmodel from supplier where productmodel LIKE '%'+@SearchText+'%'", con))
                {
                    con.Open();
                    cmd.Parameters.AddWithValue("@SearchText", DName);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        result.Add(dr["productmodel"].ToString());
                    }
                    return result;

                }
            }
        }
        protected void SearchButton_Click(object sender, EventArgs e)
        {
            try
            {
                txtSearch.Text = "yeah it is successe";
            }
            catch
            {

            }
        }






        /*


         <!-- <asp:TextBox ID="txtSearch" placeholder="Serch  Your Mobiles Here" runat="server"
                    Width="703px" Height="31px" CssClass="form-control mr-sm-2" class="autosuggest" ></asp:TextBox> -->


        */







        protected void ImageButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("cart.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int st = (int)Session["userlog"];
            if (st != 1)
                Response.Write("<script LANGUAGE='JavaScript'>alert('Login required')</script>");
            else
                Response.Redirect("buypage.aspx");
        }


        protected void view1(object sender, EventArgs e)
        {
            Response.Write("<script LANGUAGE='JavaScript'>alert('Comming Soon')</script>");
        }
        protected void view2(object sender, EventArgs e)
        {
            Response.Write("<script LANGUAGE='JavaScript'>alert('Comming Soon')</script>");
        }
        protected void view3(object sender, EventArgs e)
        {
            Response.Write("<script LANGUAGE='JavaScript'>alert('Comming Soon')</script>");
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

            }
            finally
            {


            }
        }

        protected void WishList_Click(object sender, EventArgs e)
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

        protected void Button7_Click(object sender, EventArgs e)
        {
            Session["model"] = Label1.Text;
            Response.Redirect("product.aspx");
        }

    }

}
