<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StuTitleSelectForm1.aspx.cs" Inherits="Defence.StuTitleSelectForm" %>

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

     

    <script type="text/javascript">
        function init() {
            var all = document.getElementById("<%=m_selectableePaperGridView.ClientID%>");//把GridView的值传给all
            var title = all.cloneNode(true)//all再复制给title
            for (i = title.rows.length - 1; i > 0; i--)//把title中内容全部删除,只留第一行,也就是标题
                title.deleteRow(i)
            all.deleteRow(0)//GridView中第一行(标题)删除,也就只有内容了
            div_title.appendChild(title) //标题给div
        }
        window.onload = init
    </script>


</head>


<link href="../css/GridViewStyleSheet2.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="../css/TableStyleSheet1.css">



<body>
    <form id="form1" runat="server">
        <div style="position: absolute; top: -4px; left: -33px; height: 717px;">
            <topwin:c_topwin runat="server" ID="c_topwin100" />
            <asp:Panel ID="m_stuTitleSelectPanel" runat="server" Style="position: absolute; top: 216px; left: 340px; height: 514px; width: 887px; margin-left: 0px;">
                &nbsp;<br />
                &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div style="height: 28px; margin-left: 20px">
                    &nbsp;<asp:Button ID="m_availableTitleButton" runat="server" OnClick="m_availableTitleButton_Click" Text="可选题目" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="m_myTitleButton" runat="server" OnClick="m_myTitleButton_Click" Text="我的选题" />
                </div>
                &nbsp;&nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
                <div style="padding: 15px; margin-left: 0px; height: 369px; margin-top: 0px;">

                    <div style="margin-left: 1px; height: 31px; width: 790px" id="div_title" class="th"></div>

                    <div style="overflow-y: scroll; height: 340px; width: 820px; margin-left: 0px;" id="dvBody">

                        <asp:GridView ID="m_selectableePaperGridView" CssClass="t2" runat="server" Font-Size="10pt" Width="795px" BorderStyle="Groove" AutoGenerateColumns="False" Height="16px"  OnSelectedIndexChanged="m_selectableePaperGridView_SelectedIndexChanged">

                            <FooterStyle CssClass="GridViewFooterStyle" />
                            <RowStyle CssClass="a1" Height="15px" HorizontalAlign="Center" />
                            <SelectedRowStyle CssClass="GridViewSelectedRowStyle" />
                            <PagerStyle CssClass="GridViewPagerStyle" />
                            <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" />
                            <HeaderStyle CssClass="th" Height="5px" />

                            <Columns>

                              

                                <asp:TemplateField HeaderText="选题">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" OnClientClick="return confirm('您确定要选择吗?');"
                                            CommandName="Select" Text="选择"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:BoundField DataField="选题编号" HeaderText="选题编号" ReadOnly="True" />
                                <asp:BoundField DataField="选题题目" HeaderText="选题题目" />
                                <asp:BoundField DataField="指导老师" HeaderText="指导老师" />
                                <asp:BoundField DataField="专业" HeaderText="专业" />
                                

                                <asp:TemplateField HeaderText="选题简介">
                                    <ItemTemplate>
                                        <a href="StuTitleSelectForm2.aspx?P_id=<%#Eval("选题编号")%>">查看</a>
                                    </ItemTemplate>
                                </asp:TemplateField>

                            </Columns>

                        </asp:GridView>
                    </div>
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
