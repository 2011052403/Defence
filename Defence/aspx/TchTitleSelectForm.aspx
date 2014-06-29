<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TchTitleSelectForm.aspx.cs" Inherits="Defence.TchTitleSelectForm" %>
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
        <topwin:c_topwin runat="server" id="c_topwin13"/>
        <asp:Panel ID="m_tchTitleSelectPanel" runat="server" style="position: absolute; top: 241px; left: 302px; height: 396px; width: 885px;">
            <br />
            <asp:Table ID="Select_TchTitleSelectTable" runat="server" CellPadding="0" CellSpacing="0" HorizontalAlign="Center" >
                <asp:TableRow runat="server" HorizontalAlign="Center">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">选题编号</asp:TableCell>
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="270px">选题题目</asp:TableCell>
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">选题简介</asp:TableCell>
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">指导老师</asp:TableCell>
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="120px">专业</asp:TableCell>
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">已选学生</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" HorizontalAlign="Center">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">0001</asp:TableCell>
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="270px">论标点的重要性</asp:TableCell>
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">
                        <asp:LinkButton ID="Select_TchBriefLinkButton" runat="server">简介</asp:LinkButton></asp:TableCell>
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">陈老师</asp:TableCell>
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="120px">软件工程</asp:TableCell>
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">
                        <asp:LinkButton ID="Select_TchSelectedLinkButton" runat="server" OnClick="m_TchSelectedLinkButton_Click">已选</asp:LinkButton></asp:TableCell>
                </asp:TableRow>
            </asp:Table>

            <asp:Table ID="Select_TchSelectedStuTable" runat="server" style="position: absolute; top: 21px; left: 48px;" CellPadding="0" CellSpacing="0" Visible="False">
                <asp:TableRow runat="server" HorizontalAlign="Center">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">学号</asp:TableCell>
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">姓名</asp:TableCell>
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="250px">学院</asp:TableCell>
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">专业</asp:TableCell>
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">年级</asp:TableCell>
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="100px">班级</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="BackButton" runat="server" Text="返回选题表" OnClick="BackButton_Click" Visible="False" />
        </asp:Panel>
    </div>
    </form>
</body>
</html>
