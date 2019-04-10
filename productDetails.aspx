<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="productDetails.aspx.cs" Inherits="OnlineBazar.productDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 align="center">Product Details&nbsp;</h1>
    <asp:DataList align="center" ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both" OnItemCommand="DataList1_ItemCommand">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <ItemTemplate>
            <table style="width: 98%; height: 395px;">
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
                    <td class="txt-center">Price: Tk
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="txt-center">Available item :
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="txt-center">Quantity 
                        <asp:DropDownList ID="DropDownList1" runat="server" required>
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="2"></asp:ListItem>
                            <asp:ListItem Value="3"></asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                            <asp:ListItem Value="5"></asp:ListItem>
                            <asp:ListItem Value="6"></asp:ListItem>
                            <asp:ListItem Value="7"></asp:ListItem>
                            <asp:ListItem Value="8"></asp:ListItem>
                            <asp:ListItem Value="9"></asp:ListItem>
                            <asp:ListItem Value="10"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="txt-center">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="48px" ImageUrl="~/admin/ProductImages/cart.png" Width="50px" CommandName="addtocart" CommandArgument='<%# Eval("prodID")%>' />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    </asp:DataList>

</asp:Content>
