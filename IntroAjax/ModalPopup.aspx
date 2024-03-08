<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModalPopup.aspx.cs" Inherits="IntroAjax.ModalPopup" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 120px;
            margin-bottom: 0px;
        }
        .auto-style2 {
            width: 100%;
            border: 2px solid #000000;
            background-color: aqua;
        }
        .auto-style10 {
            margin-left: 39px;
        }
        .auto-style11 {
            height: 50px;
            width: 868px;
        }
        .auto-style12 {
            height: 50px;
            width: 1244px;
        }
        .ModalPopup{
            background-color:black;
            opacity:0.5;
        }
        .auto-style15 {
            height: 52px;
            width: 868px;
        }
        .auto-style16 {
            height: 52px;
            width: 1244px;
        }
        .auto-style17 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:Button ID="Button1" runat="server" Height="61px" Text="Click to the see Model Popup" Width="446px" CssClass="auto-style17" />
            <ajaxToolkit:ModalPopupExtender ID="Button1_ModalPopupExtender" RepositionMode="RepositionOnWindowResize" BackgroundCssClass="ModalPopup" PopupControlID="Panel1" runat="server" BehaviorID="Button1_ModalPopupExtender" DynamicServicePath="" TargetControlID="Button1" DropShadow="True" CancelControlID="Button3">
            </ajaxToolkit:ModalPopupExtender>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="Label" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" Height="111px" Width="460px">
                <table cellpadding="4" cellspacing="4" class="auto-style2">
                    <tr>
                        <td class="auto-style11">Enter Name</td>
                        <td class="auto-style12">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15"></td>
                        <td class="auto-style16">
                            <asp:Button ID="Button2" runat="server" Text="Submit" Width="70px" Height="30px" OnClick="Button2_Click" />
                            <asp:Button ID="Button3" runat="server" CssClass="auto-style10" Text="Cancel" Width="70px" Height="30px" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
