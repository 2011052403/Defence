<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TchStuDefenceForm.aspx.cs" Inherits="Defence.TchStuDefenceForm" %>
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
        <topwin:c_topwin runat="server" id="c_topwin17"/>
        <asp:Panel ID="m_tchStuDefencePanel" runat="server" style="position: absolute; top: 241px; left: 302px; height: 396px; width: 885px;">
            &nbsp;&nbsp;<asp:Button ID="Tch_DefenceNoticeButton" runat="server" Text="发布答辩通知" OnClick="Tch_DefenceNoticeButton_Click" />
            &nbsp;<asp:Button ID="Tch_DefenceGradeButton" runat="server" Text="答辩成绩" OnClick="Tch_DefenceGrade_Click" />
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" Height="333px">
                &nbsp;&nbsp;选题：&nbsp;&nbsp;<asp:DropDownList ID="DefenceNameDropDownList" runat="server" AutoPostBack="True" Height="16px" Width="235px"></asp:DropDownList>
                <br /> 
                <br /> 
                &nbsp;&nbsp;答辩时间：<asp:TextBox ID="Defence_TimeTextBox" runat="server" Width="225px"></asp:TextBox>
                <br /> 
                <br /> 
                &nbsp;&nbsp;答辩地点：<asp:TextBox ID="Defence_PlaceTextBox" runat="server" Width="224px"></asp:TextBox>
                <br /> 
                <br /> 
                &nbsp;&nbsp;<asp:Button ID="Defence_ReleaseButton" runat="server" Text="发布通知" />
            </asp:Panel>

            <asp:Panel ID="Panel2" runat="server" style="position: absolute; top: 28px;" Height="333px" Width="880px" Visible ="false">
                <asp:Table ID="Defence_TchReviewTable" runat="server"  style="position: absolute; top: 21px; left: 48px;" CellPadding="0" CellSpacing="0">
                <asp:TableRow ID="TableRow1" runat="server" HorizontalAlign="Center">
                    <asp:TableCell ID="TableCell1" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">选题编号</asp:TableCell>
                    <asp:TableCell ID="TableCell2" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="300px">选题题目</asp:TableCell>
                    <asp:TableCell ID="TableCell3" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="110px">答辩录分</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow2" runat="server" HorizontalAlign="Center">
                    <asp:TableCell ID="TableCell4" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">0001</asp:TableCell>
                    <asp:TableCell ID="TableCell5" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="300px">论标题的重要性</asp:TableCell>
                    <asp:TableCell ID="TableCell6" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="110px">
                        <asp:LinkButton ID="Defence_ReviewLinkButton" runat="server" OnClick="Defence_ReviewLinkButton_Click">录分</asp:LinkButton></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;学号：<asp:Label ID="Defence_StuIdLabel" runat="server" Text="学号Label"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;姓名：<asp:Label ID="Defence_StuNameLabel" runat="server" Text="姓名Label"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;学院：<asp:Label ID="Defence_StuCollegeLabel" runat="server" Text="学院Label"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;年级：<asp:Label ID="Defence_StuGradeLabel" runat="server" Text="年级Label"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;班级：<asp:Label ID="Defence_StuClassLabel" runat="server" Text="班级Label"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;老师评语：
            <br />
            <br />
            &nbsp;&nbsp;<asp:TextBox ID="Defence_ReviewTextBox" runat="server" TextMode="MultiLine" Height="89px" Width="323px"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;成绩：<asp:TextBox ID="Defence_GradeTextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;<asp:Button ID="Defence_GradeSubmitButton" runat="server" Text="确定" OnClick="Defence_GradeSubmitButton_Click" />
            </asp:Panel>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
