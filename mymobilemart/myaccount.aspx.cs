using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mymobilemart
{
    public partial class myaccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["un"].ToString();
            Label2.Text = Session["emailid"].ToString();
            Image1.ImageUrl = Session["picurl"].ToString();

        }
    }
}