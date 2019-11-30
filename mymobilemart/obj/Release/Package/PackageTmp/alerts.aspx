<%@ Page Title="" Language="C#" MasterPageFile="~/mymobilemartmaster.Master" AutoEventWireup="true" CodeBehind="alerts.aspx.cs" Inherits="mymobilemart.alerts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css">
 <script type="text/javascript">
     function JSconfirm() {
         swal({
             title: "Redirect to main page!",
             text: "Redirect me to home page?",
             type: "warning",
             showCancelButton: true,
             confirmButtonColor: "#DD6B55",
             confirmButtonText: "Yes",
             cancelButtonText: "No",
             closeOnConfirm: false,
             closeOnCancel: false
         },
    function (isConfirm) {
        if (isConfirm) {
            window.location = "loginpage.aspx";
        }
        else {
            swal("You are not redirected!", "success");
        } 
    });
     }
</script>
  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="page_content" runat="server">
<asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" ></asp:Button>

</asp:Content>
