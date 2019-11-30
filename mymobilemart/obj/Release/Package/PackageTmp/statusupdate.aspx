<%@ Page Title="" Language="C#" MasterPageFile="~/mymobilemartmaster.Master" AutoEventWireup="true"
    CodeBehind="statusupdate.aspx.cs" Inherits="mymobilemart.statusupdate" %>

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
                                ForeColor="White">HOME</asp:HyperLink> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Manage
                            Orders
                        </div>
                    </h4>
                </div>
            </div>
        </div>
    </div>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Enter Order ID </b>
    <br />
    <asp:TextBox ID="oid" runat="server" CssClass="form-control" Width="466px" 
        Height="55px" ValidationGroup="orid"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="oid" ErrorMessage="Please Enter Oreder ID" ForeColor="Red" 
        ValidationGroup="orid"></asp:RequiredFieldValidator>
    <br />
    <asp:Button ID="btn1" runat="server" CssClass="bluebtn" Text="View Details" Height="60px"
        Width="200px" onclick="btn1_Click" ValidationGroup="orid" /><br />
    <div id="upsts" runat="server" >
            <div class="bg-primary">
                <div class="container">
                    <div class="row py-4">
                        <div class="col-md-6 col-lg-7">
                            <h4 class="mb-0 white-text">
                                <div>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Update
                                    Orders
                                </div>
                            </h4>
                        </div>
                    </div>
                </div>
            </div>
    
        <asp:GridView ID="GridView2" CssClass="table table-striped table-bordered table-hover" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="orderid" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="orderid" HeaderText="orderid" InsertVisible="False" 
                    ReadOnly="True" SortExpression="orderid" />
                <asp:BoundField DataField="model" HeaderText="model" 
                    SortExpression="model" />
                <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
                <asp:BoundField DataField="rate" HeaderText="rate" SortExpression="rate" />
                <asp:BoundField DataField="finalpayamt" HeaderText="finalpayamt" 
                    SortExpression="finalpayamt" />
                <asp:BoundField DataField="paytype" HeaderText="paytype" 
                    SortExpression="paytype" />
                <asp:BoundField DataField="deladdr" HeaderText="deladdr" 
                    SortExpression="deladdr" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" 
                    SortExpression="mobile" />
                <asp:BoundField DataField="status" HeaderText="status" 
                    SortExpression="status" />
            </Columns>
        </asp:GridView><br />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Canceled</asp:ListItem>
            <asp:ListItem>Approved and Order Placed</asp:ListItem>
            <asp:ListItem>Packed</asp:ListItem>
            <asp:ListItem>Dispatched</asp:ListItem>
            <asp:ListItem>Out For Delivery Today</asp:ListItem>
            <asp:ListItem>Completed</asp:ListItem>
            </asp:DropDownList>
            <br /><br />
            <asp:Button ID="up" runat="server" CssClass="bluebtn" Height="48px" 
                Width="270px" Text="Update" onclick="up_Click" /><br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                SelectCommand="SELECT [orderid], [model], [qty], [rate], [finalpayamt], [paytype], [deladdr], [mobile], [status] FROM [orderandpay] WHERE ([orderid] = @orderid)">
            <SelectParameters>
                <asp:ControlParameter ControlID="oid" Name="orderid" PropertyName="Text" 
                    Type="Int32" />
            </SelectParameters>
            </asp:SqlDataSource>
</div>
 <div class="bg-primary">
                <div class="container">
                    <div class="row py-4">
                        <div class="col-md-6 col-lg-7">
                            <h4 class="mb-0 white-text">
                                <div>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;All
                                    Orders
                                </div>
                            </h4>
                        </div>
                    </div>
                </div>
            </div>

    <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered table-hover"
        runat="server" AutoGenerateColumns="False" DataKeyNames="orderid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="orderid" HeaderText="Order Id" InsertVisible="False" ReadOnly="True"
                SortExpression="orderid" />
            <asp:BoundField DataField="dateofpurchase" HeaderText="Date Of Purchase" SortExpression="dateofpurchase" />
            <asp:BoundField DataField="model" HeaderText="Model" SortExpression="model" />
            <asp:BoundField DataField="qty" HeaderText="Quantity" SortExpression="qty" />
            <asp:BoundField DataField="username" HeaderText="UserName" SortExpression="username" />
            <asp:BoundField DataField="paytype" HeaderText="Payment Mode" SortExpression="paytype" />
            <asp:BoundField DataField="cardholdername" HeaderText="Card Holder Name" SortExpression="cardholdername" />
            <asp:BoundField DataField="cardno" HeaderText="Card No" SortExpression="cardno" />
            <asp:BoundField DataField="cardexpiry" HeaderText="Card Expiry" SortExpression="cardexpiry" />
            <asp:BoundField DataField="finalpayamt" HeaderText="Final Payment" SortExpression="finalpayamt" />
            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM [orderandpay] ORDER BY [orderid] DESC ">
    </asp:SqlDataSource>
</asp:Content>
