<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PasswordStrenght.aspx.cs" Inherits="IntroAjax.PasswordStrenght" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 319px;
        }
        .auto-style3 {
            width: 319px;
            height: 39px;
        }
        .auto-style4 {
            height: 39px;
        }


        .BarBorder{
            border:2px black ridge;
            width:120px;
        }

        .Poor{
            background-color:darkcyan;
        }
        .Weak{
            background-color:red;
        }
        .Average{
            background-color:blue;
        }
        .Nice{
            background-color:lightgreen;
        }
        .Strong{
            background-color:darkgreen;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <table cellpadding="3" cellspacing="4" class="auto-style1">
                <tr>
                    <td class="auto-style3">Enter Password</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <ajaxToolkit:PasswordStrength ID="PasswordStrength1" runat="server" MinimumLowerCaseCharacters="3" MinimumNumericCharacters="2" MinimumSymbolCharacters="1" MinimumUpperCaseCharacters="3" PreferredPasswordLength="8" PrefixText="Password Strength: " TargetControlID="TextBox1" HelpStatusLabelID="Label1" BarBorderCssClass="BarBorder" StrengthIndicatorType="BarIndicator" TextStrengthDescriptions="Poor;Weak;Average;Nice;Strong;" StrengthStyles="Poor;Weak;Average;Nice;Strong;" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                   
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
