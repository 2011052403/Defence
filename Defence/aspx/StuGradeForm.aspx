<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StuGradeForm.aspx.cs" Inherits="Defence.StuGradeForm" %>
<%@ Register TagPrefix="topwin" TagName="c_topwin" Src="/c_topwin.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 202px;
        }
        .auto-style4 {
            width: 447px;
        }
        .auto-style5 {
            width: 451px;
        }
    </style>
</head>

     <link href="../css/StyleSheet1.css" rel="stylesheet" type="text/css" />

<body>
    <form id="form1" runat="server">
    <div style="position: absolute; top: -4px; left: -33px; height: 717px;">
        <topwin:c_topwin runat="server" id="c_topwin6"/>
        <asp:Panel ID="m_stuGradePanel" runat="server" style="position: absolute; top: 255px; left: 414px; height: 304px; width: 680px; margin-left: 0px; margin-right: 0px; margin-top: 4px;">
            &nbsp;&nbsp;<table style="width:672px;" class="t2">
                <tr class="th">
                    <td >论文信息</td>
                    <td class="auto-style5">
                       
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">学号：</td>
                    <td class="auto-style5">
                        <asp:Label ID="m_Grade_StuIdLabel" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">姓名：</td>
                    <td class="auto-style5">
                        <asp:Label ID="m_Grade_StuNameLabe1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">论文编号：</td>
                    <td class="auto-style5">
                        <asp:Label ID="m_Grade_TitleIdLabel" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">论文题目：</td>
                    <td class="auto-style5">
                        <asp:Label ID="m_Grade_TitleNameLabel" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">指导老师：</td>
                    <td class="auto-style5">
                        <asp:Label ID="m_Grade_AdvisorLabel" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">论文成绩：</td>
                    <td class="auto-style5">
                        <asp:Label ID="m_Grade_PaperGradeLabel" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">答辩成绩：
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="m_Grade_DefenceGradeLabel" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">总成绩：</td>
                    <td class="auto-style5">
                        <asp:Label ID="m_Grade_TotalGradeLabel" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            &nbsp;&nbsp;<br />
            <br />
            &nbsp;&nbsp;<br />
            <br />
            &nbsp;&nbsp;<br />
            <br />
            &nbsp;&nbsp;<br />
            <br />
            &nbsp;&nbsp;<br />
            <br />
            &nbsp;&nbsp;<br />
            &nbsp;&nbsp;</asp:Panel>
    </div>
    </form>
</body>
</html>
