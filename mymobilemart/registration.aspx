<%@ Page Title="" Language="C#" MasterPageFile="~/mymobilemartmaster.Master" AutoEventWireup="true"
    CodeBehind="registration.aspx.cs" Inherits="mymobilemart.registration1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" runat="server">
    registration
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css">
 <script type="text/javascript">
     function JSconfirm() {
         swal({
             title: "Success",
             text: "You are successfuly Registered",
             type: "success",
             showCancelButton: false,
             confirmButtonColor: "#DD6B55",
             confirmButtonText: "Ok",          
             closeOnConfirm: false,
             closeOnCancel: false
         },
    function (isConfirm) {
        if (isConfirm) {
            window.location = "home.aspx";
        }
        
    });
     }
</script>




<script type="text/javascript">
     function JSconfirm2() {
         swal({
             title: "Warning",
             text: "Password must be minimum 8 Character",
             type: "warning",
             showCancelButton: true,
             showConfirmButton: false,
             CancelButtonColor: "#DD6B55",            
             cancelButtonText: "ok",             
             closeOnCancel: false
         },
);
     }
</script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="page_content" runat="server">
    <div style="background-color: #404040">
     <div class="bg-primary">
            <div class="container">
                <div class="row py-4">
                    <div class="col-md-6 col-lg-7">
                        <h5 class="mb-0 white-text">
                        
      <div> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Register With SmartMobileMart</div>                             
                        </h5>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
        <div class="container ">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <img id="profile-img" class="profile-img-card" src="images/other/register.png" /><br />
            <div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="UserName Not vailable"
                    Visible="False" Style="font-weight: 700; font-style: italic"></asp:Label></div>
            <div class="group">
                <asp:TextBox runat="server" type="text" ID="TextBox1" required Width="437px" Height="34px"
                    AutoCompleteType="Disabled" />
                <span class="highlight"></span><span class="bar"></span>
                <label>
                    UserName</label>
            </div>
            <div class="group">
                <asp:TextBox runat="server" type="password" ID="TextBox2" required Width="438px"
                    Height="34px" AutoCompleteType="Disabled" TextMode="Password" ValidationGroup="comp" />
                <span class="highlight"></span><span class="bar"></span>
                <label>
                    Password</label>
            </div>
            <div class="group">
                <asp:TextBox runat="server" type="text" ID="TextBox3" required Width="439px" Height="34px"
                    AutoCompleteType="Disabled" ValidationGroup="comp" TextMode="Password" />
                <span class="highlight"></span><span class="bar"></span>
                <label>
                    Confirm Password</label><asp:CompareValidator ID="CompareValidator1" runat="server"
                        ErrorMessage="Password Mismatch" ControlToCompare="TextBox2" ControlToValidate="TextBox3"
                        ValidationGroup="comp" ForeColor="Red"></asp:CompareValidator></div>
            <div class="group">
                <asp:TextBox runat="server" type="Text" ID="TextBox4" required Width="438px" Height="34px"
                    AutoCompleteType="Disabled" />
                <span class="highlight"></span><span class="bar"></span>
                <label>
                    Email</label>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4"
                    ErrorMessage="Invalid Email ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ForeColor="Red" ValidationGroup="comp"></asp:RegularExpressionValidator>
            </div>
            <div class="group">
                <asp:TextBox runat="server" type="text" ID="TextBox5" required Width="437px" Height="34px"
                    AutoCompleteType="Disabled" />
                <span class="highlight"></span><span class="bar"></span>
                <label>
                    Security Question</label><div style="color: Magenta">
                        Ex:My ATM PIN,My Nick Name etc.</div>
            </div>
            <div class="group">
                <asp:TextBox runat="server" type="Text" ID="TextBox6" required Width="438px" Height="34px"
                    AutoCompleteType="Disabled" />
                <span class="highlight"></span><span class="bar"></span>
                <label>
                    Security Answer</label>
            </div>
            <br />
            <div class="white">
                Set Your Profile Picture(.jpg,.png Only)&nbsp;
                <asp:Label ID="Label2" runat="server" ForeColor="Red" style="font-weight: 700" 
                    Text="Profile file format not supported" Visible="False"></asp:Label>
            </div>
            <br />
            <div style="text-align: center">
                <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="White" />&nbsp;</div>
            <asp:Button ID="Button1" runat="server" CssClass="bluebtn" Text="REGISTER NOW" OnClick="Button1_Click"
                Width="1092px" Height="56px" ValidationGroup="comp" />
            <br />
        </div>
    </div>
</asp:Content>
