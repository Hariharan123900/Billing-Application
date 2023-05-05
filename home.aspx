<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Billing_Application.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
            height: 39px;
            background-color: #0099FF;
        }
        .auto-style3 {
            width: 379px;
            text-align: left;
            height: 50px;
        }
        .auto-style4 {
            width: 211px;
            height: 50px;
        }
        .auto-style5 {
            width: 171px;
            height: 50px;
        }
        .auto-style6 {
            width: 81px;
            height: 50px;
        }
        .auto-style7 {
            width: 130px;
            height: 50px;
        }
        .auto-style8 {
            height: 50px;
            text-align: right;
        }
    </style>
</head>
<body style="height: 262px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Image ID="masterpage_Image3" runat="server" Height="85px" ImageUrl="~/Images/512x512bb.jpg" Width="100px" />
            <asp:Image ID="masterpage_Image4" runat="server" Height="85px" ImageUrl="~/Images/IMG_20230201_131014.jpg" Width="950px" />
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Menu ID="masterpage_Menu1" runat="server" BackColor="White" BorderWidth="2px" Orientation="Horizontal" RenderingMode="Table" OnMenuItemClick="masterpage_Menu1_MenuItemClick" ForeColor="Black" style="text-align: left">
                        <Items>
                            <asp:MenuItem Text="Master" Value="Master" NavigateUrl="~/home.aspx">
                                <asp:MenuItem Text="State"  Value="State" NavigateUrl="~/Master/State.aspx" > </asp:MenuItem>
                                <asp:MenuItem Text="Employes" Value="Employes" NavigateUrl="~/Master/Employes.aspx"></asp:MenuItem>
                                
                                <asp:MenuItem Text="Customer" Value="Customer" NavigateUrl="~/Master/Customer.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Supplier" Value="Supplier" NavigateUrl="~/Master/Supplier.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="UOM" Value="UOM" NavigateUrl="~/Master/UOM.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Product" Value="Product" NavigateUrl="~/Master/Product.aspx"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="Transaction" Value="Transaction" NavigateUrl="~/home.aspx">
                                <asp:MenuItem Text="Purchase" Value="Purchase" NavigateUrl="~/Transaction/Purchase.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Bill" Value="Bill" NavigateUrl="~/Transaction/Bill.aspx"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="Reports" Value="Reports" NavigateUrl="~/home.aspx">
                                <asp:MenuItem Text="Bill details" Value="Bill details" NavigateUrl="~/Reports/Billdetails.aspx"></asp:MenuItem>
                            </asp:MenuItem>
                        </Items>
                    </asp:Menu>
&nbsp;</td>
                <td class="auto-style4" style="text-align: right">
                    <asp:Label ID="masterpage_Label3" runat="server" Text="User Name"></asp:Label>
                    :</td>
                <td class="auto-style5">
                    <asp:Label ID="masterpage_Label4" runat="server"></asp:Label>
                </td>
                <td class="auto-style6" style="text-align: right">
                    <asp:Label ID="masterpage_Label5" runat="server" Text="Logged At:"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:Label ID="masterpage_Label6" runat="server"  style="text-align: center"></asp:Label>
                </td>
                <td class="auto-style8">&nbsp;
                    <asp:ImageButton ID="masterpage_ImageButton1" runat="server" BorderWidth="1px" Height="21px" ImageUrl="~/Images/home.JPG" PostBackUrl="~/home.aspx" Width="18px" OnClick="masterpage_ImageButton1_Click" />
&nbsp;<asp:ImageButton ID="masterpage_ImageButton2" runat="server" BorderWidth="1px" Height="22px" ImageUrl="~/Images/logout.gif" PostBackUrl="~/Login.aspx" Width="26px" OnClick="masterpage_ImageButton2_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
        </table>
    </form>
    <p style="text-align: center">
        &nbsp;</p>
</body>
</html>
