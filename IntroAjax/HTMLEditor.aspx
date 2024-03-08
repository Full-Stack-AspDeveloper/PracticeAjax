<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HTMLEditor.aspx.cs" Inherits="IntroAjax.HTMLEditor" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 424px;
        }
        .auto-style2 {
            width: 273px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <table cellpadding="4" cellspacing="4" class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="847px" Height="396px"></asp:TextBox>
                        <ajaxToolkit:HtmlEditorExtender ID="TextBox1_HtmlEditorExtender" EnableSanitization="false" runat="server" BehaviorID="TextBox1_HtmlEditorExtender" TargetControlID="TextBox1">
                        </ajaxToolkit:HtmlEditorExtender>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Get Formatted text" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Message"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
