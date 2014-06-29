<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StuTitleSelectForm3.aspx.cs" Inherits="Defence.StuTitleSelectForm3" %>

<%@ Register TagPrefix="topwin" TagName="c_topwin" Src="/c_topwin.ascx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .GridViewStyleSheet {
            margin-left: 17px;
        }
    </style>
</head>

<link href="../css/GridViewStyleSheet.css" rel="stylesheet" type="text/css" />
<link href="../css/GridViewStyleSheet2.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="../css/TableStyleSheet1.css">


<body>
    <form id="form1" runat="server">
        <div style="position: absolute; top: -4px; left: -33px; height: 717px;">
            <topwin:c_topwin runat="server" ID="c_topwin100" />
            <asp:Panel ID="m_stuTitleSelectPanel" runat="server" Style="position: absolute; top: 216px; left: 327px; height: 514px; width: 887px; margin-left: 0px;">
                &nbsp;<br />
                &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div style="height: 28px; margin-left: 20px">
                    &nbsp;
                <asp:Button ID="m_availableTitleButton" runat="server" OnClick="m_availableTitleButton_Click" Text="可选题目" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="m_myTitleButton" runat="server" OnClick="m_myTitleButton_Click" Text="我的选题" />
                </div>
                &nbsp;&nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
                <div style="padding: 15px; margin-left: 0px; height: 369px; margin-top: 0px;">

                    <div style="height: 340px; width: 835px; margin-left: 26px;" id="dvBody">

                        <asp:GridView ID="m_selectableePaperGridView" CssClass="t2" runat="server" Font-Size="10pt" Width="800px" BorderStyle="Groove" AutoGenerateColumns="False" Height="16px" OnRowDataBound="SelectedGridView_RowDataBound">

                            <FooterStyle CssClass="GridViewFooterStyle" />
                            <RowStyle CssClass="GridViewRowStyle" Height="15px" HorizontalAlign="Center" />
                            <SelectedRowStyle CssClass="GridViewSelectedRowStyle" />
                            <PagerStyle CssClass="GridViewPagerStyle" />
                            <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" />
                            <HeaderStyle CssClass="GridViewHeaderStyle1" Height="5px" />

                            <Columns>

                                <asp:BoundField DataField="学号" HeaderText="学号" ReadOnly="True" />
                                <asp:BoundField DataField="姓名" HeaderText="姓名" />
                                <asp:BoundField DataField="学院" HeaderText="学院" />
                                <asp:BoundField DataField="专业" HeaderText="专业" ReadOnly="True" />
                                <asp:BoundField DataField="选题编号" HeaderText="选题编号" />
                                <asp:BoundField DataField="选题题目" HeaderText="选题题目" />
                                <asp:BoundField DataField="指导老师" HeaderText="指导老师" />
                                <asp:BoundField DataField="选题状态" HeaderText="选题状态" />

                            </Columns>

                        </asp:GridView>
                    </div>
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
