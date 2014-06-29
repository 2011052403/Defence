<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="c_topwin.ascx.cs" Inherits="Defence.c_topwin" %>

<link href="../css/BackgroundStyleSheet.css" rel="stylesheet" type="text/css">

<div style="position: absolute; top: 14px; left: 158px; height: 716px;">
        <asp:Image ID="m_topImage" runat="server" ImageUrl="~\images\top.png" BorderStyle="None" Height="162px" Width="1050px"/><br />
        <asp:Label ID="m_welcomeLabel" runat="server" Text="欢迎您    " Font-Size="10pt"></asp:Label>
        <asp:LinkButton ID="m_exitLinkButton" runat="server" OnClick="m_exitLinkButton_Click" Font-Size="10pt">退出</asp:LinkButton>
        <hr/>
        <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/image/gate1.png" Height="503px">
            <asp:Panel ID="m_buttonPanel" runat="server" Height="500px" Width="150px" Font-Size="13pt" CssClass="menu" BackImageUrl="~/image/menu.jpg">
                <br />
                <div style="height: 202px; margin-left: 7px">
                    <asp:ImageButton ID="m_stuTitleSelectButton" runat="server" Height="33px" ImageUrl="~\images\StuTitleSelect.png" Width="138px" OnClick="m_stuTitleSelectButton_Click1" />
                    <asp:ImageButton ID="m_stuTitleReportButton" runat="server" Height="33px" ImageUrl="~\images\StuTitleReport.png" Width="138px" OnClick="m_stuTitleReportButton_Click" />
                    <asp:ImageButton ID="m_stuPaperButton" runat="server" Height="33px" ImageUrl="~\images\StuPaper.png" Width="138px" OnClick="m_stuPaperButton_Click" />
                    <asp:ImageButton ID="m_onlineTeachButton" runat="server" Height="33px" ImageUrl="~\images\OnlineTeach.png" Width="138px" OnClick="m_onlineTeachButton_Click" />
                    <asp:ImageButton ID="m_stuDefenceButton" runat="server" Height="33px" ImageUrl="~\images\StuDefence.png" Width="138px" OnClick="m_stuDefenceButton_Click" />
                    <asp:ImageButton ID="m_stuGradeButton" runat="server" Height="33px" ImageUrl="~\images\StuGrade.png" Width="138px" OnClick="m_stuGradeButton_Click" />
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