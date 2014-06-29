<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LandForm.aspx.cs" Inherits="Defence.LandForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    
    <style type="text/css">
        .auto-style11 {
            height: 44px;
            width: 94px;
        }
        .auto-style24 {
            height: 29px;
            width: 94px;
        }
        .auto-style27 {
            height: 32px;
            width: 94px;
        }
        .auto-style30 {
            height: 25px;
            width: 94px;
        }
        .auto-style33 {
            height: 4px;
            width: 94px;
        }
        .auto-style34 {
            height: 29px;
            width: 103px;
        }
        .auto-style35 {
            height: 44px;
            width: 103px;
        }
        .auto-style36 {
            height: 32px;
            width: 103px;
        }
        .auto-style37 {
            height: 4px;
            width: 103px;
        }
        .auto-style38 {
            height: 25px;
            width: 103px;
        }
        </style>
    
</head>

    <script type="text/javascript">
        function onfocus1()
        {
            //alert("test");
            document.getElementById("m_failureLabel").innerHTML="";
        }
        </script>

    <link href="../css/LoginStyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../css/BackgroundStyleSheet.css" rel="stylesheet" type="text/css">
   <link rel="stylesheet" href="../css/TableStyleSheet1.css">

<body>
    <form id="form1" runat="server">
    <div style="position: absolute; top: 0px; left: 100px; height: 732px; margin-left: 2px; width: 1050px; "  class="backgound">
        <asp:Image ID="m_topImage" runat="server" ImageUrl="~\images\top.png" BorderStyle="None" Height="166px" Width="1050px"/><br />
        <hr/>
        <br />
        <br />
        <br />
        <div style="height: 24px; margin-top: 0px;">
        </div>
        <br />
        <div style="height: 367px; margin-top: 0px;">

        <div class=login_box style="padding: 10px; height: 256px; width: 424px; margin-left: 343px; margin-top: 3px;">
            <br />
            <br />
            <br />
            <br />
            <div style="height: 202px; margin-left: 20px; margin-top: 0px;">
&nbsp;&nbsp;<table style="width:95%; margin-left: 1px; height: 158px;">
                    <tr>
                        <td class="auto-style34">
            <asp:Label ID="m_IdLabel" runat="server" Text="登陆账号：" ForeColor="White"></asp:Label>
                        </td>
                        <td class="auto-style24">
            <asp:TextBox ID="m_IdTextBox" runat="server" Width="204px"  ></asp:TextBox>
                        
                    </tr>
                    <tr>
                        <td class="auto-style35">
                            <asp:Label ID="m_passwordLabel" runat="server" Text="密码：" ForeColor="White"></asp:Label>
                        </td>
                        <td class="auto-style11">
                            <asp:TextBox ID="m_pwdTextBox" runat="server" Height="19px" TextMode="Password" Width="204px"></asp:TextBox>
                       
                    </tr>
                    <tr>
                        <td class="auto-style36">
                            <asp:Label ID="m_identityLabel0" runat="server" ForeColor="White" Text="身份："></asp:Label>
                        </td>
                        <td class="auto-style27">
                            <asp:DropDownList ID="m_identityList" runat="server" AutoPostBack="True">
                                <asp:ListItem>学生</asp:ListItem>
                                <asp:ListItem>老师</asp:ListItem>
                                <asp:ListItem>管理员</asp:ListItem>
                            </asp:DropDownList>
                       
                    </tr>
                    <tr>
                        <td class="auto-style37"></td>
                        <td class="auto-style33">
                            <asp:Label ID="m_failureLabel" runat="server" ForeColor="Red"></asp:Label>
                     
                    </tr>
                    <tr>
                        <td class="auto-style38"></td>
                        <td class="auto-style30">
                            <div style="width: 109px; margin-left: 151px">  
                                <asp:Button ID="m_loginBtn" runat="server" OnClick="m_loginBtn_Click1" Text="登 陆" />
                            </div>
                            
                        </td>
                
                    </tr>
                </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
            </div>

        </div>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>

    </div>
    </form>
</body>
</html>
