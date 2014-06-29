<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="c_topwin_manager.ascx.cs" Inherits="Defence.c_topwin_manager" %>

<link href="../css/BackgroundStyleSheet.css" rel="stylesheet" type="text/css">

<div style="position: absolute; top: 14px; left: 158px; height: 716px;">
        <asp:Image ID="m_topImage" runat="server" ImageUrl="~\images\top.png" BorderStyle="None" Height="162px" Width="1050px"/><br />
        <asp:Label ID="m_welcomeLabel" runat="server" Text="欢迎您    " Font-Size="10pt"></asp:Label>
        <asp:LinkButton ID="m_exitLinkButton" runat="server" OnClick="m_exitLinkButton_Click" Font-Size="10pt">退出</asp:LinkButton>
        <hr/>
        <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/image/gate1.png" Height="503px">
            <asp:Panel ID="m_buttonPanel" runat="server" Height="500px" Width="150px" Font-Size="13pt" CssClass="menu" BackImageUrl="~/image/menu.jpg">
                <br />
                <div style="height: 109px; margin-left: 7px">
                    <asp:ImageButton ID="m_StuManagerBtn" runat="server" Height="33px" ImageUrl="~/image/学生管理.png" Width="138px" OnClick="m_StuManagerBtnClick" />
                    <asp:ImageButton ID="m_TeacherManageBtn" runat="server" Height="33px" ImageUrl="~/image/教师管理.png" Width="138px" OnClick="m_TeacherManageBtn_Click" />
                    <asp:ImageButton ID="m_stuAccountManageButton" runat="server" Height="33px" ImageUrl="~\images\AccountManage.png" Width="138px" OnClick="m_stuAccountManageButton_Click" />
                </div>
                <br />
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
            </asp:Panel>
        </asp:Panel>
        <br/>
    </div>
