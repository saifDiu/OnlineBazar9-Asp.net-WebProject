<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="displaySearchItems.aspx.cs" Inherits="OnlineBazar.displaySearchItems" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1  align="center" >
    <asp:Label ID="lblid" runat="server" Text=""></asp:Label>
     </h1>
    <asp:DataList align="center" ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both" OnItemCommand="DataList1_ItemCommand">
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
                        <asp:Image ID="Image1" runat="server" Height="180px" ImageUrl='<%# Eval("productImage") %>' Width="220px" />
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
<%--                        <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" ImageUrl="~/admin/ProductImages/cart.png" Width="45px"  />--%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="productDetails.aspx?id=<%# Eval("prodID") %>" align="center" > View Details</a>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    </asp:DataList>

</asp:Content>
