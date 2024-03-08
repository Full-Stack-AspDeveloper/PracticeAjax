<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmButtonExtenderControl.aspx.cs" Inherits="IntroAjax.ConfirmButtonExtenderControl" %>

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
            width: 305px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <table cellpadding="4" cellspacing="4" class="auto-style1">
            <tr>
                <td class="auto-style2">Search By ID</td>
                <td>
                    <asp:TextBox ID="SearchTextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Searchbtn" runat="server" OnClick="Searchbtn_Click" Text="Search" />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Message" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Name</td>
                <td>
                    <asp:TextBox ID="Nametxt" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Designation</td>
                <td>
                    <asp:TextBox ID="Desigtxt" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="updatebtn" runat="server" OnClick="updatebtn_Click" Text="Update" />
                    <ajaxToolkit:ConfirmButtonExtender ID="updatebtn_ConfirmButtonExtender" runat="server" BehaviorID="updatebtn_ConfirmButtonExtender" ConfirmText="Are Really Want to Update Data" TargetControlID="updatebtn">
                    </ajaxToolkit:ConfirmButtonExtender>
                    <asp:Button ID="deletebtn" runat="server" OnClick="deletebtn_Click" Text="Delete" />
                    <ajaxToolkit:ConfirmButtonExtender ID="deletebtn_ConfirmButtonExtender" runat="server" BehaviorID="deletebtn_ConfirmButtonExtender" ConfirmText="Are Really Want to Delete Data" TargetControlID="deletebtn">
                    </ajaxToolkit:ConfirmButtonExtender>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
