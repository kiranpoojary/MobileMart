<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminpage.aspx.cs" Inherits="mymobilemart.adminpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/mycss.css" rel="stylesheet" />
    <script src="js/myjs.js" type="text/javascript"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap-reboot.min.css" rel="stylesheet" />
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="Scripts/bootstrap.js" type="text/javascript"></script>
    <title></title>
    <style type="text/css">
        #form1
        {
            width: 290px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 288px">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div id="mySidenav" class="sidenav">
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                
                <asp:HyperLink ID="addpro" runat="server" NavigateUrl="~/addproduct.aspx" 
                    Target="right">Add Product</asp:HyperLink>
                <asp:HyperLink ID="updatepro" runat="server" NavigateUrl="~/updateproduct.aspx" 
                    Target="right">Update Product</asp:HyperLink>
                <asp:HyperLink ID="removepro" runat="server" NavigateUrl="~/removeproduct.aspx" 
                    Target="right">Remove Product</asp:HyperLink>
                <asp:HyperLink ID="orderpayments" runat="server" NavigateUrl="~/vieworder.aspx" 
                    Target="right">View Order/Payments</asp:HyperLink>
                <asp:HyperLink ID="manageuser" runat="server" NavigateUrl="~/manageuser.aspx" 
                    Target="right">Manage Users</asp:HyperLink>
                <asp:HyperLink ID="manageadmins" runat="server" 
                    NavigateUrl="~/manageadmins.aspx" Target="right">Manage Admins</asp:HyperLink>
                <asp:HyperLink ID="site" runat="server" NavigateUrl="~/home.aspx" 
                    Target="right">View Site</asp:HyperLink>
                
                    <asp:LinkButton ID="logout" runat="server" OnClientClick="home.aspx" 
                    target="_blank" onclick="logout_Click">Logout&Exit</asp:LinkButton>
                
            </div>
            <div id="main">
                <span style="font-size: 30px; cursor: pointer" onclick="openNav()">My Privileges</span>
            </div>
        </nav>
    </form>
</body>
</html>
