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
    public partial class pro : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\KIRAN\\documents\\visual studio 2010\\Projects\\mymobilemart\\mymobilemart\\App_Data\\martdatabase.mdf;Integrated Security=True;User Instance=True");

        protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Text = Session["model"].ToString();
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

                        HyperLink1.NavigateUrl = "~/myaccount.aspx";
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


            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\KIRAN\\documents\\visual studio 2010\\Projects\\mymobilemart\\mymobilemart\\App_Data\\martdatabase.mdf;Integrated Security=True;User Instance=True");
            con.Open();
            SqlCommand cmd3 = new SqlCommand("select * from [productfeature] where model='" + Session["model"] + "'", con);
            SqlDataReader dr = cmd3.ExecuteReader();
            if (dr.Read())
            {
                Session["brand"] = dr[0].ToString();
                Session["model"] = dr[1].ToString();
                Session["os"] = dr[2].ToString();
                Session["ram"] = dr[3].ToString();
                Session["rom"] = dr[4].ToString();
                Session["camr"] = dr[5].ToString();
                Session["camf"] = dr[6].ToString();
                Session["sensor"] = dr[7].ToString();
                Session["rflash"] = dr[8].ToString();
                Session["fflash"] = dr[9].ToString();
                Session["chipset"] = dr[10].ToString();
                Session["processor"] = dr[11].ToString();
                Session["architecture"] = dr[12].ToString();
                Session["battery"] = dr[13].ToString();
                Session["fprint"] = dr[14].ToString();
                Session["fposition"] = dr[15].ToString();
                Session["height"] = dr[16].ToString();
                Session["width"] = dr[17].ToString();
                Session["weight"] = dr[18].ToString();
                Session["bcase"] = dr[19].ToString();
                Session["audiojack"] = dr[20].ToString();
                Session["color1"] = dr[21].ToString();
                Session["color2"] = dr[22].ToString();
                Session["color3"] = dr[23].ToString();
                Session["image1"] = dr[24].ToString();
                Session["image2"] = dr[25].ToString();
                Session["image3"] = dr[26].ToString();
                Session["image4"] = dr[27].ToString();
                Session["display"] = dr[28].ToString();
                Session["density"] = dr[29].ToString();
                Session["displaytype"] = dr[30].ToString();
                Session["touchscreen"] = dr[31].ToString();
                Session["simslot"] = dr[32].ToString();
                Session["simsize"] = dr[33].ToString();
                Session["network"] = dr[34].ToString();
                Session["volte"] = dr[35].ToString();
                Session["gps"] = dr[36].ToString();
                Session["rating"] = dr[37].ToString();

                dr.Close();

            }
            con.Close();
            con.Open();
            SqlCommand cmd4 = new SqlCommand("select * from [product] where model='" + Session["model"] + "'", con);
            SqlDataReader dr2 = cmd4.ExecuteReader();
            if (dr2.Read())
            {
                Session["model"] = dr2[0].ToString();
                Session["brand"] = dr2[1].ToString();
                Session["category"] = dr2[2].ToString();
                Session["supplierid"] = dr2[3].ToString();
                Session["price"] = dr2[4];
                Session["qty"] = dr2[5];
                Session["status"] = dr2[6].ToString();

                dr2.Close();
            }

            Label2.Text = Session["ram"].ToString();
            Label3.Text = Session["rom"].ToString();
            Label4.Text = Session["display"].ToString();
            Label5.Text = Session["camr"].ToString();
            Label6.Text = Session["camf"].ToString();
            Label7.Text = Session["battery"].ToString();
            Label8.Text = Session["processor"].ToString();
            Label15.Text = Session["os"].ToString();
            Label9.Text = Session["color1"].ToString();
            Label10.Text = Session["color2"].ToString();
            Label11.Text = Session["color3"].ToString();
            Label12.Text = Session["supplierid"].ToString();
            Label13.Text = Session["rating"].ToString();
            Label14.Text = Session["price"].ToString(); 
            Label16.Text = Session["status"].ToString();
            top1.Src = Session["image1"].ToString();
            bot1.Src = Session["image1"].ToString();
            top2.Src = Session["image2"].ToString();
            bot2.Src = Session["image2"].ToString();
            top3.Src = Session["image3"].ToString();
            bot3.Src = Session["image3"].ToString();
            top4.Src = Session["image4"].ToString();
            bot4.Src = Session["image4"].ToString();





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
            con.Open();

            try
            {
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

            catch
            {
                Response.Write("<script LANGUAGE='JavaScript'>alert('Something Went Wrong')</script>");
            }
            finally
            {


            }
        }

        protected void ImageButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("cart.aspx");
        }


        protected void buynow_click(object sender, EventArgs e)
        {

            if ((Convert.ToInt16(Session["qty"]))==0)
            {
                Response.Write("<script LANGUAGE='JavaScript'>alert('Sorry:Product Currently Out Of Stock')</script>");
            }
            else
            {
                try
                {
                    int st = (int)Session["userlog"];
                    if (st == 1)
                    {
                        Session["model"] = Label1.Text;
                        if (RadioButton1.Checked == true)
                        {
                            Session["clr"] = Label9.Text;
                        }
                        else
                            if (RadioButton2.Checked == true)
                            {
                                Session["clr"] = Label10.Text;
                            }
                            else
                                if (RadioButton3.Checked == true)
                                {
                                    Session["clr"] = Label11.Text;
                                }

                        Response.Redirect("payment.aspx");
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "text", "JSconfirm()", true);
                    }
                }
                catch
                {
                    Response.Write("<script LANGUAGE='JavaScript'>alert('Something Went Wrong')</script>");
                }
                finally
                {


                }
            }
        }

        protected void addcart_click(object sender, EventArgs e)
        {
            try
            {
                int st = (int)Session["userlog"];
                if (st == 1)
                {
                    int count = 0;
                    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\KIRAN\\documents\\visual studio 2010\\Projects\\mymobilemart\\mymobilemart\\App_Data\\martdatabase.mdf;Integrated Security=True;User Instance=True");
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select count(*) from [cart] where username='" + Session["un"] + "' AND model='" + Session["model"] + "'", con);
                    count = (int)cmd.ExecuteScalar();
                    if (count == 1)
                    {
                        Response.Write("<script LANGUAGE='JavaScript'>alert('already in cart')</script>");
                    }
                    else
                    {
                        SqlCommand cmd2 = new SqlCommand("insert into [cart] values('" + Session["un"] + "','" + Session["model"] + "','" + Session["image1"] + "','" + Session["price"] + "','" + Session["status"] + "')", con);
                        cmd2.ExecuteNonQuery();
                        Response.Write("<script LANGUAGE='JavaScript'>alert('Product successfuly added to cart')</script>");
                    }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "text", "JSconfirm()", true);
                }
            }

            catch
            {
                Response.Write("<script LANGUAGE='JavaScript'>alert('Something went wrong,try again later')</script>");
            }
            finally
            {


            }
        }

        protected void fullspecs_click(object sender, EventArgs e)
        {
            Response.Redirect("fullspecs.aspx");
        }

        protected void ratings_click(object sender, EventArgs e)
        {


            int st = (int)Session["userlog"];                                       //get login status to st;
            if (st == 1)
            {
                addrev.Visible = true;
            }

            rev.Visible = true;



        }




        protected void Button1_Click(object sender, EventArgs e)
        {
            int st = (int)Session["userlog"];
            if (st != 1)
                ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "text", "JSconfirm()", true);
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


        protected void Button1_Click1(object sender, EventArgs e)   //reviwes and ratings
        {
            string rv=null;
            if (TextBox2.Text == string.Empty)
                rv = "No Reviews";
            else
                rv = TextBox2.Text;
            

            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from [userreview] where username='" + Session["un"] + "' and model='" + Session["model"] + "'", con);
            int count = (int)cmd.ExecuteScalar();
            if (count == 1)
            {
                SqlCommand cmd2 = new SqlCommand("update [userreview] set review='" + rv + "',rating='" + DropDownList2.SelectedItem + "' where username='" + Session["un"] + "'", con);
                cmd2.ExecuteNonQuery();
            }
            else
            {
                SqlCommand cmd3 = new SqlCommand("insert into [userreview] values('" + Session["un"] + "','" + Session["picurl"] + "','" + Session["model"] + "','" + DropDownList2.SelectedItem + "','" + rv + "')", con);
                cmd3.ExecuteNonQuery();
            }

           
            //****updating of new ratings

            SqlCommand getrate = new SqlCommand("select ROUND(AVG(CAST(rating AS FLOAT)),1) from [userreview] where  model='" + Session["model"] + "'", con);
            float rate = Convert.ToSingle(getrate.ExecuteScalar());
            SqlCommand updaterating = new SqlCommand("update [productfeature] set rating='" + rate + "' where model='" + Session["model"] + "'", con);
            updaterating.ExecuteNonQuery();
            con.Close();
            Response.Write("<script LANGUAGE='JavaScript'>alert('Reviews And Ratings Submitted')</script>");
            Server.Transfer("product.aspx");
        }


        protected void compare_click(object sender, EventArgs e)
        {
            Response.Redirect("compare.aspx");

        }
    }
}