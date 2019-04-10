<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddtoCart.aspx.cs" Inherits="OnlineBazar.AddtoCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblitem" runat="server" Text="Total item : "></asp:Label>  <asp:Label ID="lbltotalitem" runat="server" Text=""> </asp:Label><asp:Label ID="lblshow" runat="server" Text="Total amount : "></asp:Label><asp:Label ID="lbltotal" runat="server"></asp:Label>
    <br />
    <br />
    <br />

    <asp:GridView align="Center" ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="Serial" />
            <asp:BoundField DataField="prodID" HeaderText="Product Id" />
            <asp:ImageField DataImageUrlField="productImage" HeaderText="Product Image">
                <ControlStyle Height="180px" Width="220px" />
            </asp:ImageField>
            <asp:BoundField DataField="prodName" HeaderText="Product Name" />
            <asp:BoundField DataField="price" HeaderText="Price" />
            <asp:BoundField DataField="quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
            <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>

</asp:Content>
