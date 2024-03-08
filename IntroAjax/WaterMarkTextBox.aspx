<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WaterMarkTextBox.aspx.cs" Inherits="IntroAjax.WaterMarkTextBox" %>

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
            width: 142px;
        }
        .auto-style3 {
            width: 142px;
            height: 39px;
        }
        .auto-style4 {
            height: 39px;
            margin-left: 40px;
        }
    </style>
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <table cellpadding="4" cellspacing="4" class="auto-style1">
            <tr>
                <td class="auto-style3">First Name</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server" Width="263px"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="TextBox1_TextBoxWatermarkExtender" runat="server" BehaviorID="TextBox1_TextBoxWatermarkExtender" TargetControlID="TextBox1" WatermarkText="Enter Your First Name" WatermarkCssClass="WatermarkStyle">
                    </ajaxToolkit:TextBoxWatermarkExtender>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Second Name</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="263px"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="TextBox2_TextBoxWatermarkExtender" runat="server" BehaviorID="TextBox2_TextBoxWatermarkExtender" TargetControlID="TextBox2" WatermarkText="Enter Your Last Name" WatermarkCssClass="WatermarkStyle">
                    </ajaxToolkit:TextBoxWatermarkExtender>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Submit" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
