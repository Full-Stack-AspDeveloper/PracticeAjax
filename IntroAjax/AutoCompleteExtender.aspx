<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AutoCompleteExtender.aspx.cs" Inherits="IntroAjax.AutoCompleteExtender" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 151px;
        }

        .AutoExtenderList{
            font-family: Verdana, Helvetica, sans-serif;
            font-size: .8em;
            margin:0px;
            font-weight:normal;
            border: 1px solid #006699;
            line-height: 20px;
            padding: 0px;
            background-color:white;
        }
        .AutoExtenderListItem{
            border-bottom:1px dotted #006699;
            cursor:pointer;
            color:maroon;
            left:auto;
            margin: 0px;
        }
        .AutoExtenderHighlight{
            color:white;
            background-color: #006699;
            cursor:pointer;
            margin:0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <table cellpadding="4" cellspacing="4" class="auto-style2">
                <tr>
                    <td class="auto-style3">Select City</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <ajaxToolkit:AutoCompleteExtender CompletionListCssClass="AutoExtenderList" CompletionListItemCssClass="AutoExtenderListItem" CompletionListHighlightedItemCssClass="AutoExtenderHighlight" ID="TextBox1_AutoCompleteExtender" runat="server" BehaviorID="TextBox1_AutoCompleteExtender" CompletionInterval="100" DelimiterCharacters="" MinimumPrefixLength="1" ServicePath="" TargetControlID="TextBox1" ServiceMethod="GetCompletionList">
                        </ajaxToolkit:AutoCompleteExtender>
                    </td>
                </tr>
               
            </table>
        </div>
    </form>
</body>
</html>
