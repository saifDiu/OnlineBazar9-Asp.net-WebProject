<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Drinks.aspx.cs" Inherits="OnlineBazar.Drinks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
       .par{
           font-family:Algerian;
       }

        .auto-style1 {
            width: 100%;
        }

    </style>
    <h1 align="center" class="par" >Drinks Category</h1>
    <br />
    <br />
    <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" GridLines="Both" HorizontalAlign="Center" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="txt-center">Product Id:<asp:Label ID="Label1" runat="server" Text='<%# Eval("prodID") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="txt-center">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("prodName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="txt-center">
                        <asp:Image ID="Image1" runat="server" Height="170px" ImageUrl='<%# Eval("productImage") %>' Width="200px" />
                    </td>
                </tr>
                <tr>
                    <td class="txt-center">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="txt-center">Price : Tk
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="txt-center">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="35px" ImageUrl="~/admin/ProductImages/cart.png" Width="47px"  CommandName="productDetails" CommandArgument='<%# Eval("prodID") %>' />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineBazarConnectionString2 %>" SelectCommand="SELECT * FROM [Allproduct] WHERE ([category] = @category)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="Drinks" Name="category" QueryStringField="category" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
