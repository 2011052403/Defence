<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StuDefenceForm.aspx.cs" Inherits="Defence.StuDefenceForm" %>
<%@ Register TagPrefix="topwin" TagName="c_topwin" Src="/c_topwin.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">



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
        .auto-style4 {
            width: 447px;
        }
        .auto-style2 {
            width: 202px;
        }
        .auto-style5 {
            width: 202px;
            height: 20px;
        }
        .auto-style6 {
            width: 447px;
            height: 20px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="position: absolute; top: -4px; left: -33px; height: 717px;">
        <topwin:c_topwin runat="server" id="c_topwin5"/>
        <asp:Panel ID="m_stuDefencePanel" runat="server" style="position: absolute; top: 264px; left: 413px; height: 344px; width: 773px;">
            &nbsp;&nbsp;<br />
            <br />
            <table class="t2" style="width:680px;">
                <tr class="th">
                    <td>答辩信息</td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style5">论文题目：</td>
                    <td class="auto-style6">
                        <asp:Label ID="m_Defence_TitleNameLabel" runat="server" Text="论文题目Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">答辩时间：</td>
                    <td class="auto-style4">
                        <asp:Label ID="m_Defence_TimeLabel" runat="server" Text="答辩时间Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">答辩地点：</td>
                    <td class="auto-style4">
                        <asp:Label ID="m_Defence_PlaceLabel" runat="server" Text="答辩地点Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">答辩成绩：</td>
                    <td class="auto-style4">
                        <asp:Label ID="m_Defence_GradeLabel" runat="server" Text="答辩成绩Label"></asp:Label>
                    </td>
                </tr>
            </table>
           
        </asp:Panel>
    </div>
    </form>
</body>
</html>
