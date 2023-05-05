<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Billing_Application.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            text-align: left;
            background-color: #0099FF;
        }
        .auto-style11 {
            text-align: left;
            height: 33px;
            background-color: #CCCCCC;
        }
        .auto-style12 {
            height: 33px;
            background-color: #CCCCCC;
        }
        .auto-style13 {
            text-align: left;
            height: 34px;
            background-color: #CCCCCC;
        }
        .auto-style14 {
            height: 34px;
            background-color: #CCCCCC;
        }
    </style>

</head>
<body style="height: 267px">
    <form id="form1" runat="server">
    <div>
    
        <div class="auto-style1">
            <asp:Image ID="masterpage_Image3" runat="server" Height="85px" ImageUrl="~/Images/512x512bb.jpg" Width="100px" />
            <asp:Image ID="masterpage_Image4" runat="server" Height="85px" ImageUrl="~/Images/IMG_20230201_131014.jpg" Width="950px" />
        </div>
   
    </div>
        <p class="auto-style1" style="background-color: #0099FF">
            <strong>LOGIN</strong></p>
        <table class="auto-style9">
            <tr>
                <td class="auto-style13">Name:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Password:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="75px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="text-align: center" Text="Clear" Width="75px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
