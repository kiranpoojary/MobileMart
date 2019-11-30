<%@ Page Title="" Language="C#" MasterPageFile="~/mymobilemartmaster.Master" AutoEventWireup="true"
    CodeBehind="homeno.aspx.cs" Inherits="mymobilemart.home2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
 
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
 
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="page_content" runat="server">
    <div>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div id="usersidenav" class="sidenav">
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a> <a
                    href="#">Home</a> <a href="#">Compare Mobiles</a>
                <asp:LinkButton ID="Account" runat="server" OnClick="Account_Click">My Account</asp:LinkButton>
                <asp:LinkButton ID="Cart" runat="server" OnClick="Cart_Click">My Cart</asp:LinkButton>
                <asp:LinkButton ID="Order" runat="server" OnClick="Order_Click">My Orders</asp:LinkButton>
                <asp:LinkButton ID="WishList" runat="server" OnClick="WishList_Click">Wish List</asp:LinkButton>
                <a href="#">Help Centre</a> <a href="#">Legal</a>
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
                    <li class="nav-item "><a class="nav-link" id="topt" runat="server" href="#">Top 10 Mobiles<span class="sr-only">(current)</span></a>
                    </li>

                   
                    <li class="nav-item "><a class="nav-link" href="#">New Releases<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item ">
                        <div id="filtersidenav" class="sidenav">
                            <a href="javascript:void(0)" class="closebtn" onclick="closefilternav()">&times;</a>
                            <a href="#">Filter</a>
                            <div class="white">
                                Brand :<asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>Acer</asp:ListItem>
                                    <asp:ListItem>Apple</asp:ListItem>
                                    <asp:ListItem>Asus</asp:ListItem>
                                    <asp:ListItem>BlackBerry</asp:ListItem>
                                    <asp:ListItem>Celkon</asp:ListItem>
                                    <asp:ListItem>Coolpad</asp:ListItem>
                                    <asp:ListItem>Gionee</asp:ListItem>
                                    <asp:ListItem>Google</asp:ListItem>
                                    <asp:ListItem>HP</asp:ListItem>
                                    <asp:ListItem>Huawei</asp:ListItem>
                                    <asp:ListItem>Intex</asp:ListItem>
                                    <asp:ListItem>Kabonn</asp:ListItem>
                                    <asp:ListItem>Lava</asp:ListItem>
                                    <asp:ListItem>LG</asp:ListItem>
                                    <asp:ListItem>Lenovo</asp:ListItem>
                                    <asp:ListItem>Micromax</asp:ListItem>
                                    <asp:ListItem>Motorola</asp:ListItem>
                                    <asp:ListItem>Nokia</asp:ListItem>
                                    <asp:ListItem>OnePlus</asp:ListItem>
                                    <asp:ListItem>Oppo</asp:ListItem>
                                    <asp:ListItem>Panasonic</asp:ListItem>
                                    <asp:ListItem>Phillips</asp:ListItem>
                                    <asp:ListItem>Samsung</asp:ListItem>
                                    <asp:ListItem>Sony</asp:ListItem>
                                    <asp:ListItem>Thoshiba</asp:ListItem>
                                    <asp:ListItem>Vivo</asp:ListItem>
                                    <asp:ListItem>Xolo</asp:ListItem>
                                    <asp:ListItem>Xiaomi</asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <br />
                            <div class="white">
                                &nbsp;Category&nbsp; :&nbsp;
                                <br />
                                &nbsp;Keypad&nbsp;
                                <asp:RadioButton ID="Keypad" runat="server" GroupName="cat" />
                                &nbsp;&nbsp;&nbsp; Touch&nbsp;
                                <asp:RadioButton ID="Touch" runat="server" GroupName="cat" />
                            </div>
                        </div>
                        <div id="filtermenu">
                            <span style="font-size: 15px; cursor: pointer" onclick="openfilternav()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
                                class="myhover" src="images/other/icon_filter.png" style="height: 40px; width: 40px"
                                alt="404" /></span>
                        </div>
                    </li>
                </ul>
                 Search Department :<asp:TextBox ID="txtSearch" runat="server" class="autosuggest" ></asp:TextBox>
              
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
        <!-- Carousel Slider -->
        <div id="carouselLogo2" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselLogo" data-slide-to="0" class="active"></li>
                <li data-target="#carouselLogo" data-slide-to="1"></li>
                <li data-target="#carouselLogo" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="carousel-item active">
                    <img class="d-block img-fluid" src="images/other/img1.jpg" style="height: 400px;
                        width: 1617px" alt="First slide" />
                </div>
                <div class="carousel-item">
                    <img class="d-block img-fluid" src="images/other/img2.png" style="height: 400px;
                        width: 1500px" alt="First slide" />
                </div>
                <div class="carousel-item">
                    <img class="d-block img-fluid" src="images/other/img3.jpg" style="height: 400px;
                        width: 1500px" alt="First slide" />
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselLogo" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span><span class="sr-only">
                    Previous</span> </a><a class="carousel-control-next" href="#carouselLogo" role="button"
                        data-slide="next"><span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span> </a>
        </div>
        <!-- Carousel Slider -->
        <!-- Card -->
        <div class="container container mt-4 mb-5">
            <h3 class="display-4 text-center">
                Popular Mobiles
            </h3>
            <hr class="bg-dark mb-4 w-25" />
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="images/defaults/apple-iphone-x-1.jpeg" style="height: 350px;
                            width: 183px" alt="Card image cap" />
                        <div class="card-block p-3">
                            <h4 class="card-title">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label1" runat="server" Text="Apple Iphone X"></asp:Label></h4>
                            <p class="card-text">
                            (128GB/4GB)16Mp Camera<br />5.8inch HD Display                               </p>
                            <asp:Button CssClass="btn bluebtn boldtxt" ID="Button7" runat="server" 
                                Text="Full Specs" onclick="Button7_Click" Height="53px" Width="232px" />

                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="images/defaults/lenovo-a6600-plus-1.jpeg" style="height: 350px;
                            width: 210px" alt="Card image cap" />
                        <div class="card-block p-3">
                            <h4 class="card-title">
                                &nbsp; <asp:Label ID="Label2" runat="server" Text="Apple Iphone X"></asp:Label></h4>
                            <p class="card-text">
                                Simple Discription of Product</p>
                            <asp:Button CssClass="btn bluebtn boldtxt" ID="Button1" runat="server" 
                                Text="Full Specs" onclick="Button7_Click" Height="53px" Width="232px" />

                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        
                        <img class="card-img-top" src="images/defaults/motorola-moto-c-plus1.jpeg" style="height: 350px;
                            width: 210px" alt="Card image cap" />
                        <div class="card-block p-3">
                            <h4 class="card-title">
                                <asp:Label ID="Label3" runat="server" Text="Motorola Moto C-Plus"></asp:Label><br />
                             </h4>
                            <p class="card-text">
                                Simple Discription of Product</p>
                           <asp:Button CssClass="btn bluebtn boldtxt" ID="Button2" runat="server" 
                                Text="Full Specs" onclick="Button7_Click" Height="53px" Width="232px" />

                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="images/defaults/motorola-moto-c-plus1.jpeg" style="height: 350px;
                            width: 210px" alt="Card image cap" />
                        <div class="card-block p-3">
                            <h4 class="card-title">
                                Product Name Here</h4>
                            <p class="card-text">
                                Simple Discription of Product</p>
                            <asp:Button CssClass="btn bluebtn boldtxt" ID="Button3" runat="server" 
                                Text="Full Specs" onclick="Button7_Click" Height="53px" Width="232px" />

                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                       <img class="card-img-top" src="images/defaults/motorola-moto-c-plus1.jpeg" style="height: 350px;
                            width: 210px" alt="Card image cap" />
                        <div class="card-block p-3">
                            <h4 class="card-title">
                                Product Name Here</h4>
                            <p class="card-text">
                                  Simple Discription of Product</p>
                          <asp:Button CssClass="btn bluebtn boldtxt" ID="Button4" runat="server" 
                                Text="Full Specs" onclick="Button7_Click" Height="53px" Width="232px" />

                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="images/defaults/motorola-moto-c-plus1.jpeg" style="height: 350px;
                            width: 210px" alt="Card image cap" />
                        <div class="card-block p-3">
                            <h4 class="card-title">
                                Product Name Here</h4>
                            <p class="card-text">
                                  Simple Discription of Product</p>
                            <asp:Button CssClass="btn bluebtn boldtxt" ID="Button5" runat="server" 
                                Text="Full Specs" onclick="Button7_Click" Height="53px" Width="232px" />

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Card -->
        <div class="container mb-5">
            <div class="row">
                <div class="col-md-8">
                    <h3 class="display-4">
                        Products</h3>
                    <hr class="bg-dark w-25 ml-0" />
                    <p class="lead">
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem
                        Ipsum has been the industry's standard dummy text ever since the 1500s
                    </p>
                    <p>
                        When an unknown printer took a galley of type and scrambled it to make a type specimen
                        book. It has survived not only five centuries, but also the leap into electronic
                        typesetting, remaining essentially unchanged. It was popularised in the 1960s with
                        the release of Letraset sheets containing Lorem Ipsum passages, and more recently
                        with desktop publishing software like Aldus PageMaker including versions of Lorem
                        Ipsum.
                    </p>
                    <ul class="list-unstyled pl-4">
                        <li><i class="fa fa-check"></i>Lorem Ipsum is simply dummy text</li>
                        <li><i class="fa fa-check"></i>Lorem Ipsum is simply dummy text</li>
                        <li><i class="fa fa-check"></i>Lorem Ipsum is simply dummy text</li>
                    </ul>
                    <a href="#" class="btn btn-outline-primary rounded-0">Read More</a>
                </div>
                <div class="col-md-4 mt-5">
                    <img class="card-img-top" src="https://dummyimage.com/300x300/c7c7c7/000.png" alt="Card image cap" />
                </div>
            </div>
        </div>
        <div class="container pb-4">
            <h3 class="display-4 text-center">
                Clients</h3>
            <hr class="bg-dark w-25" />
            <div id="carouselLogo" class="carousel slide pt-3" data-ride="carousel">
                <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">
                        <ul class="list-inline row  mx-auto">
                            <li class="col-md-4">
                                <img class="d-block img-fluid" src="http://brix.io/assets/img/logo-bootstrap.png"
                                    alt="First slide" /></li>
                            <li class="col-md-4">
                                <img class="d-block img-fluid" src="http://brix.io/assets/img/logo-bootstrap.png"
                                    alt="First slide" /></li>
                            <li class="col-md-4">
                                <img class="d-block img-fluid" src="http://brix.io/assets/img/logo-bootstrap.png"
                                    alt="First slide" /></li>
                        </ul>
                    </div>
                    <div class="carousel-item">
                        <ul class="list-inline row  mx-auto">
                            <li class="col-md-4">
                                <img class="d-block img-fluid" src="http://brix.io/assets/img/logo-bootstrap.png"
                                    alt="First slide" /></li>
                            <li class="col-md-4">
                                <img class="d-block img-fluid" src="http://brix.io/assets/img/logo-bootstrap.png"
                                    alt="First slide" /></li>
                            <li class="col-md-4">
                                <img class="d-block img-fluid" src="http://brix.io/assets/img/logo-bootstrap.png"
                                    alt="First slide" /></li>
                        </ul>
                    </div>
                    <div class="carousel-item">
                        <ul class="list-inline row  mx-auto">
                            <li class="col-md-4">
                                <img class="d-block img-fluid" src="http://brix.io/assets/img/logo-bootstrap.png"
                                    alt="First slide" /></li>
                            <li class="col-md-4">
                                <img class="d-block img-fluid" src="http://brix.io/assets/img/logo-bootstrap.png"
                                    alt="First slide" /></li>
                            <li class="col-md-4">
                                <img class="d-block img-fluid" src="http://brix.io/assets/img/logo-bootstrap.png"
                                    alt="First slide" /></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
       
    </div>
</asp:Content>
