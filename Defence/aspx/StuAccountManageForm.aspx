<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StuAccountManageForm.aspx.cs" Inherits="Defence.StuAccountManageForm" %>

<%@ Register TagPrefix="topwin" TagName="c_topwin" Src="/c_topwin.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <link rel="stylesheet" href="../css/TableStyleSheet1.css">




<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div style="position: absolute; top: -4px; left: -33px; height: 717px;">
            <topwin:c_topwin runat="server" ID="c_topwin7" />
            <asp:Panel ID="m_stuAccountManagePanel" runat="server" Style="position: absolute; top: 261px; left: 535px; height: 255px; width: 452px; margin-left: 0px; margin-bottom: 17px;" Font-Size="11pt">
                <table style="width: 100%; margin-top: 0px; height: 254px;" class="login-help">
                    <tr class="tr">
                        <td class="td">&nbsp;&nbsp;&nbsp;&nbsp; 工号:</td>
                        <td class="td">
                            <asp:Label ID="m_Account_StuIdLabel" runat="server" Font-Size="11pt"></asp:Label>
                        </td>
                    </tr>
                    <tr class="tr">
                        <td class="td">请输入原密码：</td>
                        <td class="td">
                            <asp:TextBox ID="m_Account_OriginalPasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tr">
                        <td class="td">请输入新密码：</td>
                        <td class="td">
                            <asp:TextBox ID="m_Account_NewPasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tr">
                        <td class="td">请确认新密码：</td>
                        <td class="td">
                            <asp:TextBox ID="m_Account_ConfirmNewPasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tr">
                        <td class="td"></td>
                        <td class="td">
                            <asp:Button ID="m_StuAccount_ConfirmButton" runat="server" Height="25px" Text="确定" Width="65px" OnClick="StuAccount_ConfirmButton_Click" />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                &nbsp;&nbsp;</asp:Panel>
        </div>
    </form>
</body>
</html>
