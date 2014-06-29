<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OnlineTeachForm.aspx.cs" Inherits="Defence.OnlineTeachForm" %>
<%@ Register TagPrefix="topwin" TagName="c_topwin" Src="/c_topwin.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="position: absolute; top: -4px; left: -33px; height: 717px;">
        <topwin:c_topwin runat="server" id="c_topwin4"/>
        <asp:Panel ID="m_OnlineTeachPanel" runat="server" style="position: absolute; top: 241px; left: 302px; height: 396px; width: 885px;">

        </asp:Panel>
    </div>
    </form>
</body>
</html>
