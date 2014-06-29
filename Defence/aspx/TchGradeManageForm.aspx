<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TchGradeManageForm.aspx.cs" Inherits="Defence.TchGradeManageForm" %>
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
        <topwin:c_topwin runat="server" id="c_topwin18"/>
        <asp:Panel ID="m_tchGradeManagePanel" runat="server" style="position: absolute; top: 241px; left: 302px; height: 396px; width: 885px;">
            <br />
            <asp:Table ID="Grade_QueryTable" runat="server" CellPadding="0" CellSpacing="0" HorizontalAlign="Center">
                <asp:TableRow ID="TableRow3" runat="server" HorizontalAlign="Center">
                    <asp:TableCell ID="TableCell23" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="200px">选题题目</asp:TableCell>
                    <asp:TableCell ID="TableCell7" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">学号</asp:TableCell>
                    <asp:TableCell ID="TableCell8" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">姓名</asp:TableCell>
                    <asp:TableCell ID="TableCell10" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">专业</asp:TableCell>
                    <asp:TableCell ID="TableCell11" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">年级</asp:TableCell>
                    <asp:TableCell ID="TableCell13" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="80px">论文成绩</asp:TableCell>
                    <asp:TableCell ID="TableCell14" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="80px">答辩成绩</asp:TableCell>
                    <asp:TableCell ID="TableCell1" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="80px">总成绩</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
