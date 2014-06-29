<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="c_topwin_tch.ascx.cs" Inherits="Defence.c_topwin_tch" %>
<div style="position: absolute; top: 14px; left: 158px; height: 717px;">
        <asp:Image ID="m_topImage" runat="server" ImageUrl="~\images\top.png" BorderStyle="None" Height="175px" Width="1050px"/><br />
        <asp:Label ID="m_welcomeLabel" runat="server" Text="欢迎您    "></asp:Label>
        <asp:LinkButton ID="m_exitLinkButton" runat="server" OnClick="m_exitLinkButton_Click">退出</asp:LinkButton>
        <hr/>
        <br/>
        <asp:Panel ID="m_buttonPanel" runat="server" Height="230px" Width="139px">
            <asp:ImageButton ID="m_tchReleaseTitleButton" runat="server" ImageUrl="~\images\ReleaseTitle.png" Height="33px" Width="138px" /><br/>
            <asp:ImageButton ID="m_tchTitleSelectButton" runat="server" ImageUrl="~\images\StuTitleSelect.png" Height="33px" Width="138px" /><br/>
            <asp:ImageButton ID="m_tchReportReviewButton" runat="server" ImageUrl="~\images\ReportReview.png" Height="33px" Width="138px" /><br/>
            <asp:ImageButton ID="m_tchPaperReviewButton" runat="server" ImageUrl="~\images\PaperReview.png" Height="33px" Width="138px" /><br/>
            <asp:ImageButton ID="m_onlineTeachButton" runat="server" ImageUrl="~\images\OnlineTeach.png" Height="33px" Width="138px" /><br/>
            <asp:ImageButton ID="m_tchStuDefenceButton" runat="server" ImageUrl="~\images\StuDefence.png" Height="33px" Width="138px" /><br/>
            <asp:ImageButton ID="m_tchGradeManageButton" runat="server" ImageUrl="~\images\GradeManage.png" Height="33px" Width="138px" />
            <asp:ImageButton ID="m_tchAccountManageButton" runat="server" ImageUrl="~\images\AccountManage.png" Height="33px" Width="138px" />
        </asp:Panel>
    </div>