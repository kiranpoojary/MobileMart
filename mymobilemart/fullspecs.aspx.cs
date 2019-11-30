using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mymobilemart
{
    public partial class fullspecs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Image1.ImageUrl = Session["image1"].ToString();
            Label1.Text = Session["model"].ToString();
            Label2.Text = Session["price"].ToString();
            Label57.Text = "hola";
            Label4.Text = Session["brand"].ToString();
            Label6.Text = Session["os"].ToString();
            Label8.Text = Session["processor"].ToString();
            Label10.Text = Session["architecture"].ToString();
            Label12.Text = Session["chipset"].ToString();
            Label14.Text = Session["ram"].ToString();
            Label16.Text = Session["rom"].ToString();
            Label18.Text = Session["camr"].ToString();
            Label20.Text = Session["rflash"].ToString();
            Label22.Text = Session["camf"].ToString();
            Label24.Text = Session["fflash"].ToString();
            Label26.Text = Session["fprint"].ToString();
            Label28.Text = Session["fposition"].ToString();
            Label30.Text = Session["sensor"].ToString();
            Label32.Text = Session["height"].ToString();
            Label34.Text = Session["width"].ToString();
            Label36.Text = Session["weight"].ToString();
            Label38.Text = Session["simslot"].ToString();
            Label40.Text = Session["simsize"].ToString();
            Label42.Text = Session["volte"].ToString();
            Label44.Text = Session["battery"].ToString();
            Label46.Text = Session["network"].ToString();
            Label48.Text = Session["display"].ToString();
            Label50.Text = Session["displaytype"].ToString();
            Label52.Text = Session["density"].ToString(); 
            Label54.Text = Session["bcase"].ToString(); 
            Label56.Text = Session["audiojack"].ToString(); 
            Label57.Text = Session["rating"].ToString();
            Label3.Text = Session["touchscreen"].ToString();
            Label5.Text = Session["gps"].ToString();
           
        }
    }
}