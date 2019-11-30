using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace mymobilemart
{
    public partial class addproduct : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\KIRAN\\documents\\visual studio 2010\\Projects\\mymobilemart\\mymobilemart\\App_Data\\martdatabase.mdf;Integrated Security=True;User Instance=True");
        string brand, model, cat, supid, sts, os, arc, proc, chip, ram, rom, romex, rearc, rearf, frontc, frontf, fprint, fprintpos, sensor, body, hgt, wdt, simslot, simsize, volte, ntw, gps, btry, disp, dispty, reso, wgt, audioj, col1, col2, col3;
        int qty;
        float rating;
        decimal price;


        protected void Page_Load(object sender, EventArgs e)
        {

           
        }

        protected void Button2_Click(object sender, EventArgs e)                                    // Get Stock Details
        {

            if (TextBox1.Text == string.Empty || TextBox2.Text == string.Empty)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "text", "JSconfirm()", true);
            }
            else
            {
                con.Open();
                SqlCommand getstock = new SqlCommand("select qty,price from [supplier] where supplierid='" + TextBox2.Text + "' and productmodel='" + TextBox1.Text + "' ", con);
                SqlDataReader dr = getstock.ExecuteReader();
                if (dr.Read())
                {
                    TextBox5.Text = dr[1].ToString();
                    int qty = (int)dr[0];
                    TextBox3.Text = dr[0].ToString();
                    if (qty == 0)
                        TextBox4.Text = "Out Of Stock";
                    else
                        if (qty > 10)
                            TextBox4.Text = "Available";
                        else
                            TextBox4.Text = "Only " + qty + " Left";



                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string path1 = null, path2 = null, path3 = null, path4 = null;
            int barandindex = DropDownList1.SelectedIndex;
            brand = DropDownList1.SelectedItem.ToString();
            model = TextBox1.Text;
            price = decimal.Parse(TextBox5.Text);
            supid = TextBox2.Text;
            qty = Convert.ToInt32(TextBox3.Text);
            sts = TextBox4.Text;
            os = TextBox6.Text;
            proc = TextBox11.Text;
            chip = TextBox10.Text;
            ram = DropDownList3.SelectedItem.ToString();
            rom = DropDownList4.SelectedItem.ToString();
            arc = DropDownList5.SelectedItem.ToString();
            romex = TextBox27.Text;
            rearc = TextBox7.Text;
            frontc = TextBox8.Text;
            sensor = TextBox9.Text;
            body = TextBox16.Text;
            hgt = TextBox13.Text;
            wdt = TextBox14.Text;
            simslot = TextBox23.Text;
            simsize = TextBox24.Text;
            ntw = TextBox25.Text;
            btry = TextBox12.Text;
            disp = TextBox20.Text;
            dispty = TextBox22.Text;
            reso = TextBox21.Text;
            wgt = TextBox15.Text;
            audioj = DropDownList2.SelectedItem.ToString();
            col1 = TextBox17.Text;
            col2 = TextBox18.Text;
            col3 = TextBox19.Text;

            if (TextBox1.Text == string.Empty || TextBox2.Text == string.Empty || TextBox3.Text == string.Empty || TextBox4.Text == string.Empty || TextBox5.Text == string.Empty || TextBox6.Text == string.Empty || TextBox7.Text == string.Empty || TextBox8.Text == string.Empty || TextBox9.Text == string.Empty || TextBox10.Text == string.Empty || TextBox11.Text == string.Empty || TextBox12.Text == string.Empty || TextBox13.Text == string.Empty || TextBox14.Text == string.Empty || TextBox15.Text == string.Empty || TextBox16.Text == string.Empty || TextBox17.Text == string.Empty || TextBox18.Text == string.Empty || TextBox19.Text == string.Empty || TextBox20.Text == string.Empty || TextBox21.Text == string.Empty || TextBox22.Text == string.Empty || TextBox23.Text == string.Empty || TextBox24.Text == string.Empty || TextBox25.Text == string.Empty || TextBox27.Text == string.Empty)
          
            {
                ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "text", "JSconfirm()", true);

            }
            else
            {
                rating = Convert.ToSingle(TextBox26.Text);
                if (RadioButton1.Checked == true)
                    cat = "Touch";

                else
                    cat = "Keypad";
                if (RadioButton13.Checked == true)
                    rearf = "Yes";
                else
                    rearf = "No";

                if (RadioButton3.Checked == true)
                    frontf = "Yes";
                else
                    frontf = "No";
                if (RadioButton5.Checked == true)
                    fprint = "Yes";
                else
                    fprint = "No";
                if (RadioButton7.Checked == true)
                    fprintpos = "Back";
                else
                    if (RadioButton8.Checked == true)
                        fprintpos = "Front";
                    else
                        fprintpos = "No";
                if (RadioButton9.Checked == true)
                    volte = "Yes";
                else
                    volte = "No";
                if (RadioButton11.Checked == true)
                    gps = "Yes";
                else
                    gps = "No";
                if (RadioButton9.Checked == true)
                    volte = "Yes";
                else
                    volte = "No";
                if (FileUpload1.HasFile)
                {
                    if (FileUpload1.FileName.Contains("jpg") || FileUpload1.FileName.Contains("jpeg"))
                    {
                        path1 = "images\\" + DropDownList1.SelectedItem.ToString() + "\\" + TextBox1.Text + "_Image1.jpg";
                        FileUpload1.PostedFile.SaveAs(Server.MapPath(path1));
                    }
                    else
                        if (FileUpload1.FileName.Contains("png"))
                        {
                            path1 = "images\\" + DropDownList1.SelectedItem.ToString() + "\\" + TextBox1.Text + "_Image1.png";
                            FileUpload1.PostedFile.SaveAs(Server.MapPath(path1));
                        }


                }
                else
                    Response.Write("<script LANGUAGE='JavaScript'>alert('at least one product Image Required')</script>");


                if (FileUpload2.HasFile)
                {
                    if (FileUpload2.FileName.Contains("jpg") || FileUpload2.FileName.Contains("jpeg"))
                    {
                        path2 = "images\\" + DropDownList1.SelectedItem.ToString() + "\\" + TextBox1.Text + "_Image2.jpg";
                        FileUpload2.PostedFile.SaveAs(Server.MapPath(path2));
                    }
                    else
                        if (FileUpload2.FileName.Contains("png"))
                        {
                            path2 = "images\\" + DropDownList1.SelectedItem.ToString() + "\\" + TextBox1.Text + "_Image2.png";
                            FileUpload2.PostedFile.SaveAs(Server.MapPath(path2));
                        }
                }


                if (FileUpload3.HasFile)
                {
                    if (FileUpload3.FileName.Contains("jpg") || FileUpload3.FileName.Contains("jpeg"))
                    {
                        path3 = "images\\" + DropDownList1.SelectedItem.ToString() + "\\" + TextBox1.Text + "_Image3.jpg";
                        FileUpload3.PostedFile.SaveAs(Server.MapPath(path3));
                    }
                    else
                        if (FileUpload3.FileName.Contains("png"))
                        {
                            path3 = "images\\" + DropDownList1.SelectedItem.ToString() + "\\" + TextBox1.Text + "_Image3.png";
                            FileUpload3.PostedFile.SaveAs(Server.MapPath(path3));
                        }
                }

                if (FileUpload4.HasFile)
                {
                    if (FileUpload4.FileName.Contains("jpg") || FileUpload4.FileName.Contains("jpeg"))
                    {
                        path4 = "images\\" + DropDownList1.SelectedItem.ToString() + "\\" + TextBox1.Text + "_Image4.jpg";
                        FileUpload4.PostedFile.SaveAs(Server.MapPath(path4));
                    }
                    else
                        if (FileUpload4.FileName.Contains("png"))
                        {
                            path4 = "images\\" + DropDownList1.SelectedItem.ToString() + "\\" + TextBox1.Text + "_Image4.png";
                            FileUpload4.PostedFile.SaveAs(Server.MapPath(path4));
                        }

                }



                con.Open();
                try     //insert product info to DataBase
                {
                    SqlCommand proinsert = new SqlCommand("insert into [product] values('" + model + "','" + brand + "','" + cat + "','" + supid + "','" + price + "','" + qty + "','" + sts + "')", con);
                    proinsert.ExecuteNonQuery();
                    SqlCommand featureinsert = new SqlCommand("insert into [productfeature] values('" + brand + "','" + model + "','" + os + "','" + ram + "','" + rom + "','" + rearc + "','" + frontc + "','" + sensor + "','" + rearf + "','" + frontf + "','" + chip + "','" + proc + "','" + arc + "','" + btry + "','" + fprint + "','" + fprintpos + "','" + hgt + "','" + wdt + "','" + wgt + "','" + body + "','" + audioj + "','" + col1 + "','" + col2 + "','" + col3 + "','" + path1 + "','" + path2 + "','" + path3 + "','" + path4 + "','" + disp + "','" + reso + "','" + dispty + "','" + cat + "','" + simslot + "','" + simsize + "','" + ntw + "','" + volte + "','" + gps + "','" + Convert.ToSingle(TextBox26.Text) + "')", con);
                    featureinsert.ExecuteNonQuery();
                    Response.Write("<script LANGUAGE='JavaScript'>alert('Product Sent to Database')</script>");

                }
                catch
                {
                    Response.Write("<script LANGUAGE='JavaScript'>alert('Something Went Wrong')</script>");
                }

                finally
                {
                    con.Close();

                }
            }
        }

    }
}