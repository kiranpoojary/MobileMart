using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mymobilemart
{
    public partial class cart : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
      {
          if (e.CommandName == "view")
          {
              int crow;
              crow = Convert.ToInt32(e.CommandArgument.ToString());   //determine selected row
              string v = GridView1.Rows[crow].Cells[0].Text;          //featc value of row*col
              Session["model"] = v;
              Response.Redirect("product.aspx");
          }
      }

     
    }
}