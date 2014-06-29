<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TchReportReviewForm.aspx.cs" Inherits="Defence.TchReportReviewForm" %>
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
        <topwin:c_topwin runat="server" id="c_topwin14"/>
        <asp:Panel ID="m_tchReportReviewPanel" runat="server" style="position: absolute; top: 241px; left: 302px; height: 396px; width: 885px;">
            <br />
            <asp:Table ID="Report_TchReviewTable" runat="server"  style="position: absolute; top: 21px; left: 48px;" CellPadding="0" CellSpacing="0">
                <asp:TableRow ID="TableRow1" runat="server" HorizontalAlign="Center">
                    <asp:TableCell ID="TableCell1" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">选题编号</asp:TableCell>
                    <asp:TableCell ID="TableCell2" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="300px">选题题目</asp:TableCell>
                    <asp:TableCell ID="TableCell3" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="110px">已提交学生</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow2" runat="server" HorizontalAlign="Center">
                    <asp:TableCell ID="TableCell4" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">0001</asp:TableCell>
                    <asp:TableCell ID="TableCell5" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="300px">论标题的重要性</asp:TableCell>
                    <asp:TableCell ID="TableCell6" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="110px">
                        <asp:LinkButton ID="Report_StuQuantityLinkButton" runat="server" OnClick="m_tchStuQuantityLinkButton_Click">5</asp:LinkButton></asp:TableCell>
                </asp:TableRow>
            </asp:Table>

            <asp:Table ID="Report_TchSubmitStuTable" runat="server" style="position: absolute; top: 21px; left: 30px;" CellPadding="0" CellSpacing="0" Visible="False">
                <asp:TableRow ID="TableRow3" runat="server" HorizontalAlign="Center">
                    <asp:TableCell ID="TableCell7" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">学号</asp:TableCell>
                    <asp:TableCell ID="TableCell8" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">姓名</asp:TableCell>
                    <asp:TableCell ID="TableCell9" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="250px">学院</asp:TableCell>
                    <asp:TableCell ID="TableCell10" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">专业</asp:TableCell>
                    <asp:TableCell ID="TableCell11" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">年级</asp:TableCell>
                    <asp:TableCell ID="TableCell12" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">班级</asp:TableCell>
                    <asp:TableCell ID="TableCell23" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">开题报告</asp:TableCell>
                    <asp:TableCell ID="TableCell13" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">教师反馈</asp:TableCell>
                    <asp:TableCell ID="TableCell14" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">是否通过</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow4" runat="server" HorizontalAlign="Center">
                    <asp:TableCell ID="TableCell15" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">20110523**</asp:TableCell>
                    <asp:TableCell ID="TableCell16" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">李**</asp:TableCell>
                    <asp:TableCell ID="TableCell17" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="250px">电气信息学院</asp:TableCell>
                    <asp:TableCell ID="TableCell18" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">软件工程</asp:TableCell>
                    <asp:TableCell ID="TableCell19" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">11级</asp:TableCell>
                    <asp:TableCell ID="TableCell20" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">一班</asp:TableCell>
                    <asp:TableCell ID="TableCell24" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">
                        <asp:LinkButton ID="Report_DownloadLinkButton" runat="server">下载</asp:LinkButton></asp:TableCell>
                    <asp:TableCell ID="TableCell21" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">
                        <asp:LinkButton ID="Report_CommentLinkButton" runat="server">点评</asp:LinkButton></asp:TableCell>
                    <asp:TableCell ID="TableCell22" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">是</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="BackButton" runat="server" Text="返回选题表" OnClick="BackButton_Click" Visible="False" />
        </asp:Panel>
    </div>
    </form>
</body>
</html>
