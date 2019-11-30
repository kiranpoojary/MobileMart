<%@ Page Title="" Language="C#" MasterPageFile="~/mymobilemartmaster.Master" AutoEventWireup="true"
    CodeBehind="cart.aspx.cs" Inherits="mymobilemart.cart" %>

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
                            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/home.aspx" runat="server" 
                                ForeColor="White">HOME</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Your
                            Cart
                        </div>
                    </h4>
                </div>
            </div>
        </div>
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
        DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" DataKeyNames="model"
        onclick="GridView1_RowCommand" Width="1524px"
        OnRowCommand="GridView1_RowCommand1">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
           <asp:BoundField DataField="model" HeaderText="Model" SortExpression="model" />
            <asp:ImageField DataImageUrlField="modelimg" HeaderText="Image" ItemStyle-Height="100px"
                ItemStyle-Width="100px">
                <ItemStyle Height="100px" Width="100px"></ItemStyle>
            </asp:ImageField>
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
            <asp:ButtonField ButtonType="Button" CommandName="view" Text="View" />
            <asp:CommandField ShowDeleteButton="True" DeleteText="Remove"  />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM [cart] WHERE ([username] = @username2)" DeleteCommand="DELETE from [cart] where [model]=@model">
        <SelectParameters>
            <asp:SessionParameter Name="username2" SessionField="un" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br /> <br />
    <br />
    <br />
</asp:Content>
