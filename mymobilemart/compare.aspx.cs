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
    public partial class com : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\KIRAN\\documents\\visual studio 2010\\Projects\\mymobilemart\\mymobilemart\\App_Data\\martdatabase.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Image2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;

            Label1.Text = Session["model"].ToString();
            Label2.Text = Session["price"].ToString();
            Label6.Text = Session["brand"].ToString();
            Label12.Text = Session["os"].ToString();
            Label21.Text = Session["processor"].ToString();
            Label24.Text = Session["architecture"].ToString();
            Label27.Text = Session["chipset"].ToString();
            Label15.Text = Session["ram"].ToString();
            Label18.Text = Session["rom"].ToString();
            Label30.Text = Session["camr"].ToString();
            Label33.Text = Session["rflash"].ToString();
            Label36.Text = Session["camf"].ToString();
            Label39.Text = Session["fflash"].ToString();
            Label42.Text = Session["fprint"].ToString();
            Label45.Text = Session["fposition"].ToString();
            Label48.Text = Session["sensor"].ToString();
            Label51.Text = Session["height"].ToString();
            Label54.Text = Session["width"].ToString();
            Label57.Text = Session["weight"].ToString();
            Label60.Text = Session["simslot"].ToString();
            Label63.Text = Session["simsize"].ToString();
            Label66.Text = Session["volte"].ToString();
            Label69.Text = Session["battery"].ToString();
            Label72.Text = Session["network"].ToString();
            Label75.Text = Session["display"].ToString();
            Label78.Text = Session["displaytype"].ToString();
            Label81.Text = Session["density"].ToString();
            Label84.Text = Session["bcase"].ToString();
            Label87.Text = Session["audiojack"].ToString();
            Label57.Text = Session["rating"].ToString();
            Label9.Text = Session["touchscreen"].ToString();
            Label90.Text = Session["gps"].ToString();
            Image1.ImageUrl = Session["image1"].ToString();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();


            try
            {
                if (txtSearch.Value != string.Empty)   //check for model in search box
                {
                    SqlCommand chk = new SqlCommand("select count(*) from [productfeature] where model='" + txtSearch.Value + "'", con);
                    int c = (int)chk.ExecuteScalar();
                    if (c == 0)
                    {

                        Response.Write("<script LANGUAGE='JavaScript'>alert('Product Model Not Found')</script>");
                    }
                    else
                    {

                        Session["model"] = txtSearch.Value;
                       
                    }
                }
                else
                    Response.Write("<script LANGUAGE='JavaScript'>alert('Please specify Model')</script>");
            }
            catch
            {

            }

            finally
            {
                con.Close();
            }


             con.Open();

            string model2 = txtSearch.Value.ToString();

            SqlCommand cmd4 = new SqlCommand("select * from [product] where model='" + txtSearch.Value.ToString() + "'", con);
            SqlDataReader dr2 = cmd4.ExecuteReader();
            if (dr2.Read())
            {
                Session["model2"] = dr2[0].ToString();
                Session["brand2"] = dr2[1].ToString();
                Session["category2"] = dr2[2].ToString();
                Session["supplierid2"] = dr2[3].ToString();
                Session["price2"] = dr2[4];
                Session["qty2"] = dr2[5];
                Session["status2"] = dr2[6].ToString();


            }
            dr2.Close();
           
            SqlCommand cmd3 = new SqlCommand("select * from [productfeature] where model='" + model2 + "'", con);  //fetch data from database
            SqlDataReader dr = cmd3.ExecuteReader();
            if (dr.Read())
            {
                Session["brand2"] = dr[0].ToString();
                Session["model2"] = dr[1].ToString();
                Session["os2"] = dr[2].ToString();
                Session["ram2"] = dr[3].ToString();
                Session["rom2"] = dr[4].ToString();
                Session["camr2"] = dr[5].ToString();
                Session["camf2"] = dr[6].ToString();
                Session["sensor2"] = dr[7].ToString();
                Session["rflash2"] = dr[8].ToString();
                Session["fflash2"] = dr[9].ToString();
                Session["chipset2"] = dr[10].ToString();
                Session["processor2"] = dr[11].ToString();
                Session["architecture2"] = dr[12].ToString();
                Session["battery2"] = dr[13].ToString();
                Session["fprint2"] = dr[14].ToString();
                Session["fposition2"] = dr[15].ToString();
                Session["height2"] = dr[16].ToString();
                Session["width2"] = dr[17].ToString();
                Session["weight2"] = dr[18].ToString();
                Session["bcase2"] = dr[19].ToString();
                Session["audiojack2"] = dr[20].ToString();
                Session["color12"] = dr[21].ToString();
                Session["color22"] = dr[22].ToString();
                Session["color32"] = dr[23].ToString();
                Session["image12"] = dr[24].ToString();
                Session["image22"] = dr[25].ToString();
                Session["image32"] = dr[26].ToString();
                Session["image42"] = dr[27].ToString();
                Session["display2"] = dr[28].ToString();
                Session["density2"] = dr[29].ToString();
                Session["displaytype2"] = dr[30].ToString();
                Session["touchscreen2"] = dr[31].ToString();
                Session["simslot2"] = dr[32].ToString();
                Session["simsize2"] = dr[33].ToString();
                Session["network2"] = dr[34].ToString();
                Session["volte2"] = dr[35].ToString();
                Session["gps2"] = dr[36].ToString();
                Session["rating2"] = dr[37].ToString();

                Image2.ImageUrl = Session["image12"].ToString(); ;
                Image2.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;
              

                Label3.Text = Session["model2"].ToString();
               
                Label4.Text = Session["price2"].ToString();
                Label7.Text = Session["brand2"].ToString();
                Label13.Text = Session["os2"].ToString();
                Label22.Text = Session["processor2"].ToString();
                Label25.Text = Session["architecture2"].ToString();
                Label28.Text = Session["chipset2"].ToString();
                Label16.Text = Session["ram2"].ToString();
                Label19.Text = Session["rom2"].ToString();
                Label31.Text = Session["camr2"].ToString();
                Label34.Text = Session["rflash2"].ToString();
                Label37.Text = Session["camf2"].ToString();
                Label40.Text = Session["fflash2"].ToString();
                Label43.Text = Session["fprint2"].ToString();
                Label46.Text = Session["fposition2"].ToString();
                Label49.Text = Session["sensor2"].ToString();
                Label52.Text = Session["height2"].ToString();
                Label55.Text = Session["width2"].ToString();
                Label58.Text = Session["weight2"].ToString();
                Label61.Text = Session["simslot2"].ToString();
                Label64.Text = Session["simsize2"].ToString();
                Label67.Text = Session["volte2"].ToString();
                Label70.Text = Session["battery2"].ToString();
                Label73.Text = Session["network2"].ToString();
                Label76.Text = Session["display2"].ToString();
                Label79.Text = Session["displaytype2"].ToString();
                Label82.Text = Session["density2"].ToString();
                Label85.Text = Session["bcase2"].ToString();
                Label88.Text = Session["audiojack2"].ToString();               
                Label10.Text = Session["touchscreen2"].ToString();
                Label91.Text = Session["gps2"].ToString();
               
            }
        }
    }
}