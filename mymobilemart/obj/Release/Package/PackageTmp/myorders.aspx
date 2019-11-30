<%@ Page Title="" Language="C#" MasterPageFile="~/mymobilemartmaster.Master" AutoEventWireup="true"
    CodeBehind="myorders.aspx.cs" Inherits="mymobilemart.myorders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        .track
        {
            border: 2px solid #404040;
            color: blue;
            font-size: 20px;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="page_content" runat="server">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
       
        <a class="navbar-brand" href="home.aspx">Home</a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton CssClass="myhover" ID="ImageButton1" runat="server" ImageUrl="~/images/other/shopping-cart.png"
                Height="50px" Width="50px" Visible="False" OnClick="ImageButton1_Click" 
                onclientclick="Image_Buttin1_Click"></asp:ImageButton>
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
    <div class="bg-primary">
        <div class="container">
            <div class="row py-4">
                <div class="col-md-6 col-lg-7">
                    <h4 class="mb-0 white-text">
                        <div>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Your
                            Orders
                        </div>
                    </h4>
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
    Enter Oder ID
    <asp:TextBox ID="orderid" CssClass="form-control" runat="server" Width="365px">
    </asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
        ErrorMessage="*" ControlToValidate="orderid" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:Button ID="Button1" runat="server" CssClass="bluebtn" Text="Track Order" Width="193px"
        OnClick="Button1_Click" />
    <br />
    <div id="trackorder" runat="server" visible="false" class="track">
        &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;
        &nbsp&nbsp&nbsp&nbsp;<b><u>OREDR DETAILS</u></b><br />
        <br />
        <br />
        &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;
        &nbsp&nbsp&nbsp&nbsp;Order ID &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;&nbsp&nbsp&nbsp&nbsp;
        &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;:
        &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;<asp:Label ID="Label1" runat="server"
            Text="Label"></asp:Label><br />
        &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;
        &nbsp&nbsp&nbsp&nbsp;Model&nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;&nbsp&nbsp&nbsp&nbsp;
        &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;
        &nbsp&nbsp&nbsp&nbsp:&nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;<asp:Label ID="Label2"
            runat="server" Text="Label"></asp:Label><br />
        &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;
        &nbsp&nbsp&nbsp&nbsp;Date Of Purchase&nbsp&nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;
        &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;:&nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;<asp:Label
            ID="Label3" runat="server" Text="Label"></asp:Label><br />
        &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;
        &nbsp&nbsp&nbsp&nbsp;Color&nbsp&nbsp&nbsp;&nbsp&nbsp&nbsp&nbsp;&nbsp&nbsp&nbsp&nbsp;&nbsp&nbsp&nbsp&nbsp;&nbsp&nbsp&nbsp&nbsp;
        &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;:&nbsp&nbsp&nbsp&nbsp;
        &nbsp&nbsp&nbsp&nbsp;<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label><br />
        &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;
        &nbsp&nbsp&nbsp&nbsp;Quantity&nbsp&nbsp;&nbsp&nbsp&nbsp&nbsp;&nbsp&nbsp&nbsp&nbsp;&nbsp&nbsp&nbsp&nbsp;
        &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;:&nbsp&nbsp&nbsp&nbsp;
        &nbsp&nbsp&nbsp&nbsp;<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label><br />
        &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;
        &nbsp&nbsp&nbsp&nbsp;Payment Mode&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;
        &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;:&nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;<asp:Label
            ID="Label6" runat="server" Text="Label"></asp:Label><br />
        &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;
        &nbsp&nbsp&nbsp&nbsp;Delivery Address &nbsp&nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;
        &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;:&nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;<asp:Label
            ID="Label7" runat="server" Text="Label"></asp:Label><br />
        &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;
        &nbsp&nbsp&nbsp&nbsp;Mobile No.&nbsp; &nbsp&nbsp&nbsp&nbsp;&nbsp&nbsp&nbsp&nbsp;
        &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;:&nbsp&nbsp&nbsp&nbsp;
        &nbsp&nbsp&nbsp&nbsp;<asp:Label ID="Label8" runat="server" Text="Label"></asp:Label><br />
        &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;
        &nbsp&nbsp&nbsp&nbsp;Order Status &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;
        &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp; &nbsp&nbsp&nbsp&nbsp;:&nbsp&nbsp&nbsp&nbsp;
        &nbsp&nbsp&nbsp&nbsp;<asp:Label ID="Label9" runat="server" Text="Label"></asp:Label><br />
        <br />
        <asp:Button ID="Button2" runat="server" CssClass="bluebtn" Text="Cancel This Order"
            Width="193px" OnClick="Button2_Click" />
    </div>
    <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered table-hover"
        runat="server" AutoGenerateColumns="False" DataKeyNames="orderid" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="orderid" HeaderText="Order ID" ReadOnly="True" SortExpression="orderid"
                InsertVisible="False" />
            <asp:BoundField DataField="model" HeaderText="Model" SortExpression="model" />
            <asp:ImageField AlternateText="no image" DataImageUrlField="modelimg" HeaderText="Image"
                ItemStyle-Height="100px" ItemStyle-Width="100px">
            </asp:ImageField>
            <asp:BoundField DataField="qty" HeaderText="Quantity" SortExpression="qty" />
            <asp:BoundField DataField="dateofpurchase" HeaderText="Date  Of Purchase" SortExpression="dateofpurchase" />
            <asp:BoundField DataField="payprice" HeaderText="Amount" SortExpression="payprice" />
            <asp:BoundField DataField="paymode" HeaderText="Payment Mode" SortExpression="paymode" />
            <asp:BoundField DataField="status" HeaderText="Order Status" SortExpression="status" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>"
        SelectCommand="SELECT [orderid], [model], [modelimg], [qty], [dateofpurchase], [payprice], [paymode], [status] FROM [order] WHERE ([username] = @username)ORDER BY [orderid] DESC">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="un" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
