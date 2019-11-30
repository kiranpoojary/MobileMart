using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mymobilemart
{
    public partial class adminpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if ((int)Session["adminlog"] == 1)
            {
                addpro.Enabled = true;
                updatepro.Enabled = true;
                removepro.Enabled = true;
                orderpayments.Enabled = true;
                manageuser.Enabled = true;
                manageadmins.Enabled = true;
                site.Enabled = true;
                logout.Enabled = true;

            }
            else
            {
                addpro.Enabled = false;
                updatepro.Enabled = false;
                removepro.Enabled = false;
                orderpayments.Enabled = false;
                manageuser.Enabled = false;
                manageadmins.Enabled = false;
                site.Enabled = false;
                logout.Enabled = false;
           }
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session["log"] = 0;
            Session["adminlog"] = 0;
            Session["userlog"] = 0;
            addpro.Enabled = false;
            updatepro.Enabled = false;
            removepro.Enabled = false;
            orderpayments.Enabled = false;
            manageuser.Enabled = false;
            manageadmins.Enabled = false;
            site.Enabled = false;
            logout.Enabled = false;
            Response.Write("<script>");
            Response.Write("window.open('home.aspx','right')");
            Response.Write("</script>");
          
        }
       
          



    }
   
    }
