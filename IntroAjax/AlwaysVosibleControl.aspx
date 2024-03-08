<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlwaysVosibleControl.aspx.cs" Inherits="IntroAjax.AlwaysVosibleControl" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

            <asp:Panel ID="Panel1" runat="server">
                <asp:Image ID="Image1" ImageUrl="~/image/Umang (2).jpg" Height="200px" Width="200px" runat="server" /><br />
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Size="Larger"></asp:Label>
                        <asp:Timer ID="Timer1" OnTick="Timer1_Tick" runat="server" Interval="1000"></asp:Timer>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </asp:Panel>

            <ajaxToolkit:AlwaysVisibleControlExtender ID="Panel1_AlwaysVisibleControlExtender" HorizontalOffset="50" VerticalOffset="50" HorizontalSide="Center" runat="server" BehaviorID="Panel1_AlwaysVisibleControlExtender" TargetControlID="Panel1" ScrollEffectDuration="5" UseAnimation="True"></ajaxToolkit:AlwaysVisibleControlExtender>


            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
            <p>This ia A Dummy Paragraph</p>
        </div>
    </form>
</body>
</html>
