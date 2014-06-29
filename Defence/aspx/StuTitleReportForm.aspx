<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StuTitleReportForm.aspx.cs" Inherits="Defence.StuTitleReportForm" %>
<%@ Register TagPrefix="topwin" TagName="c_topwin" Src="/c_topwin.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #Report_BrowseTextBox {
            width: 418px;
        }
        .auto-style1 {
            width: 215px;
        }
        .auto-style2 {
            width: 289px;
        }
    </style>

    <link href="../css/StyleSheet1.css" rel="stylesheet" type="text/css" />

</head>

<body>
    <form id="form1" runat="server">
    <div style="position: absolute; top: -4px; left: -33px; height: 717px;">
        <topwin:c_topwin runat="server" id="c_topwin2"/>
        <asp:Panel ID="m_stuTitleReportPanel" runat="server" style="position: absolute; top: 225px; left: 397px; height: 475px; width: 710px;">
            &nbsp;&nbsp;<br /> 
            <br />
            &nbsp;<table style="width: 697px; height: 85px;" class="t2">
                <tr class="th">
                    <td class="auto-style1"><b>选题信息</b></td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">选题编号：</td>
                    <td class="auto-style2">
                        <asp:Label ID="m_Report_TitleIdLabel" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">选题题目：</td>
                    <td class="auto-style2">
                        <asp:Label ID="m_Report_TitleNameLabe1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">指导老师：</td>
                    <td class="auto-style2">
                        <asp:Label ID="m_Report_TitleAdviserLabel" runat="server"></asp:Label>
                    </td>
                </tr>
                
            </table>
            <br />
            <br />
            <b>提交开题报告</b><br /> 
            <br />
            <input type="file" runat="server" id="Report_BrowseTextBox"   />
            <br />
            <br />
            &nbsp;&nbsp;<br /> 备注：<br />
            &nbsp;&nbsp;<br /> <asp:TextBox ID="Report_RemarksTextBox" runat="server" TextMode="MultiLine" Height="85px" Width="688px"></asp:TextBox>&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;<div style="margin-left: 629px">
                <asp:Button ID="Report_SubmitButton" runat="server" class="xxx" OnClick="Report_SubmitButton_Click" style="height: 21px" Text="提交" Width="59px" />
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </asp:Panel>
    </div>
    </form>
</body>
</html>
