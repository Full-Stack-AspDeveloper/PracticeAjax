<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DrpShadowControl.aspx.cs" Inherits="IntroAjax.DrpShadowControl" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 83px;
        }
        .auto-style6 {
            height: 51px;
        }
        .auto-style7 {
            height: 51px;
            width: 130px;
        }
        .auto-style8 {
            height: 49px;
            width: 130px;
        }
        .auto-style9 {
            height: 83px;
            width: 130px;
        }
        .auto-style11 {
            margin-right: 17px;
        }
        .auto-style10 {
            margin-top: 0px;
        }
        .ShadowStyle{
            -webkit-box-shadow: 1px 2px 11px 7px rgba(35,21,230,1);
-moz-box-shadow: 1px 2px 11px 7px rgba(35,21,230,1);
box-shadow: 1px 2px 11px 7px rgba(35,21,230,1);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
            <asp:Panel ID="Panel1" CssClass="ShadowStyle" runat="server" BackColor="Lime" BorderStyle="Solid" Height="183px" Width="507px">
                <table cellpadding="3" cellspacing="3" class="auto-style1">
                    <tr>
                        <td class="auto-style7">First Name</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="TextBox1" runat="server" Height="35px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Last Name</td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style11" Height="34px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9"></td>
                        <td class="auto-style2">
                            <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Height="38px" OnClick="Button1_Click" Text="Submit" Width="96px" />
                            <br />
                        </td>
                    </tr>
                </table>
<%--                <ajaxToolkit:DropShadowExtender ID="Panel1_DropShadowExtender" runat="server" Opacity="0.5" TargetControlID="Panel1" Width="10" Radius="15" Rounded="True" />--%>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
