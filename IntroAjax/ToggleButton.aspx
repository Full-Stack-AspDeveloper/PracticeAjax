<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ToggleButton.aspx.cs" Inherits="IntroAjax.ToggleButton" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 717px;
            height: 286px;
        }
        .auto-style2 {
            width: 185px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <table cellpadding="4" cellspacing="4" class="auto-style1">
                <tr>
                    <td class="auto-style2">Show Bulb</td>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        <ajaxToolkit:ToggleButtonExtender ID="CheckBox1_ToggleButtonExtender" CheckedImageUrl="~/image/animation.gif" UncheckedImageUrl="~/image/giphy.gif" runat="server" BehaviorID="CheckBox1_ToggleButtonExtender" ImageHeight="380" ImageWidth="480" TargetControlID="CheckBox1">
                        </ajaxToolkit:ToggleButtonExtender>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" Text="Submit" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
