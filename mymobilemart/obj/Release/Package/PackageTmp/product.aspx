<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="mymobilemart.pro" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>product details</title>
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
                        url: "product.aspx/GetAutoCompleteData",
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
        function fullspecs_onclick() {

        }

    </script>



    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css">
 <script type="text/javascript">
     function JSconfirm() {
         swal({
             title: "Login Required",
             text: "Do you want to login",
             type: "warning",
             showCancelButton: true,
             confirmButtonColor: "#DD6B55",
             confirmButtonText: "Yes",
             cancelButtonText: "Later",
             closeOnConfirm: false,
             closeOnCancel: false
         },
    function (isConfirm) {
        if (isConfirm) {
            window.location = "loginpage.aspx";
        }
        else {
            window.location = "product.aspx";
        }
    });
     }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div id="usersidenav" class="sidenav">
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a> <a
                    href="#">Home</a>
                <asp:LinkButton ID="Account" runat="server" OnClick="Account_Click">My Account</asp:LinkButton>
                <asp:LinkButton ID="Cart" runat="server" OnClick="Cart_Click">My Cart</asp:LinkButton>
                <asp:LinkButton ID="Order" runat="server" OnClick="Order_Click">My Orders</asp:LinkButton>
                <a href="aboutandcontactus.aspx">About and Contact</a>
                <asp:LinkButton ID="menulogout1" runat="server" OnClick="menulogout1_Click">Login</asp:LinkButton>
            </div>
            <div runat="server" id="usermenu">
                <span style="font-size: 30px; cursor: pointer" onclick="openNav()">&#9776;</span>
            </div>
            <div id="adminsidenav" class="sidenav">
                <a href="javascript:void(0)" class="closebtn" onclick="closeadminnav()">&times;</a>
                <a href="addproduct.aspx">Add Products</a> <a href="updateproduct.aspx">Update Products</a>
                <a href="removeproduct.aspx">Remove Products</a> <a href="deleteuser.aspx">Remove User</a>
                <a href="manageadmins.aspx">Manage Admins</a> <a href="updateorder.aspx">Orders & Payments</a>
                <a href="home.aspx">View Site</a> <a href="home.aspx">others</a>
                <asp:LinkButton ID="menulogout2" runat="server" OnClick="menulogout1_Click">Login</asp:LinkButton>
            </div>
            <div runat="server" id="adminmenu" visible="false">
                <span style="font-size: 30px; cursor: pointer" onclick="openadminnav()">&#9776;</span>
            </div>
            <a class="navbar-brand" href="home.aspx">Home</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item "><a class="nav-link" id="topt" runat="server" href="aboutandcontactus.aspx">About Us<span
                        class="sr-only">(current)</span></a> </li>
                   
                   
                </ul>
                <asp:TextBox ID="txtSearch" placeholder="Serch  Your Mobiles Here" runat="server"
                    Width="703px" Height="31px" class="autosuggest"></asp:TextBox>
                <input id="searchbutton" runat="server" class="btn btn-outline-success my-2 my-sm-0"
                    onserverclick="SearchButton_Click" type="button" value="Search" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton CssClass="myhover" ID="ImageButton1" runat="server" ImageUrl="~/images/other/shopping-cart.png"
                    Height="50px" Width="50px" Visible="False" OnClick="ImageButton1_Click"></asp:ImageButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div>
                    <table>
                        <tr>
                            <td class="centalign">
                                <asp:ImageButton CssClass="roundprofile" ID="ImageButton2" runat="server" Visible="False"
                                    BorderColor="#EEEEEE" />
                            </td>
                        </tr>
                        <tr>
                            <td class="centalign">
                                <asp:HyperLink ID="HyperLink1" runat="server">Login</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </nav>
        <div class="card">
            <div class="container-fliud">
                <div class="wrapper row">
                    <div class="preview col-md-6">
                        <div class="preview-pic tab-content">
                            <div class="tab-pane active" id="pic-1">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <img id="top1" runat="server" src="http://localhost:63477/images/defaults/samsung-galaxy-j7-prime-1.jpeg"
                                    style="height: 450px; width: 220px" /></div>
                            <div class="tab-pane" id="pic-2">
                                <img id="top2" runat="server" src="http://localhost:63477/images/defaults/samsung-galaxy-j7-prime-2.jpeg"
                                    style="height: 450px; width: 220px" /></div>
                            <div class="tab-pane" id="pic-3">
                                <img id="top3" runat="server" src="http://localhost:63477/images/defaults/samsung-galaxy-j7-prime-4.jpeg"
                                    style="height: 450px; width: 220px" /></div>
                            <div class="tab-pane" id="pic-4">
                                <img id="top4" runat="server" src="http://localhost:63477/images/defaults/samsung-galaxy-j7-prime-3.jpeg"
                                    style="height: 450px; width: 35px" /></div>
                        </div>
                        <ul class="preview-thumbnail nav nav-tabs">
                            <li class="active"><a data-target="#pic-1" data-toggle="tab">
                                <img id="bot1" runat="server" src="http://localhost:63477/images/defaults/samsung-galaxy-j7-prime-1.jpeg"
                                    style="height: 300px; width: 220px" /></a></li>
                            <li><a data-target="#pic-2" data-toggle="tab">
                                <img id="bot2" runat="server" src="http://localhost:63477/images/defaults/samsung-galaxy-j7-prime-2.jpeg"
                                    style="height: 300px; width: 220px" /></a></li>
                            <li><a data-target="#pic-3" data-toggle="tab">
                                <img id="bot3" runat="server" src="http://localhost:63477/images/defaults/samsung-galaxy-j7-prime-4.jpeg"
                                    style="height: 300px; width: 220px" />
                            </a></li>
                            <li><a data-target="#pic-4" data-toggle="tab">
                                <img id="bot4" runat="server" src="http://localhost:63477/images/defaults/samsung-galaxy-j7-prime-3.jpeg"
                                    style="height: 300px; width: 20px" />
                            </a></li>
                        </ul>
                    </div>
                    <div class="details col-md-6">
                        <h3 class="product-title">
                            <asp:Label ID="Label1" runat="server" Text="MObile Model"></asp:Label></h3>
                        <div class="rating">
                            <span class="review-no">User Total Ratings(In 5):&nbsp<asp:Label ID="Label13" runat="server"
                                Text="Label" ForeColor="#0033CC" Style="font-weight: 700"></asp:Label>
                            </span>
                        </div>
                        <h4 class="price">
                            current price: <span>Rs.<asp:Label ID="Label14" runat="server" Text="Label"></asp:Label></span></h4>
                        <div style="border: 1px solid gray">
                            <div style="margin-left: 10px">
                                Description:<br />
                                <hr />
                                RAM:&nbsp<asp:Label ID="Label2" runat="server" Text="Label" ForeColor="Blue" CssClass="ui-priority-primary"></asp:Label>
                                <br />
                                <br />
                                ROM:&nbsp<asp:Label ID="Label3" runat="server" Text="Label" ForeColor="Blue" CssClass="ui-priority-primary"></asp:Label>
                                <br />
                                <br />
                                Display:&nbsp<asp:Label ID="Label4" runat="server" Text="Label" ForeColor="Blue"
                                    CssClass="ui-priority-primary"></asp:Label>
                                <br />
                                <br />
                                <asp:Label ID="Label5" runat="server" Text="Label" ForeColor="Blue" CssClass="ui-priority-primary"></asp:Label>&nbsp;Rear
                                Camera|<asp:Label ID="Label6" runat="server" Text="Label" ForeColor="Blue" CssClass="ui-priority-primary"></asp:Label>&nbsp;Front
                                Camera
                                <br />
                                <br />
                                Battery:&nbsp<asp:Label ID="Label7" runat="server" Text="Label" ForeColor="Blue"
                                    CssClass="ui-priority-primary"></asp:Label>
                                <br />
                                <br />
                                Processor:&nbsp<asp:Label ID="Label8" runat="server" Text="Label" ForeColor="Blue"
                                    CssClass="ui-priority-primary"></asp:Label>
                                <br />
                                <br />
                                OS:&nbsp<asp:Label ID="Label15" runat="server" Text="Label" ForeColor="Blue" CssClass="ui-priority-primary"></asp:Label>
                            </div>
                            <br />
                        </div>
                        <br />
                        <h5 class="colors">
                            <div style="color: Orange">
                                colors:</div>
                            <div class="row">
                                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Text="Label" ForeColor="Blue"></asp:Label><asp:RadioButton
                                    ID="RadioButton1" runat="server" GroupName="color" Checked="true"></asp:RadioButton></div>
                      
                            <div class="row">
                                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label10" runat="server" Text="Label" ForeColor="Blue"></asp:Label><asp:RadioButton
                                    ID="RadioButton2" runat="server" GroupName="color"></asp:RadioButton></div>
                          
                            <div class="row">
                                &nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label11" runat="server" Text="Label" ForeColor="Blue"></asp:Label><asp:RadioButton
                                    ID="RadioButton3" runat="server" GroupName="color"></asp:RadioButton></div>
                                    <div><br />
                            Stock&nbsp;: &nbsp;&nbsp;&nbsp;<asp:Label ID="Label16" runat="server" Text="Label" ForeColor="Blue"></asp:Label></div>
                            <button id="buynow" class="add-to-cart btn btn-default" runat="server" type="button"
                                onserverclick="buynow_click">
                                Buy Now</button>
                            <button id="addcart" class="add-to-cart btn btn-default" runat="server" type="button"
                                onserverclick="addcart_click">
                                Add To Cart</button>
                            <button id="fullspecs" runat="server" class="add-to-cart btn btn-default" type="button"
                                onserverclick="fullspecs_click">
                                View Full Specs</button>
                            <button id="ratings" runat="server" class="add-to-cart btn btn-default" type="button"
                                onserverclick="ratings_click">
                                View Review And Ratings</button>
                            <button id="compare" runat="server" class="add-to-cart btn btn-default" type="button"
                                onserverclick="compare_click">
                                Add To Compare</button><br />
                            Sold By:&nbsp<asp:Label ID="Label12" runat="server" Text="Label" ForeColor="Blue"></asp:Label>
                        </h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
    <div id="addrev" runat="server" visible="false">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Submit your review&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Width="515px" Height="58px"></asp:TextBox>
        <br />
        <br />
        Rate This Product
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" Height="56px" Width="145px"
            OnClick="Button1_Click1" /></div>
    <br />
    <br />
    <br />
    <div id="rev" runat="server" visible="false">
        <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered table-hover"
            runat="server" AutoGenerateColumns="False" DataKeyNames="username" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
                <asp:ImageField DataImageUrlField="profilepic" HeaderText="Profile" ItemStyle-Height="100px"
                    ItemStyle-Width="70px">
                </asp:ImageField>
                <asp:BoundField DataField="model" HeaderText="model" SortExpression="model" />
                <asp:BoundField DataField="rating" HeaderText="Rating" SortExpression="rating" />
                <asp:BoundField DataField="review" HeaderText="Review" SortExpression="review" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT * FROM [userreview] WHERE ([model] = @model)">
            <SelectParameters>
                <asp:SessionParameter Name="model" SessionField="model" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
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
