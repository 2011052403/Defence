<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TchPaperReviewForm.aspx.cs" Inherits="Defence.TchPaperReviewForm" %>
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
        <topwin:c_topwin runat="server" id="c_topwin15"/>
        <asp:Panel ID="m_tchPaperReviewPanel" runat="server" style="position: absolute; top: 241px; left: 302px; height: 487px; width: 885px;">
            <br />
            <asp:Table ID="Paper_TchReviewTable" runat="server"  style="position: absolute; top: 21px; left: 48px;" CellPadding="0" CellSpacing="0">
                <asp:TableRow ID="TableRow1" runat="server" HorizontalAlign="Center">
                    <asp:TableCell ID="TableCell1" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">选题编号</asp:TableCell>
                    <asp:TableCell ID="TableCell2" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="300px">论文题目</asp:TableCell>
                    <asp:TableCell ID="TableCell3" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="110px">教师反馈</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow2" runat="server" HorizontalAlign="Center">
                    <asp:TableCell ID="TableCell4" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">0001</asp:TableCell>
                    <asp:TableCell ID="TableCell5" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="300px">论标题的重要性</asp:TableCell>
                    <asp:TableCell ID="TableCell6" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="110px">
                        <asp:LinkButton ID="Paper_ReviewLinkButton" runat="server" OnClick="Paper_ReviewLinkButton_Click">审阅</asp:LinkButton></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;学号：<asp:Label ID="Paper_StuIdLabel" runat="server" Text="学号Label"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;姓名：<asp:Label ID="Paper_StuNameLabel" runat="server" Text="姓名Label"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;学院：<asp:Label ID="Paper_StuCollegeLabel" runat="server" Text="学院Label"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;年级：<asp:Label ID="Paper_StuGradeLabel" runat="server" Text="年级Label"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;班级：<asp:Label ID="Paper_StuClassLabel" runat="server" Text="班级Label"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;论文：<asp:Label ID="Paper_PaperNameLabel" runat="server" Text="论文名Label"></asp:Label>&nbsp;<asp:LinkButton ID="Paper_DownloadLinkButton" runat="server">下载</asp:LinkButton>
            <br />
            <br />
            &nbsp;&nbsp;老师评语：
            <br />
            <br />
            &nbsp;&nbsp;<asp:TextBox ID="Paper_ReviewTextBox" runat="server" TextMode="MultiLine" Height="89px" Width="323px"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;成绩：<asp:TextBox ID="Paper_GradeTextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;<asp:Button ID="Paper_GradeSubmitButton" runat="server" Text="确定" />
        </asp:Panel>
    </div>
    </form>
</body>
</html>
