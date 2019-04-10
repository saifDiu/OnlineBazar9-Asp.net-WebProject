<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="OnlineBazar.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}
    .auto-style1 {
        width: 89px;
        height: 81px;
    }
    </style> 
    <h1 class="txt-center"> Sign in</h1>
   

  <div class="imgcontainer" >
    <img src="imageDesign/lock_security_business_web_data_information_system-512.png" alt="Avatar" class="auto-style1">
  </div>

 
   <table align="center" bgcolor="#ccccff">
       <tr>
           <td>
               Name:
           </td>
           <td>
               <asp:TextBox ID="tbxName" runat="server"></asp:TextBox>
           </td>
       </tr>
       <tr>
          <td>
              Password:
          </td>
           <td>
               <asp:TextBox ID="tbxpass" TextMode="Password" runat="server"></asp:TextBox>
           </td>
       </tr>
       <tr>
           <td><asp:Label ID="lblerror" runat="server"></asp:Label></td>
           <td>
               <asp:Button ID="btnLogin" CssClass="button" runat="server" Text="Sign in" BackColor="Lime" BorderStyle="Dotted" BorderWidth="2px" Width="150px" OnClick="btnLogin_Click" />
           </td>
       </tr>
       <tr>
           <td>
               Not Registered? 
           </td>
           <td>
               <asp:Button id="btnRegister" Text="Register" runat="server" OnClick="btnRegister_Click" />
           </td>
       </tr>
   </table>
</asp:Content>
