<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ColorPickerControl.aspx.cs" Inherits="IntroAjax.ColorPickerControl" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 36%;
        }
        .auto-style2 {
            width: 191px;
        }
    </style>
</head>
    <body id="WebBody" runat="server">
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <table cellpadding="3" class="auto-style1">
                <tr>
                    <td class="auto-style2">Choose Color</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <ajaxToolkit:ColorPickerExtender ID="TextBox1_ColorPickerExtender" PopupPosition="BottomRight" PopupButtonID="Button1" runat="server" BehaviorID="TextBox1_ColorPickerExtender" TargetControlID="TextBox1" SampleControlID="TextBox2">
                        </ajaxToolkit:ColorPickerExtender>
                        <asp:Button ID="Button1" runat="server" Text="Pick Color" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Preview</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="112px" Width="177px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Change Website Backround" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
