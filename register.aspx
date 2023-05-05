<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Billing_Application.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 36px;
        }
        .auto-style3 {
            text-align: right;
            background-color: #CCCCCC;
        }
        .auto-style5 {
            background-color: #66CCFF;
        }
        .auto-style6 {
            background-color: #CCCCCC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td style="text-align: center">
                    <asp:Image ID="reg_Image1" runat="server" Height="85px" ImageUrl="~/Images/512x512bb.jpg" Width="100px" />
                    <asp:Image ID="reg_Image2" runat="server" Height="85px" ImageUrl="~/Images/IMG_20230201_131014.jpg" Width="940px" />
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2" style="font-weight: 700; text-decoration: underline; text-align: center; background-color: #0099FF">REGISTER</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="reg_Label1" runat="server" Text="Username"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="reg_TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="reg_Label2" runat="server" Text="Phone number"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="reg_TextBox2" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="reg_Label3" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="reg_TextBox3" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="reg_Label4" runat="server" Text="Confirm Password"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="reg_TextBox4" runat="server" Width="200px"></asp:TextBox>
                    <asp:CompareValidator ID="reg_CompareValidator1" runat="server" ControlToCompare="reg_TextBox3" ControlToValidate="reg_TextBox4" ErrorMessage="enter correct password" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="reg_Button1" runat="server" OnClick="reg_Button1_Click" Text="Submit" Width="75px" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="reg_Button2" runat="server" Text="Clear" Width="75px" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
