<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StuPaperForm.aspx.cs" Inherits="Defence.StuPaperForm" %>
<%@ Register TagPrefix="topwin" TagName="c_topwin" Src="/c_topwin.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #Paper_BrowseTextBox {
            width: 363px;
        }
    

table.t2{
    border:1px solid #9db3c5;
    color:#666;
}
table.t2 tr{
    background-color:#e8f3fd;
}

.th {
    background-image: url(../image/th_bg2.gif);
    background-repeat:repeat-x;
    height:30px;
    color:#fff;
}


table.t2 td{
    border:1px dotted #cad9ea;
    padding:0 2px 0;
}
        .auto-style1 {
            width: 215px;
        }
        #Report_BrowseTextBox {
            width: 418px;
        }
        .auto-style2 {
            width: 289px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="position: absolute; top: -4px; left: -33px; height: 717px;">
        <topwin:c_topwin runat="server" id="c_topwin3"/>
    </div>
        <asp:Panel ID="m_stuTitleReportPanel" runat="server" style="position: absolute; top: 214px; left: 361px; height: 475px; width: 701px;">
            &nbsp;&nbsp;<br /> 
            <br />
            &nbsp;<table style="width: 651px; height: 85px;" class="t2">
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
            <b>提交论文</b><br /> 
            <br />
            <input type="file" runat="server" id="m_Paper_BrowseTextBox"   />
            <br />
            <br />
            &nbsp;&nbsp;<br /> 备注：<br />
            &nbsp;&nbsp;<br /> <asp:TextBox ID="m_Paper_RemarksTextBox" runat="server" TextMode="MultiLine" Height="85px" Width="654px"></asp:TextBox>&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;<div style="margin-left: 575px">
                <asp:Button ID="m_Paper_SubmitButton" runat="server" class="xxx" OnClick="Report_SubmitButton_Click" style="margin-left: 0px;" Text="提交" Width="80px" />
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </asp:Panel>
    </form>
</body>
</html>
