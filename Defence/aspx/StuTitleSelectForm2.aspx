<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StuTitleSelectForm2.aspx.cs" Inherits="Defence.StuTitleSelectForm2" %>

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

<link href="../css/GridViewStyleSheet2.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="../css/TableStyleSheet1.css">



<body>
    <form id="form1" runat="server">
        <div style="position: absolute; top: -4px; left: -33px; height: 717px;">
            <topwin:c_topwin runat="server" ID="c_topwin111" />
            <asp:Panel ID="m_stuTitleSelectPanel" runat="server" Style="position: absolute; top: 215px; left: 360px; height: 514px; width: 800px; margin-left: 0px;">
                &nbsp;<div style="height: 57px; margin-left: 6px">
                    &nbsp;
                    <br />
                    <br />
                    <asp:Button ID="m_retrunBtn" runat="server" OnClick="m_retrunBtn_Click" Text="返回" />
                </div>
                <br />
                <br />
                <br />
                <asp:GridView ID="m_introductionGridView" runat="server" Height="50px" Width="800px" CssClass="t2">

                    <FooterStyle CssClass="t2" />
                            <RowStyle CssClass="GridViewRowStyle" Height="15px" HorizontalAlign="Center" Font-Size="10pt" />
                            <SelectedRowStyle CssClass="GridViewSelectedRowStyle" />
                            <PagerStyle CssClass="GridViewPagerStyle" />
                            <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" />
                            <HeaderStyle CssClass="GridViewHeaderStyle1" Height="15px" />

                </asp:GridView>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
