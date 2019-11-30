<%@ Page Title="" Language="C#" MasterPageFile="~/mymobilemartmaster.Master" AutoEventWireup="true" CodeBehind="sort.aspx.cs" Inherits="mymobilemart.sort" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="page_content" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="orderid" DataSourceID="SqlDataSource1" Height="266px" 
        Width="1092px">
        <Columns>
            <asp:BoundField DataField="orderid" HeaderText="orderid" InsertVisible="False" 
                ReadOnly="True" SortExpression="orderid" />
            <asp:BoundField DataField="username" HeaderText="username" 
                SortExpression="username" />
            <asp:BoundField DataField="model" HeaderText="model" SortExpression="model" />
            <asp:BoundField DataField="modelimg" HeaderText="modelimg" 
                SortExpression="modelimg" />
            <asp:BoundField DataField="color" HeaderText="color" SortExpression="color" />
            <asp:BoundField DataField="dateofpurchase" HeaderText="dateofpurchase" 
                SortExpression="dateofpurchase" />
            <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
            <asp:BoundField DataField="rate" HeaderText="rate" SortExpression="rate" />
            <asp:BoundField DataField="payprice" HeaderText="payprice" 
                SortExpression="payprice" />
            <asp:BoundField DataField="paymode" HeaderText="paymode" 
                SortExpression="paymode" />
            <asp:BoundField DataField="deladdr" HeaderText="deladdr" 
                SortExpression="deladdr" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" 
                SortExpression="mobile" />
            <asp:BoundField DataField="status" HeaderText="status" 
                SortExpression="status" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [order] WHERE ([username] = @username) ORDER BY [orderid] DESC">
        <SelectParameters>
            <asp:Parameter DefaultValue="kiran123" Name="username" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
