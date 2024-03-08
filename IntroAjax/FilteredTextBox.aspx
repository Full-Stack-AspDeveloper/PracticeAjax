<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FilteredTextBox.aspx.cs" Inherits="IntroAjax.FilteredTextBox" %>

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
            width: 303px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <table cellpadding="4" cellspacing="4" class="auto-style1">
                <tr>
                    <td class="auto-style2">Enter Number</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender" runat="server" BehaviorID="TextBox1_FilteredTextBoxExtender" TargetControlID="TextBox1" FilterType="Numbers">
                        </ajaxToolkit:FilteredTextBoxExtender>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Enter Both Alphabets</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="TextBox2_FilteredTextBoxExtender" runat="server" BehaviorID="TextBox2_FilteredTextBoxExtender" FilterType="UppercaseLetters, LowercaseLetters" TargetControlID="TextBox2">
                        </ajaxToolkit:FilteredTextBoxExtender>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Enet Uppercase Alphabets</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="TextBox3_FilteredTextBoxExtender" runat="server" BehaviorID="TextBox3_FilteredTextBoxExtender" FilterType="LowercaseLetters" TargetControlID="TextBox3">
                        </ajaxToolkit:FilteredTextBoxExtender>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Enet Lowercase Alphabets</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="TextBox4_FilteredTextBoxExtender" runat="server" BehaviorID="TextBox4_FilteredTextBoxExtender" FilterType="LowercaseLetters" TargetControlID="TextBox4">
                        </ajaxToolkit:FilteredTextBoxExtender>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Enet Alphabets with Space</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="TextBox5_FilteredTextBoxExtender" runat="server" BehaviorID="TextBox5_FilteredTextBoxExtender" FilterType="Custom, UppercaseLetters, LowercaseLetters" TargetControlID="TextBox5" ValidChars=" ">
                        </ajaxToolkit:FilteredTextBoxExtender>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Enet Upper Lower case Alphabets with Number</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="TextBox6_FilteredTextBoxExtender" runat="server" BehaviorID="TextBox6_FilteredTextBoxExtender" FilterType="UppercaseLetters, LowercaseLetters, Numbers" TargetControlID="TextBox6">
                        </ajaxToolkit:FilteredTextBoxExtender>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Enter Alphabets and Numbers with Space</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="TextBox7_FilteredTextBoxExtender" runat="server" BehaviorID="TextBox7_FilteredTextBoxExtender" FilterType="Custom, UppercaseLetters, LowercaseLetters, Numbers"  TargetControlID="TextBox7" ValidChars=" ">
                        </ajaxToolkit:FilteredTextBoxExtender>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Enter Email Format</td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="TextBox8_FilteredTextBoxExtender" runat="server" BehaviorID="TextBox8_FilteredTextBoxExtender" FilterType="Custom, LowercaseLetters, Numbers" TargetControlID="TextBox8" ValidChars="@.">
                        </ajaxToolkit:FilteredTextBoxExtender>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Enter Marks</td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="TextBox9_FilteredTextBoxExtender" runat="server" BehaviorID="TextBox9_FilteredTextBoxExtender" FilterType="Custom, Numbers" TargetControlID="TextBox9" ValidChars=".">
                        </ajaxToolkit:FilteredTextBoxExtender>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Enter Salary</td>
                    <td>
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="TextBox10_FilteredTextBoxExtender" runat="server" BehaviorID="TextBox10_FilteredTextBoxExtender" FilterType="Custom, Numbers" TargetControlID="TextBox10" InvalidChars=",.">
                        </ajaxToolkit:FilteredTextBoxExtender>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
