<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="OnlineBazar.admin.adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            background-color: #9900FF;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            width: 78px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align: center">
                <span class="auto-style1">Admin</span>
            </h1>
            <p class="auto-style2" style="text-align: center">
                <strong>Sign in</strong></p>
            <table align="center">
                <tr>
                    <td style="text-align: center">
                        Username
                    </td>
                      <td class="auto-style3">
                        <asp:TextBox ID="tbxadminusername" runat="server" required style="text-align: center"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        Password
                    </td>
                      <td class="auto-style3">
                        <asp:TextBox ID="tbxadminpass" TextMode="Password" runat="server" required style="text-align: center"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td class="auto-style3">
                        <asp:Button ID="tbxloginadmin" Text="Log in" runat ="server" OnClick="tbxloginadmin_Click" />
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                        <asp:Label ID="labelLoginadmin" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
