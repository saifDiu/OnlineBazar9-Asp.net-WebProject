<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="OnlineBazar.registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <style type="text\css">
        .tableDesign
        {
            background-color:aqua;
            
        }
        div .font
        {
            background:aqua;
        }
    </style>
    <div runat="server" id="main" >
    <h1 class="txt-center">Register Here</h1>
    <table align="center" bgcolor="#00FF00" border="2">
        <tr>
            <td>
                Name
            </td>
            <td>
                <asp:TextBox ID="tbxName" runat="server" autocomplete="off" Height="25px" Width="308px" placeholder="Please enter your name" MaxLength="100" required></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Email
            </td>
            <td>
                <asp:TextBox runat="server" Height="25px" Width="309px" MaxLength="100" autocomplete="off" placeholder="Please enter your email" 
    name="contact_email" ID="contact_email" title="Contact's email (format: xxx@xxx.xxx)" 
    type="email" TextMode="Email" validate="required:true" required
    pattern="[a-zA-Z0-9!#$%&'*+\/=?^_`{|}~.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Phone  
            </td>
            <td>
                <asp:TextBox ID="tbxphone" autocomplete="off"  runat="server" Height="25px" placeholder="Please enter your phone no" Width="309px" MaxLength="100" pattern=".{11,11}" title="Phone No. should exact 11 charcters" required></asp:TextBox>
            </td>
             
        </tr>
        <tr>
            <td>
                Username
            </td>
            <td>
                <asp:TextBox ID="tbxusername" autocomplete="off" runat="server" Height="25px" placeholder="Please enter your username" Width="309px" MaxLength="100" pattern=".{4,}" title="Username should more than 4 charcters" required></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Password
            </td>
            <td>
                <asp:TextBox ID="tbxpass" Height="25px" Width="309px" autocomplete="off" MaxLength="100" placeholder="Please choose a password" pattern=".{6,}" TextMode="Password" title="Password should carry 6 or more charecters" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Confirm Password
            </td>
            <td>
                <asp:TextBox ID="tbxconpass" Height="25px" autocomplete="off" Width="308px" MaxLength="100" placeholder="Confirm your password" TextMode="Password" runat="server" oncommand="passwordcheker()"></asp:TextBox>
                
            </td>
            
        </tr>
        <tr>
            <td></td>
            
                <td>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Password mismatched" ControlToCompare="tbxpass" ControlToValidate="tbxconpass" ValueToCompare="tbxpass"></asp:CompareValidator>

            </td>
            
        </tr>
    </table>
    <br />
    <center>
    <asp:Button id="btnsave"  Text="Complete Registration" Height="44px"  BackColor="Yellow"  runat="server" OnClick="btnsave_Click"  />
        </center>
    <center>
        <asp:Label ID="labelRegistration" runat="server" Text=""></asp:Label>
    </center>
    
    
    </div>
</asp:Content>
