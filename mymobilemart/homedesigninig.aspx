<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homedesigninig.aspx.cs" Inherits="mymobilemart.homedesign" %>

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
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h4>
            Alter Home Page Design&nbsp;
        </h4>
         <br />
        <br />
        <h4>Please select model from bottom(from model-6)</h4>
       
        <br />
        <asp:TextBox ID="txtSearch" placeholder="Mobile Model-1" runat="server" Width="703px"
            Height="31px" class="autosuggest"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="model2" placeholder="Mobile Model-2" runat="server" Width="703px"
            Height="31px" class="autosuggest"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="model3" placeholder="Mobile Model-3" runat="server" Width="703px"
            Height="31px" class="autosuggest"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="model4" placeholder="Mobile Model-4" runat="server" Width="703px"
            Height="31px" class="autosuggest"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="model5" placeholder="Mobile Model-5" runat="server" Width="703px"
            Height="31px" class="autosuggest"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="model6" placeholder="Mobile Model-6" runat="server" Width="703px"
            Height="31px" class="autosuggest"></asp:TextBox>
        <br />
        <br />
 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button
            ID="change" runat="server" Text="Change Now" OnClick="change_Click" CssClass="bluebtn" />
    </div>
    </form>
</body>
</html>
