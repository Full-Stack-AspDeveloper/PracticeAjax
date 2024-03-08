<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rating.aspx.cs" Inherits="IntroAjax.Rating" %>

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
            width: 343px;
        }
        .Star_Empty{
            background-image:url('image/holestar.png');
            height:50px;
            width:50px;
            color:black;
        }
         .Star_Filled{
            background-image:url('image/fillstar.png');
            height:50px;
            width:50px;
            color:blue;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <table cellpadding="4" cellspacing="4" class="auto-style1">
                <tr>
                    <td class="auto-style2">Enter Website Rating</td>
                    <td>
                        <ajaxToolkit:Rating ID="Rating1" runat="server" CurrentRating="1" StarCssClass="Star_Empty" FilledStarCssClass="Star_Filled" EmptyStarCssClass="Star_Empty" WaitingStarCssClass="Star_Filled" OnChanged="Rating1_Changed" OnClick="Rating1_Click">
                        </ajaxToolkit:Rating>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" CssClass="Star_Empty" Font-Size="Larger" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
