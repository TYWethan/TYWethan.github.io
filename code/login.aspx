<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="自己做的.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head   runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        {
            background-color: #000000;
        }
        .auto-style1 {
            width: 100%;
            height: 410px;
        }
        .auto-style2 {
            height: 20px;
            text-align: left;
        }
        .auto-style3 {
            height: 20px;
            width: 117px;
            text-align: right;
        }
        .auto-style4 {
            width: 117px;
            text-align: center;
        }
        .auto-style5 {
            height: 20px;
            width: 261px;
            text-align: center;
        }
        .auto-style6 {
            width: 261px;
            text-align: center;
        }
        .auto-style7 {
            text-align: left;
        }
        .auto-style8 {
            width: 261px;
            height: 27px;
        }
        .auto-style9 {
            width: 117px;
            text-align: right;
            height: 27px;
        }
        .auto-style10 {
            text-align: left;
            height: 27px;
        }
        .auto-style11 {
            width: 117px;
            text-align: right;
        }
        .auto-style12 {
            height: 20px;
        }
    </style>
</head>
<body>
   
    <form id="form1" runat="server">
    <div style="border:#ff6100 1px solid">
    
    </div>
    
        <table class="auto-style1">
            <tr>
                <td colspan="3" style="text-align: center" class="auto-style12">登录请选择</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp; 用户名：</td>
                <td class="auto-style5">
                    <asp:TextBox ID="tbx_uname" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UserMain.aspx">抢先看商品！</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">密码：</td>
                <td class="auto-style6">
                    <asp:TextBox ID="tbx_password" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="btn_login" runat="server" OnClick="btn_login_Click" Text="登录" style="text-align: right" />
                </td>
                <td class="auto-style8">
&nbsp;<asp:Button ID="btn_reset" runat="server" OnClick="btn_reset_Click" Text="重置" />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="btn_zhuce" runat="server" OnClick="btn_zhuce_Click" Text="立即注册" style="text-align: left" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="btn_quit" runat="server" OnClick="btn_quit_Click" Text="退出" />
                </td>
                <td class="auto-style7">
                    <asp:Button ID="btn_admin" runat="server" OnClick="btn_admin_Click" Text="管理员登录入口" />
                </td>
            </tr>
        </table>
    
    </form>
</body>
</html>
