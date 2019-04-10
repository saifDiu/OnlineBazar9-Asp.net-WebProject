<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="popular.aspx.cs" Inherits="OnlineBazar.popular" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 align="center">Mixed Item</h1>
    <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" GridLines="Both" HorizontalAlign="Center" RepeatColumns="5" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <ItemTemplate>
            <table style="width: 100%">
                <tr>
                    <td class="txt-center">Product Id:
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("prodID") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="txt-center">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("prodName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="txt-center">
                        <asp:Image ID="Image1" runat="server" Height="180px" ImageUrl='<%# Eval("productImage") %>' Width="200px" />
                    </td>
                </tr>
                <tr>
                    <td class="txt-center">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="txt-center">Price :
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="txt-center">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="33px" ImageUrl="~/admin/ProductImages/cart.png" Width="38px" CommandName="productDetails" CommandArgument='<%# Eval("prodID") %>' />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SeparatorStyle BackColor="#003366" BorderColor="Lime" BorderWidth="2px" />
</asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineBazarConnectionString %>" SelectCommand="SELECT * FROM [Allproduct]"></asp:SqlDataSource>
</asp:Content>
