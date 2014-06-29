<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TchAccountManageForm.aspx.cs" Inherits="Defence.TchAccountManageForm" %>
<%@ Register TagPrefix="topwin" TagName="c_topwin" Src="/c_topwin_tch.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="position: absolute; top: -4px; left: -33px; height: 717px;">
        <topwin:c_topwin runat="server" id="c_topwin19"/>
        <asp:Panel ID="m_tchAccountManagePanel" runat="server" style="position: absolute; top: 241px; left: 302px; height: 396px; width: 885px;">
            &nbsp;&nbsp;<b>修改密码</b>
            <br /> 
            <br />
            &nbsp;&nbsp;工号：<asp:Label ID="TchAccount_TchIdLabel" runat="server" Text="教师工号Label"></asp:Label>
            <br /> 
            <br />
            &nbsp;&nbsp;请输入原密码：<asp:TextBox ID="TchAccount_OriginalPasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
            <br /> 
            <br />
            &nbsp;&nbsp;请输入新密码：<asp:TextBox ID="TchAccount_NewPasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
            <br /> 
            <br />
            &nbsp;&nbsp;请确认新密码：<asp:TextBox ID="TchAccount_ConfirmNewPasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
            <br /> 
            <br />
            &nbsp;&nbsp;<asp:Button ID="TchAccount_ConfirmButton" runat="server" Text="确定" Height="25px" Width="65px" />
        </asp:Panel>
    </div>
    </form>
</body>
</html>
