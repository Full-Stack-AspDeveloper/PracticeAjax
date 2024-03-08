<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HoverMenuControl.aspx.cs" Inherits="IntroAjax.HoverMenuControl" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-top: 0px;
        }
        .Panelcss{
            visibility:hidden;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:Label ID="Label1" runat="server" Text="Mouse Hover The Label To The Display The Message On  Popup Panel"></asp:Label>
            <ajaxToolkit:HoverMenuExtender OffsetX="25" OffsetY="25" HoverDelay="1000" PopDelay="1000" ID="Label1_HoverMenuExtender" runat="server" BehaviorID="Label1_HoverMenuExtender" DynamicServicePath="" PopupControlID="Panel1" TargetControlID="Label1" PopupPosition="Bottom">
            </ajaxToolkit:HoverMenuExtender>
            <br />
            <asp:Panel ID="Panel1" runat="server" BackColor="#FFFF66" BorderColor="Maroon"  BorderStyle="Ridge" BorderWidth="10px" CssClass="auto-style1" Height="200px" Width="200px">
<%--                <asp:Image ID="Image1" ImageUrl="~/image/Umang (2).jpg" Height="200px" Width="200px" runat="server"></asp:Image>--%>
<%--                <asp:Label ID="Label2" runat="server" Text="Here Is Your Panel With Some Message" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Font-Underline="True"></asp:Label>--%>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="156px" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>Red</asp:ListItem>
                    <asp:ListItem>Black</asp:ListItem>
                    <asp:ListItem>White</asp:ListItem>
                    <asp:ListItem>Blue</asp:ListItem>
                    <asp:ListItem>Yellow</asp:ListItem>
                    <asp:ListItem>Orange</asp:ListItem>
                    <asp:ListItem>Marron</asp:ListItem>
                </asp:RadioButtonList>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
