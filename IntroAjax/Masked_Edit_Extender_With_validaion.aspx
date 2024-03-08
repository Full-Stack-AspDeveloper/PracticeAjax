<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Masked_Edit_Extender_With_validaion.aspx.cs" Inherits="IntroAjax.Masked_Edit_Extender_With_validaion" %>

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
            width: 207px;
        }
        .auto-style3 {
            width: 207px;
            height: 47px;
        }
        .auto-style4 {
            height: 47px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <table cellpadding="4" cellspacing="4" class="auto-style1">
                <tr>
                    <td class="auto-style2">Roll No.</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <ajaxToolkit:MaskedEditExtender ID="TextBox1_MaskedEditExtender" ErrorTooltipEnabled="true" InputDirection="RightToLeft" Mask="999" runat="server" BehaviorID="TextBox1_MaskedEditExtender" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" TargetControlID="TextBox1">
                        </ajaxToolkit:MaskedEditExtender>
                        <ajaxToolkit:MaskedEditValidator ID="MaskedEditValidator1" ControlToValidate="TextBox1" ControlExtender="TextBox1_MaskedEditExtender" IsValidEmpty="false" ForeColor="Red" EmptyValueMessage="Thiis Field is Mandatory" MinimumValue="1" MinimumValueMessage="Minimum Value is : 1" MaximumValue="500" MaximumValueMessage="Maximum Value is : 500" runat="server"></ajaxToolkit:MaskedEditValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Mobile No.</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <ajaxToolkit:MaskedEditExtender ID="TextBox2_MaskedEditExtender" Mask="9999-9999999" MaskType="Number" ErrorTooltipEnabled="true" InputDirection="RightToLeft" runat="server" BehaviorID="TextBox2_MaskedEditExtender" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" TargetControlID="TextBox2">
                        </ajaxToolkit:MaskedEditExtender>
                        <ajaxToolkit:MaskedEditValidator ID="MaskedEditValidator2" ControlToValidate="TextBox2" ControlExtender="TextBox2_MaskedEditExtender" IsValidEmpty="false" EmptyValueMessage="Mobile Number is Mandatorey" ForeColor="Red" runat="server"></ajaxToolkit:MaskedEditValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Date</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <ajaxToolkit:MaskedEditExtender ID="TextBox3_MaskedEditExtender" Mask="99/99/9999" MaskType="Date" UserDateFormat="DayMonthYear" ErrorTooltipEnabled="true" runat="server" BehaviorID="TextBox3_MaskedEditExtender" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" TargetControlID="TextBox3">
                        </ajaxToolkit:MaskedEditExtender>
                        <ajaxToolkit:MaskedEditValidator ID="MaskedEditValidator3" ControlToValidate="TextBox3" ControlExtender="TextBox3_MaskedEditExtender" IsValidEmpty="false" EmptyValueMessage="Date Is Manadatory" ForeColor="Red" InvalidValueMessage="Invalid Date" MinimumValue="01/01/2000" MinimumValueMessage="Minimum Date is : 01/01/2000" MaximumValue="31/12/2030" MaximumValueMessage="Maximum Date Ia : 31/12/2030" runat="server"></ajaxToolkit:MaskedEditValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Time</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        <ajaxToolkit:MaskedEditExtender ID="TextBox4_MaskedEditExtender" Mask="99:99:99" MaskType="Time" ErrorTooltipEnabled="true" AcceptAMPM="true" runat="server" BehaviorID="TextBox4_MaskedEditExtender" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" TargetControlID="TextBox4">
                        </ajaxToolkit:MaskedEditExtender>
                        <ajaxToolkit:MaskedEditValidator ID="MaskedEditValidator4" ControlToValidate="TextBox4" ControlExtender="TextBox4_MaskedEditExtender" IsValidEmpty="false" EmptyValueMessage="Time Is Required" ForeColor="Red" InvalidValueMessage="Invalid Time" runat="server"></ajaxToolkit:MaskedEditValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Date Time</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        <ajaxToolkit:MaskedEditExtender ID="TextBox5_MaskedEditExtender" Mask="99/99/9999 99:99:99" MaskType="DateTime" UserDateFormat="DayMonthYear" AcceptAMPM="true" ErrorTooltipEnabled="true" runat="server" BehaviorID="TextBox5_MaskedEditExtender" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" TargetControlID="TextBox5">
                        </ajaxToolkit:MaskedEditExtender>
                        <ajaxToolkit:MaskedEditValidator ID="MaskedEditValidator5" ControlToValidate="TextBox5" ControlExtender="TextBox5_MaskedEditExtender" IsValidEmpty="false" EmptyValueMessage="Date Time Is Mandatory" ForeColor="Red" InvalidValueMessage="Invalid Date Time" runat="server"></ajaxToolkit:MaskedEditValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Text</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        <ajaxToolkit:MaskedEditExtender ID="TextBox6_MaskedEditExtender" Mask="" runat="server" BehaviorID="TextBox6_MaskedEditExtender" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" TargetControlID="TextBox6">
                        </ajaxToolkit:MaskedEditExtender>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Height="41px" Text="Submit" Width="129px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
