<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="compare.aspx.cs" Inherits="mymobilemart.com" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Compare Features</title>
    <link href="css/mycss.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap-reboot.min.css" rel="stylesheet" />
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.js" type="text/javascript"></script>
    <script src="js/myjs.js" type="text/javascript"></script>
    <script src="scripts/jquery.min.js" type="text/javascript"></script>
    <link href="scripts/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="scripts/jquery-ui.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            SearchText();
        });
        function SearchText() {
            $(".autosuggest").autocomplete({
                source: function (request, response) {
                    $.ajax({
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        url: "home.aspx/GetAutoCompleteData",
                        data: "{'DName':'" + document.getElementById('txtSearch').value + "'}",
                        dataType: "json",
                        success: function (data) {
                            response(data.d);
                        },
                        error: function (result) {
                            alert("error");
                        }
                    });
                }
            });
        }
    </script>
    <style>
        table
        {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            border: 2px solid gray;
            width: 90%;
        }
        
        td, th
        {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        
        tr:nth-child(even)
        {
            background-color: #dddddd;
        }
        tr:nth-child(even):hover
        {
            background-color: rgba(0,0,0,0.5);
        }
        .style1
        {
            width: 223px;
        }
        .style2
        {
            width: 571px;
        }
    </style>
</head>
<body><br /><br />
    <form id="form1" runat="server">
    <div>
        <div class="row">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
            <asp:Image ID="Image1" runat="server" Style="height: 300px; width: 200px" ImageUrl="images/defaults/lenovo-k6-power-1.jpeg">
            </asp:Image><br />
            <div>
                <br />
                <br />
                <br />
                <h5>
                    <asp:Label ID="Label1" runat="server" Text="Product Model Here"></asp:Label></h5>
                <br />
                <h5>
                    <asp:Label ID="Label2" runat="server" Text="Price" ForeColor="#00CCFF"></asp:Label></h5>
            </div>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<asp:Image
                ID="Image2" Style="height: 300px; width: 200px" runat="server" ImageUrl="images/defaults/lenovo-k6-power-1.jpeg">
            </asp:Image><br />
            <div>
                <br />
                <br />
                <input type="text" id="txtSearch" runat="server" placeholder="type brand or model name"
                    class="autosuggest" />
                <br />
                <h5>
                    <asp:Label ID="Label3" runat="server" Text="Product Model Here"></asp:Label></h5>
                <br />
                <h5>
                    <asp:Label ID="Label4" runat="server" Text="Price" ForeColor="#00CCFF"></asp:Label></h5>
                <asp:Button ID="Button1" Style="background-color: Orange" runat="server" Text="Comapre Now"
                    OnClick="Button1_Click" />
            </div>
        </div>
        <hr />
        <h4>
            <table style="margin-left: 50px; margin-right: 50px">
                <tr>
                    <th class="style1">
                        Feature
                    </th>
                    <th class="style2">
                        Description
                    </th>
                    <th>
                        Description
                    </th>
                    <tr>
                        <td class="style1">
                            Brand
                        </td>
                        <td class="style2">
                            <asp:Label ID="Label6" runat="server" Text="description"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                <tr>
                    <td class="style1">
                        Touch Screen
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label9" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Operating System
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label12" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label13" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        RAM
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label15" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label16" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        ROM
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label18" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label19" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Processor
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label21" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label22" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Architecture
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label24" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label25" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Chipset
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label27" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label28" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Rear Camera
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label30" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label31" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Rear Flash
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label33" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label34" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Front Camera
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label36" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label37" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Front Flash
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label39" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label40" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Finger Print
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label42" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label43" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Finger Print Position
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label45" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label46" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Sensor
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label48" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label49" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Height
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label51" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label52" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Width
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label54" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label55" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Weight
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label57" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label58" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Sim Slots
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label60" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label61" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Sim Size
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label63" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label64" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Volte
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label66" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label67" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Battery
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label69" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label70" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Network
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label72" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label73" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Display
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label75" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label76" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Display Type
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label78" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label79" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Display Density
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label81" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label82" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Case
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label84" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label85" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Audio Jack
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label87" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label88" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        GPS
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label90" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label91" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </h4>
    </div>
        <div>
        <!-- Footer -->
        <footer class="footer bg-dark text-white">
            <!-- Social Icons -->
            <div class="bg-primary">
                <div class="container">
                    <div class="row py-4">
                        <div class="col-md-6 col-lg-7">
                            <h4 class="mb-0 white-text">
                                Get connected with us on social networks!</h4>
                        </div>
                        <div class="row py-4">
                            <asp:ImageButton ID="ImageButton3" runat="server" Height="60px" Width="80px" ImageUrl="~/images/other/fb.jpg">
                            </asp:ImageButton>
                            <asp:ImageButton ID="ImageButton4" runat="server" Height="60px" Width="80px" ImageUrl="~/images/other/twitter.jpg">
                            </asp:ImageButton>
                            <asp:ImageButton ID="ImageButton5" runat="server" Height="60px" Width="80px" ImageUrl="~/images/other/gmail.jpg">
                            </asp:ImageButton>
                            <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
                            <!-- <a><i class="fa fa-facebook white-text mr-lg-4 fa-2x"></i></a><a><i class="fa fa-twitter white-text mr-lg-4 fa-2x">
                            </i></a><a><i class="fa fa-google-plus white-text mr-lg-4 fa-2x"></i></a><a><i class="fa fa-linkedin white-text mr-lg-4 fa-2x">
                            </i></a><a><i class="fa fa-instagram white-text mr-lg-4 fa-2x"></i></a>-->
                        </div>
                    </div>
                </div>
            </div>
            <!-- Social Icons -->
            <!-- Footer Links -->
            <div class="container pt-5 pb-2">
                <div class="row">
                    <div class="col-md-3 col-lg-4 col-xl-3">
                        <h4>
                            SmartMobileMart</h4>
                        <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25" />
                        <p>
                            Buy Smart Phones,Compare features,Check full features of two Smart Phones at a 
                            time.Enjoy the world class services.</p>
                    </div>
                   
                    <div class="col-md-3 col-lg-2 col-xl-2 mx-auto">
                        <h4>
                            Useful links</h4>
                        <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                        <p>
                            <a href="home.aspx" class="text-white">Home</a></p>
                        <p>
                            <a href="aboutandcontactus.aspx" class="text-white">About Us</a></p>
                        <p>
                            <a href="#" class="text-white">Services</a></p>
                        <p>
                            <a href="#" class="text-white">Contact</a></p>
                    </div>
                    <div class="col-md-4 col-lg-3 col-xl-3">
                        <h4>
                        Contact</h4>
                        <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25" />
                        <p>
                            <i class="fa fa-home mr-3"></i>Brahmavara,India</p>
                        <p>
                            <i class="fa fa-envelope mr-3"></i>smartmobilemart@yahoo.com</p>
                        <p>
                            <i class="fa fa-phone mr-3"></i>+ 98 765 432 11</p>
                        <p>
                            <i class="fa fa-print mr-3"></i>+ 98 765 432 10</p>
                    </div>
                </div>
            </div>
            <!-- Footer Links-->
            <hr class="bg-white mx-4 mt-2 mb-1" />
            <!-- Copyright-->
            <div class="container-fluid">
                <p class="text-center m-0 py-1">
                    © 2018 Copyright <a href="https://getbootstrap.com/" class="text-white">SmartMobileMart</a>
                </p>
            </div>
            <!-- Copyright -->
        </footer>
    </div>
    </form>
  
</body>
</html>
