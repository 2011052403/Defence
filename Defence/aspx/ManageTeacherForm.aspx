<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageTeacherForm.aspx.cs" Inherits="Defence.aspx.ManagerTeacherForm"  %>

<%@ Register TagPrefix="topwin" TagName="c_topwin_manager" Src="/c_topwin_manager.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>

    <script type="text/javascript" src="../js/jquery-1.4.4.min.js"></script>
     <script type="text/javascript" src="../js/acol.control.select.js"></script>
     <link rel="stylesheet" href="../css/select.css" type="text/css" />


<link href="../css/GridViewStyleSheet2.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="../css/TableStyleSheet1.css">

<body>
    <form id="form1" runat="server">


        <topwin:c_topwin_manager runat="server" ID="c_topwin_manager1" />

        

        <div style="position:absolute; top: 226px; left: 382px; width: 836px;">

            <asp:DropDownList ID="m_searchDropDownList" runat="server">
                    <asp:ListItem>工号</asp:ListItem>
                    <asp:ListItem>姓名</asp:ListItem>
                </asp:DropDownList>
&nbsp;<asp:TextBox ID="m_searchTextBox"  runat="server"></asp:TextBox>

                   &nbsp;<asp:Button ID="m_searchButton" runat="server"  Text="查找" OnClick="OnSearch" />&nbsp;&nbsp;

                   <asp:Button ID="m_resetButton" runat="server"  Text="重置" OnClick="OnReset" /></td>
        &nbsp;&nbsp;
            <asp:Button ID="m_importButton" runat="server" OnClick="m_importButton_Click" Text="导入教师表格" />
            &nbsp;
            <asp:FileUpload ID="m_stuFileUpload" runat="server" />
&nbsp;
            </div>

        <div style="position:absolute; top: 279px; left: 804px; width: 417px;">
            <asp:Button ID="m_exportButton" runat="server" OnClick="m_exportButton_Click" Text="导出教师表格" />
            </div>

        

        <asp:GridView ID="m_teacherGridView" runat="server" CssClass="t2" style="position:absolute; top: 338px; left: 377px; width: 783px;" AllowPaging="True" OnPageIndexChanging="OnPageChange" AutoGenerateColumns="False" OnRowCancelingEdit="OnRowCanel" OnRowEditing="OnRowEditing" PageSize="12" OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" OnRowDataBound="OnRowDataBound">
                            <RowStyle CssClass="a1" Height="15px" HorizontalAlign="Center" />
                            <SelectedRowStyle CssClass="GridViewSelectedRowStyle" />
                            <PagerStyle CssClass="GridViewPagerStyle" />
                            <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" />
                            <HeaderStyle CssClass="th" Height="5px" />

            <Columns>

                <asp:BoundField DataField="工号" HeaderText="工号" ReadOnly="True" />
                <asp:BoundField DataField="密码" HeaderText="密码" />
                <asp:BoundField DataField="姓名" HeaderText="姓名" />
                <asp:BoundField DataField="学院" HeaderText="学院" />
                <asp:BoundField DataField="专业" HeaderText="专业" />
                <asp:BoundField DataField="部门" HeaderText="部门" />

                <asp:CommandField HeaderText="编辑" ShowEditButton="True" />

                <asp:TemplateField HeaderText="删除">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" OnClientClick="return confirm('您确定要删除选择该学生记录吗?');"
                            CommandName="Delete" Text="删除"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>

            <PagerTemplate>
                当前第:
                <asp:Label ID="LabelCurrentPage" runat="server" Text="<%# ((GridView)Container.NamingContainer).PageIndex + 1 %>"></asp:Label>
                页/共:
                <asp:Label ID="LabelPageCount" runat="server" Text="<%# ((GridView)Container.NamingContainer).PageCount %>"></asp:Label>
                页
                <asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" CommandName="Page"
                    Visible='<%#((GridView)Container.NamingContainer).PageIndex != 0 %>'>首页</asp:LinkButton>
                <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" CommandArgument="Prev"
                    CommandName="Page" Visible='<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>'>上一页</asp:LinkButton>
                <asp:LinkButton ID="LinkButtonNextPage" runat="server" CommandArgument="Next" CommandName="Page"
                    Visible='<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>'>下一页</asp:LinkButton>
                <asp:LinkButton ID="LinkButtonLastPage" runat="server" CommandArgument="Last" CommandName="Page"
                    Visible='<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>'>尾页</asp:LinkButton>
                转到第
                <asp:TextBox ID="txtNewPageIndex" runat="server" Width="20px" Text='<%# ((GridView)Container.Parent.Parent).PageIndex + 1 %>' />页
                <asp:LinkButton ID="btnGo" runat="server" CausesValidation="False" CommandArgument="-2"
                    CommandName="Page" Text="GO" />
            </PagerTemplate>
        </asp:GridView>




        <div>
        </div>
    </form>
</body>
</html>
