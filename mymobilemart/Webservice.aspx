<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Webservice.aspx.cs" Inherits="simple.Webservice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
     <script src="scripts/jquery.min.js" type="text/javascript"></script>
    <link href="scripts/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="scripts/jquery-ui.min.js" type="text/javascript"></script>
 <title>autocomplte</title>
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
                     url: "Webservice.aspx/GetAutoCompleteData",
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
   </head>
<body>
    <form id="form1" runat="server">
     Search Department :<asp:TextBox ID="txtSearch" runat="server" class="autosuggest" ></asp:TextBox>
<div>
    
    </div>
    </form>
</body>

</html>
