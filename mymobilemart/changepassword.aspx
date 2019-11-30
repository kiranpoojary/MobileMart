<%@ Page Title="" Language="C#" MasterPageFile="~/mymobilemartmaster.Master" AutoEventWireup="true"
    CodeBehind="changepassword.aspx.cs" Inherits="mymobilemart.changepassword1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css">
 <script type="text/javascript">
     function JSconfirm() {
         swal({
             title: "Success",
             text: "Password successfuly changed",
             type: "success",
             showCancelButton: false,
             confirmButtonColor: "#DD6B55",
             confirmButtonText: "Ok",
             closeOnConfirm: false,
             closeOnCancel: false
         },
    function (isConfirm) {
        if (isConfirm) {
            window.location = "myaccount.aspx";
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
             closeOnCancel: true
         },
);
     }
</script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="page_content" runat="server">
    <div style="background-color: #404040; height: 400px;">
        <div class="bg-primary">
            <div class="container">
                <div class="row py-4">
                    <div class="col-md-6 col-lg-7">
                        <h4 class="mb-0 white-text">
                            <div>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Don't
                                Share Your Password
                            </div>
                        </h4>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox1" ControlToValidate="TextBox2" 
            ErrorMessage="Password Mismatch" ForeColor="Red" ValidationGroup="eql"></asp:CompareValidator>
        <div class="group">
            <asp:TextBox runat="server" type="text" ID="TextBox1" Width="437px" Height="34px"
                BackColor="White" autocomplete="off" AutoCompleteType="Disabled" 
                ValidationGroup="eql" TextMode="Password" />
            <span class="highlight">
            
            </span><span class="bar"></span>
            <label>
               New Passwords</label>
        </div>
        <div class="group">
            <asp:TextBox runat="server" type="password" ID="TextBox2" Width="438px"
                Height="34px" AutoCompleteType="Disabled" TextMode="Password" 
                BackColor="White" ValidationGroup="eql" />
            <span class="highlight"></span><span class="bar"></span>
            <label>
                Confirm Password</label>
        </div><div>
        <asp:Button CssClass="bluebtn" ID="Button1" runat="server" OnClick="Button1_Click"
            Style="margin-left: 0px" Text="Submit" ValidationGroup="eql" Width="184px" 
                Height="42px" />
        </div>
        <br />
        <br />

    </div>
</asp:Content>
