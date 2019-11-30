using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services;
namespace simple
{
    public partial class Webservice : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static List<string> GetAutoCompleteData(string DName)
        {
            List<string> result=new List<string>();
            using (SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\KIRAN\\documents\\visual studio 2010\\Projects\\mymobilemart\\mymobilemart\\App_Data\\martdatabase.mdf;Integrated Security=True;User Instance=True"))
            {
                using (SqlCommand cmd = new SqlCommand("select DISTINCT productmodel from supplier where productmodel LIKE '%'+@SearchText+'%'", con))
                {
                    con.Open();
                    cmd.Parameters.AddWithValue("@SearchText",DName);
                    SqlDataReader dr=cmd.ExecuteReader();
                    while(dr.Read())
                    {
                        result.Add(dr["productmodel"].ToString());
                    }
                    return result;

            }
            }
        }
    }
}