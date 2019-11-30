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
    public partial class homedesign : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\KIRAN\\documents\\visual studio 2010\\Projects\\mymobilemart\\mymobilemart\\App_Data\\martdatabase.mdf;Integrated Security=True;User Instance=True");
         
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
            
        protected void Page_Load(object sender, EventArgs e)
        {

 

        }
 
        protected void change_Click(object sender, EventArgs e)
        {
            int sl = 1;
            string model=null;
         if (txtSearch.Text != string.Empty)
            {
              sl=1;
              model = txtSearch.Text;
              changeit(model, sl);
              
            }
         if (model2.Text != string.Empty)
         {
             sl = 2;
             model = model2.Text;
             changeit(model, sl);

         }

         if (model3.Text != string.Empty)
         {
             sl = 3;
             model = model3.Text;
             changeit(model, sl);

         }
         if (model4.Text != string.Empty)
         {
             sl = 4;
             model = model4.Text;
             changeit(model, sl);

         }
         if (model5.Text != string.Empty)
         {
             sl = 5;
             model = model5.Text;
             changeit(model, sl);

         }
         if (model6.Text != string.Empty)
         {
             sl = 6;
             model = model6.Text;
             changeit(model, sl);

         }
         Response.Write("<script LANGUAGE='JavaScript'>alert('Home Page Design Changed')</script>");
         Server.Transfer("home.aspx");
        }

         public void changeit(string m, int sl)
        {
            con.Open();

            SqlCommand design = new SqlCommand("update [homedesign] set model='" + m + "' where sl='" + sl + "'", con);
            design.ExecuteNonQuery();
            con.Close();
        }

       
    }
}