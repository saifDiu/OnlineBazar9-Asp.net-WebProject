<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="customerPannel.aspx.cs" Inherits="OnlineBazar.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="text-align: center">Customer Pannel</h1>
    <asp:Label ID="tbxUser" runat="server"></asp:Label>
    <asp:Button id="btnrequestProduct" runat="server" Text="Request Product" OnClick="btnrequestProduct_Click"/>
    <asp:Button ID="btnprofile" runat="server" Text="View profile" OnClick="btnprofile_Click" />
    <asp:Button ID="btnlogout" runat="server" Text="Logout" OnClick="btnlogout_Click1" />


    <asp:Panel ID="panelCustomer" runat="server">
        <h3>Request Product</h3>
        <div>

            <table>

                <tr>
                    <td>Product name
                    </td>
                    <td>
                        <asp:TextBox ID="tbxproductName" runat="server" required></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Category
                    </td>
                    <td>
                        <asp:DropDownList ID="dropdowncategory" runat="server">
                            <asp:ListItem>Select a category</asp:ListItem>
                            <asp:ListItem>Fish</asp:ListItem>
                            <asp:ListItem>Meat</asp:ListItem>
                            <asp:ListItem>Fruits</asp:ListItem>
                            <asp:ListItem>Drinks</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Description
                    </td>
                    <td>
                        <asp:TextBox ID="tbxDescription" runat="server" required></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Price Range
                    </td>
                    <td>
                        <asp:TextBox ID="tbxprice" runat="server" required></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Product Image
                    </td>
                    <td>
                        <asp:FileUpload ID="productimage" runat="server" required />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnrequest" runat="server" Text="Confirm" OnClick="btnrequest_Click"/>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="requestproduct" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
            </table>

        </div>
    </asp:Panel>
    <asp:Panel id="paneluser" runat="server">\

        <table align =" center">
            <tr>
                <td>
                    Name : 
                </td>
                <td>
                    <asp:TextBox ID="tbxname" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    Email : 
                </td>
                <td>
                    <asp:TextBox ID="tbxemail" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    Phone : 
                </td>
                <td>
                    <asp:TextBox ID="tbxphone" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    UserName : 
                </td>
                <td>
                    <asp:TextBox ID="tbxusername" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    Password : 
                </td>
                <td>
                    <asp:TextBox ID="password" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                   
                </td>
                <td>
                    <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblupdate" runat="server"></asp:Label>
                </td>
            </tr>
        </table>


    </asp:Panel>
   
</asp:Content>
