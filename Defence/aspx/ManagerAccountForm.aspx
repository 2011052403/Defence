<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagerAccountForm.aspx.cs" Inherits="Defence.aspx.ManagerAccountForm" %>
<%@ Register TagPrefix="topwin" TagName="c_topwin_manager" Src="/c_topwin_manager.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 50px;
        }
    </style>
</head>

     <link rel="stylesheet" href="../css/TableStyleSheet1.css">
<body>
    <form id="form1" runat="server">
         <topwin:c_topwin_manager runat="server" id="c_topwin_manager1"/>

        <asp:Panel ID="m_AccountManagePanel" runat="server" Font-Size="11pt" Style="position: absolute; top: 261px; left: 535px; height: 255px; width: 452px; margin-left: 0px; margin-bottom: 17px;">
            <table class="login-help" style="width: 100%; margin-top: 0px; height: 254px;">
                <tr class="tr">
                    <td class="td">&nbsp;&nbsp;&nbsp;&nbsp; 学号:</td>
                    <td class="td">
                        <asp:Label ID="m_Account_IdLabel" runat="server" Font-Size="11pt"></asp:Label>
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
                    <td class="auto-style1">请确认新密码：</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="m_Account_ConfirmNewPasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr class="tr">
                    <td class="td"></td>
                    <td class="td">
                        <asp:Button ID="m_Account_ConfirmButton" runat="server" Height="25px" OnClick="Account_ConfirmButton_Click" Text="确定" Width="65px" />
                    </td>
                </tr>
            </table>
                <br />
                <br />
                &nbsp;&nbsp;</asp:Panel>
       
    <div>
        
    </div>
    </form>
</body>
</html>
