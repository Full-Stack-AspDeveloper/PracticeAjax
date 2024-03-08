<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListSearchControl.aspx.cs" Inherits="IntroAjax.ListSearchControl" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 39%;
        }
        .auto-style2 {
            width: 235px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <table cellpadding="4" cellspacing="4" class="auto-style1">
                <tr>
                    <td class="auto-style2">Choose Fruit</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:ListBox ID="ListBox1" runat="server" Height="182px" Width="247px">
                            <asp:ListItem>Apple</asp:ListItem>
                            <asp:ListItem>Banana</asp:ListItem>
                            <asp:ListItem>Grapes</asp:ListItem>
                            <asp:ListItem>Orange</asp:ListItem>
                            <asp:ListItem>Watermelon</asp:ListItem>
                            <asp:ListItem>Mango</asp:ListItem>
                            <asp:ListItem>chili</asp:ListItem>
                            <asp:ListItem>Gavava</asp:ListItem>
                            <asp:ListItem>Pavava</asp:ListItem>
                            <asp:ListItem>Kinnu</asp:ListItem>
                            <asp:ListItem>Pumpkeen</asp:ListItem>
                            <asp:ListItem>lays</asp:ListItem>
                            <asp:ListItem>KHUSHI</asp:ListItem>
                        </asp:ListBox>
                        <ajaxToolkit:ListSearchExtender ID="ListBox1_ListSearchExtender" runat="server" BehaviorID="ListBox1_ListSearchExtender" TargetControlID="ListBox1" PromptText="Type to Find" QueryPattern="Contains" QueryTimeout="2000">
                        </ajaxToolkit:ListSearchExtender>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="170px">
                            <asp:ListItem>Apple</asp:ListItem>
                            <asp:ListItem>Banana</asp:ListItem>
                            <asp:ListItem>Grapes</asp:ListItem>
                            <asp:ListItem>Orange</asp:ListItem>
                            <asp:ListItem>Watermelon</asp:ListItem>
                            <asp:ListItem>Mango</asp:ListItem>
                            <asp:ListItem>chili</asp:ListItem>
                            <asp:ListItem>Gavava</asp:ListItem>
                            <asp:ListItem>Pavava</asp:ListItem>
                            <asp:ListItem>Kinnu</asp:ListItem>
                            <asp:ListItem>Pumpkeen</asp:ListItem>
                            <asp:ListItem>lays</asp:ListItem>
                            <asp:ListItem>KHUSHI</asp:ListItem>
                        </asp:DropDownList>
                        <ajaxToolkit:ListSearchExtender ID="DropDownList1_ListSearchExtender" runat="server" BehaviorID="DropDownList1_ListSearchExtender" TargetControlID="DropDownList1">
                        </ajaxToolkit:ListSearchExtender>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
