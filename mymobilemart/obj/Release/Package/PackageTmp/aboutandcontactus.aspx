<%@ Page Title="" Language="C#" MasterPageFile="~/mymobilemartmaster.Master" AutoEventWireup="true" CodeBehind="aboutandcontactus.aspx.cs" Inherits="mymobilemart.aboutandcontactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="page_content" runat="server">
 <div class="bg-primary">
        <div class="container">
            <div class="row py-4">
                <div class="col-md-6 col-lg-7">
                    <h4 class="mb-0 white-text">
                        <div>
                           <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/home.aspx" 
                                ForeColor="White">HOME</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;About SmartMobileMart
                           
                        </div>
                    </h4>
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
<div class="about-section">
		<div class="container">
			<div class="site-title text-center">
				<h3>About Us</h3>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/other/Logo.jpg" style="height:300px; width:1900px"></asp:Image>
				<p>A wonderfulweb site to shop mobiles online also the leap into electronic pesetting industry  It was popularised in the 1960s with the release </p>
			</div>
			<div class="about-inner-section">				
				<div class="col-md-6 about-inner-column">
					<h4>SmartMobileMart for Smart Mobile Shopping </h4>
					<p>Takenpossession of lorem Ipsum is simply dummy text of the printing and typesetting industry In sit amet sapien eros Integer  in tincidunt labore et dolore magna aliqua  remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</p>
					<ul>
						<li><a href="#">Donec ut quam lscele volutri.</a></li>
						<li><a href="#">Etiam volutpatbh quam bortis</a></li>
						<li><a href="#">Varius fusce vit aeblandit.</a></li>
					</ul>
				</div>
				<div class="col-md-6 about-right">
				<img src="https://images.pexels.com/photos/7096/people-woman-coffee-meeting.jpg?w=940&h=650&auto=compress&cs=tinysrgb" alt=" ">
			</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>

    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/other/Logo.jpg" style="height:300px; width:1900px"></asp:Image>
<div class="about-section">
		<div class="container">
			<div class="site-title text-center">
				<h3>About Us</h3>
				<p>A wonderful designs has takenpossession but also the leap into electronic pesetting industry  It was popularised in the 1960s with the release </p>
			</div>
			<div class="about-inner-section">	
			    <div class="col-md-6 about-right">
				<img src="https://images.pexels.com/photos/7096/people-woman-coffee-meeting.jpg?w=940&h=650&auto=compress&cs=tinysrgb" alt=" ">
			</div>
				<div class="col-md-6 about-inner-column">
					<h4>Eco friendly food is good for health </h4>
					<p>Takenpossession of lorem Ipsum is simply dummy text of the printing and typesetting industry In sit amet sapien eros Integer  in tincidunt labore et dolore magna aliqua  remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</p>
					<ul>
						<li><a href="#">Donec ut quam lscele volutri.</a></li>
						<li><a href="#">Etiam volutpatbh quam bortis</a></li>
						<li><a href="#">Varius fusce vit aeblandit.</a></li>
					</ul>
				</div>
				
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
</asp:Content>
