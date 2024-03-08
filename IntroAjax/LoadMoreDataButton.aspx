<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoadMoreDataButton.aspx.cs" Inherits="IntroAjax.LoadMoreDataButton" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>


                    <table style="margin: auto" border="1">
                        <tr>
                            <th align="center" colspan="6">Employee Details</th>
                        </tr>
                        <asp:Repeater ID="Repeater1" runat="server">
                            <HeaderTemplate>
                                <tr>
                                    <th>Id</th>
                                    <th>Name</th>
                                    <th>Gender</th>
                                    <th>Age</th>
                                    <th>Designation</th>
                                    <th>Salary</th>
                                </tr>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td><%# Eval("Id") %></td>
                                    <td><%# Eval("name") %></td>
                                    <td><%# Eval("gender") %></td>
                                    <td><%# Eval("age") %></td>
                                    <td><%# Eval("designation") %></td>
                                    <td><%# Eval("salary") %></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                        <tr>
                            <td align="center" colspan="6">
                                <asp:Button ID="LoadButton" runat="server" OnClick="Button1_Click" Text="Load More Data" />
                                <asp:UpdateProgress ID="UpdateProgress1" DisplayAfter="10" runat="server">
                                    <ProgressTemplate>
                                        <asp:Image ID="Image1" ImageUrl="~/image/Loading_icon.gif" Height="45" Width="45" runat="server" />
                                    </ProgressTemplate>
                                </asp:UpdateProgress>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
