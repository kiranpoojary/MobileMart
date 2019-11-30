<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="mymobilemart.auto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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


<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css">
 <script type="text/javascript">
     function JSconfirm(yo) {
         swal({
             title: "Login Required",
             text: yo,
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
            window.location = "home.aspx";
        }
    });
     }
</script>




    <style type="text/css">
        .style1
        {
            color: #33CC33;
        }
    </style>
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
                <asp:LinkButton ID="aboutus" runat="server" OnClick="aboutus_Click">About us</asp:LinkButton>
                <a href="#">Terms and Condition</a>
                <asp:LinkButton ID="menulogout1" runat="server" OnClick="menulogout1_Click">Login</asp:LinkButton>
            </div>
            <div runat="server" id="usermenu">
                <span style="font-size: 30px; cursor: pointer" onclick="openNav()">&#9776;</span>
            </div>
            <div id="adminsidenav" class="sidenav">
                <a href="javascript:void(0)" class="closebtn" onclick="closeadminnav()">&times;</a>
                <a href="addproduct.aspx">Add Products</a> <a href="deleteuser.aspx">Remove User</a>
                <a href="statusupdate.aspx">Orders & Payments</a> <a href="home.aspx">View Site</a>
                <a href="aboutandcontactus.aspx">About and Contact</a>
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
                    <li class="nav-item "><a class="nav-link" id="topt" runat="server" href="myorders.aspx">
                        My Orders<span class="sr-only">(current)</span></a> </li>
                    <li class="nav-item "><a class="nav-link" id="toptt" runat="server" href="aboutandcontactus.aspx">
                        About Us<span class="sr-only">(current)</span></a> </li>
                    <li class="nav-item ">
                </ul>
                <asp:TextBox ID="txtSearch" placeholder="Serch  Your Mobiles Here" runat="server"
                    Width="703px" Height="31px" class="autosuggest form-control"></asp:TextBox>
                <asp:Button ID="searchbutton" runat="server" class="btn btn-outline-success my-2 my-sm-0"
                    type="button" ValidationGroup="srch" Text="Search" OnClick="SearchButton_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
        <!-- Carousel Slider -->
        <div id="carouselLogo2" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselLogo" data-slide-to="0" class="active"></li>
                <li data-target="#carouselLogo" data-slide-to="1"></li>
                <li data-target="#carouselLogo" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="carousel-item active">
                    <img class="d-block img-fluid" src="images/other/img0.jpg" style="height: 400px;
                        width: 1617px" alt="First slide" />
                </div>
                <div class="carousel-item">
                    <img class="d-block img-fluid" src="images/other/img1.jpg" style="height: 400px;
                        width: 1500px" alt="First slide" />
                </div>
                <div class="carousel-item">
                    <img class="d-block img-fluid" src="images/other/img2.png" style="height: 400px;
                        width: 1500px" alt="First slide" />
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselLogo" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span><span class="sr-only">
                    Previous</span> </a><a class="carousel-control-next" href="#carouselLogo" role="button"
                        data-slide="next"><span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span> </a>
        </div>
        <!-- Carousel Sliders -->
        <!-- Card -->
        <div class="container container mt-4 mb-5">
            <h3 class="display-4 text-center">
                Popular Mobiles
            </h3>
            <hr class="bg-dark mb-4 w-25" />
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="images/Apple/Apple Iphone X_Image1.jpg" style="height: 350px;
                            width: 183px" alt="Card image cap" />
                        <div class="card-block p-3">
                            <h4 class="card-title">
                                <asp:Label ID="Label1" runat="server" Text="Apple Iphone X" Style="color: #0066FF;
                                    font-weight: 700;"></asp:Label></h4>
                            <p class="card-text" style="color: #FF00FF">
                                <strong><span class="style1">RAM:4Gb;ROM:32GB<br />
                                    12MP/12Mp dual & 7MP</span> </strong>
                            </p>
                            <asp:Button CssClass="btn bluebtn boldtxt" ID="Button7" runat="server" Text="View Specs"
                                OnClick="Button7_Click" Height="53px" Width="232px" />
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="images\Apple\Apple Iphone 6_Image1.jpg" style="height: 350px;
                            width: 210px" alt="Card image cap" />
                        <div class="card-block p-3">
                            <h4 class="card-title">
                                &nbsp;
                                <asp:Label ID="Label2" runat="server" Text="Apple Iphone 6" Style="color: #0066FF;
                                    font-weight: 700;"></asp:Label></h4>
                            <p class="card-text">
                                <strong><span class="style1">RAM:2Gb;ROM:32GB<br />
                                    12MP Main & 7MP Front</span> </strong>
                                <asp:Button CssClass="btn bluebtn boldtxt" ID="Button1" runat="server" Text="View Specs"
                                    OnClick="Button1_Click" Height="53px" Width="232px" />
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="images\Motorola\Moto C Plus_Image1.jpg" style="height: 350px;
                            width: 210px" alt="Card image cap" />
                        <div class="card-block p-3">
                            <h4 class="card-title">
                                <asp:Label ID="Label3" runat="server" Text="Moto C Plus" Style="color: #0066FF; font-weight: 700;"></asp:Label><br />
                            </h4>
                            <p class="card-text">
                                <strong><span class="style1">RAM:2Gb;ROM:16GB<br />
                                    8MP Main & 2MP Front</span> </strong>
                                <asp:Button CssClass="btn bluebtn boldtxt" ID="Button2" runat="server" Text="View Specs"
                                    OnClick="Button2_Click" Height="53px" Width="232px" />
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="images\Lenovo\Lenovo K8 Plus_Image1.jpg" style="height: 350px;
                            width: 210px" alt="Card image cap" />
                        <div class="card-block p-3">
                            <h4 class="card-title">
                                <asp:Label ID="Label4" runat="server" Text="Lenovo K8 Plus" Style="color: #0066FF;
                                    font-weight: 700;"></asp:Label><br />
                            </h4>
                            <p class="card-text">
                                <strong><span class="style1">RAM:3Gb;ROM:32GB<br />
                                    Android v7.1(Nougat)</span> </strong>
                                <asp:Button CssClass="btn bluebtn boldtxt" ID="Button3" runat="server" Text="View Specs"
                                    OnClick="Button3_Click" Height="53px" Width="232px" />
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="images\Oppo\Oppo F5_Image1.jpg" style="height: 350px;
                            width: 210px" alt="Card image cap" />
                        <div class="card-block p-3">
                            <h4 class="card-title">
                                <asp:Label ID="Label5" runat="server" Text="Oppo F5" Style="color: #0066FF; font-weight: 700;"></asp:Label><br />
                            </h4>
                            <p class="card-text">
                                <strong><span class="style1">RAM:4Gb;ROM:32GB<br />
                                    20MP selfie Camera</span> </strong>
                                <asp:Button CssClass="btn bluebtn boldtxt" ID="Button4" runat="server" Text="View Specs"
                                    OnClick="Button4_Click" Height="53px" Width="232px" />
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="images\Coolpad\Coolpad Note 5 Lite C_Image1.jpg" style="height: 350px;
                            width: 210px" alt="Card image cap" />
                        <div class="card-block p-3">
                            <h4 class="card-title">
                                <asp:Label ID="Label6" runat="server" Text="Coolpad Note 5 Lite C" Style="color: #0066FF;
                                    font-weight: 700;"></asp:Label><br />
                            </h4>
                            <p class="card-text">
                                <strong><span class="style1">RAM:3Gb;ROM:16GB<br />
                                    Android v7.0(Nougat)</span> </strong>
                                <asp:Button CssClass="btn bluebtn boldtxt" ID="Button5" runat="server" Text="View Specs"
                                    OnClick="Button5_Click" Height="53px" Width="232px" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container pb-4">
            <hr />
            <div id="carouselLogo" class="carousel slide pt-3" data-ride="carousel">
                <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">
                        <ul class="list-inline row  mx-auto">
                            <li class="col-md-4">
                                <img class="d-block img-fluid" src="images/other/mart.png" alt="First slide" /></li>
                            <li class="col-md-4">
                                <img class="d-block img-fluid" src="images/other/mart.png" alt="First slide" alt="First slide" /></li>
                            <li class="col-md-4">
                                <img class="d-block img-fluid" src="images/other/mart.png" alt="First slide" alt="First slide" /></li>
                        </ul>
                    </div>
                    <div class="carousel-item">
                        <ul class="list-inline row  mx-auto">
                            <li class="col-md-4">
                                <img class="d-block img-fluid" src="images/other/mart.png" alt="First slide" alt="First slide" /></li>
                            <li class="col-md-4">
                                <img class="d-block img-fluid" src="images/other/mart.png" alt="First slide" alt="First slide" /></li>
                            <li class="col-md-4">
                                <img class="d-block img-fluid" src="images/other/mart.png" alt="First slide" alt="First slide" /></li>
                        </ul>
                    </div>
                    <div class="carousel-item">
                        <ul class="list-inline row  mx-auto">
                            <li class="col-md-4">
                                <img class="d-block img-fluid" src="images/other/mart.png" alt="First slide" alt="First slide" /></li>
                            <li class="col-md-4">
                                <img class="d-block img-fluid" src="images/other/mart.png" alt="First slide" alt="First slide" /></li>
                            <li class="col-md-4">
                                <img class="d-block img-fluid" src="images/other/mart.png" alt="First slide" alt="First slide" /></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>

    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/other/Logo.jpg" style="height:400px; width:1850px"></asp:Image>
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
                            Buy Smart Phones,Compare features,Check full features of two Smart Phones at a time.Enjoy
                            the world class services.</p>
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
