<%@ Page Title="" Language="C#" MasterPageFile="~/mymobilemartmaster.Master" AutoEventWireup="true"
    CodeBehind="fullspecs.aspx.cs" Inherits="mymobilemart.fullspecs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    border:2px solid gray;
    width: 90%;
}

td, th {
    border: 1px solid #dddddd;
    text-align:left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
    .style1
    {
        width: 604px;
    }
    .style2
    {
        width: 604px;
        color: #0000FF;
        text-decoration: underline;
    }
    .style3
    {
        text-decoration: underline;
        color: #0000FF;
    }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="page_content" runat="server">
 <div class="bg-primary">
        <div class="container">
            <div class="row py-4">
                <div class="col-md-6 col-lg-7">
                    <h4 class="mb-0 white-text">
                        <div>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Full Specs 
                        </div>
                    </h4>
                </div>
            </div>
        </div>
    </div>
    <br />
    <div class="row">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image1" runat="server" Style="height: 300px; width: 200px" alt="404">
        </asp:Image><br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div>
            <br />
            <br />
            <br />
            <h2>
                <asp:Label ID="Label1" runat="server" Text="Product Model Here"></asp:Label></h2>
            <br />
            <h4>
                <asp:Label ID="Label2" runat="server" Text="Price" ForeColor="#00CCFF"></asp:Label></h4>
            <p>
                User Ratings(Out of 5)&nbsp;&nbsp;<asp:Label ID="Label57" runat="server" Font-Size="25px" ForeColor="#00CCFF" Text="rating"></asp:Label>
            </p>
            
        </div>
    </div>
    <hr />
    <br /><h4>
    <table style="margin-left:50px; margin-right:50px">
  <tr>
    <th class="style2"><strong>Feature</strong></th>
    <th class="style3"><strong>Description</strong></th>
   
  </tr>
  <tr>
    <td class="style1">
        Brand</td>
    <td><asp:Label ID="Label4" runat="server" Text="description"></asp:Label></td>
    
  </tr>
   <tr>
    <td class="style1">
       Touch Screen</td>
    <td><asp:Label ID="Label3" runat="server" Text="description"></asp:Label></td>
    
  </tr>
   <tr>
    <td class="style1">
        Operating System</td>
    <td><asp:Label ID="Label6" runat="server" Text="description"></asp:Label></td>
    
  </tr>
   <tr>
    <td class="style1">
        Processor</td>
    <td><asp:Label ID="Label8" runat="server" Text="description"></asp:Label></td>
    
  </tr> <tr>
    <td class="style1">
        Architecture</td>
    <td><asp:Label ID="Label10" runat="server" Text="description"></asp:Label></td>
    
  </tr> <tr>
    <td class="style1">
        Chipset</td>
    <td><asp:Label ID="Label12" runat="server" Text="description"></asp:Label></td>
    
  </tr> <tr>
    <td class="style1">
        RAM</td>
    <td><asp:Label ID="Label14" runat="server" Text="description"></asp:Label></td>
    
  </tr> <tr>
    <td class="style1">
        ROM</td>
    <td><asp:Label ID="Label16" runat="server" Text="description"></asp:Label></td>
    
  </tr> <tr>
    <td class="style1">
        Rear Camera</td>
    <td><asp:Label ID="Label18" runat="server" Text="description"></asp:Label></td>
    
  </tr> <tr>
    <td class="style1">
        Rear Flash</td>
    <td><asp:Label ID="Label20" runat="server" Text="description"></asp:Label></td>
    
  </tr> <tr>
    <td class="style1">
        Front Camera</td>
    <td><asp:Label ID="Label22" runat="server" Text="description"></asp:Label></td>
    
  </tr> <tr>
    <td class="style1">
        Front Flash</td>
    <td><asp:Label ID="Label24" runat="server" Text="description"></asp:Label></td>
    
  </tr> <tr>
    <td class="style1">
        Finger Print</td>
    <td><asp:Label ID="Label26" runat="server" Text="description"></asp:Label></td>
    
  </tr> <tr>
    <td class="style1">
        Finger Print Position</td>
    <td><asp:Label ID="Label28" runat="server" Text="description"></asp:Label></td>
    
  </tr> <tr>
    <td class="style1">
        Sensor</td>
    <td><asp:Label ID="Label30" runat="server" Text="description"></asp:Label></td>
    
  </tr> <tr>
    <td class="style1">
        Height</td>
    <td><asp:Label ID="Label32" runat="server" Text="description"></asp:Label></td>
    
  </tr> <tr>
    <td class="style1">
        Width</td>
    <td><asp:Label ID="Label34" runat="server" Text="description"></asp:Label></td>
    
  </tr> <tr>
    <td class="style1">
        Weight</td>
    <td><asp:Label ID="Label36" runat="server" Text="description"></asp:Label></td>
    
  </tr> <tr>
    <td class="style1">
        Sim Slots</td>
    <td><asp:Label ID="Label38" runat="server" Text="description"></asp:Label></td>
    
  </tr> <tr>
    <td class="style1">
        Sim Size</td>
    <td><asp:Label ID="Label40" runat="server" Text="description"></asp:Label></td>
    
  </tr> <tr>
    <td class="style1">
        Volte</td>
    <td><asp:Label ID="Label42" runat="server" Text="description"></asp:Label></td>
    
  </tr> <tr>
    <td class="style1">
        Battery</td>
    <td><asp:Label ID="Label44" runat="server" Text="description"></asp:Label></td>
    
  </tr>
  <tr>
    <td class="style1">
        Network</td>
    <td><asp:Label ID="Label46" runat="server" Text="description"></asp:Label></td>
    
  </tr><tr>
    <td class="style1">
        Display</td>
    <td><asp:Label ID="Label48" runat="server" Text="description"></asp:Label></td>
    
  </tr><tr>
    <td class="style1">
        Display Type</td>
    <td><asp:Label ID="Label50" runat="server" Text="description"></asp:Label></td>
    
  </tr><tr>
    <td class="style1">
        Display Density</td>
    <td><asp:Label ID="Label52" runat="server" Text="description"></asp:Label></td>
    
  </tr><tr>
    <td class="style1">
        Case</td>
    <td><asp:Label ID="Label54" runat="server" Text="description"></asp:Label></td>
    
  </tr><tr>
    <td class="style1">
        Audio Jack</td>
    <td><asp:Label ID="Label56" runat="server" Text="description"></asp:Label></td>
    
  </tr>
   <tr>
    <td class="style1">
       GPS</td>
    <td><asp:Label ID="Label5" runat="server" Text="description"></asp:Label></td>
    
  </tr>
</table>
</h4>

</asp:Content>
