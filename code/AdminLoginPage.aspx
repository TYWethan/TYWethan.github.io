<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLoginPage.aspx.cs" Inherits="自己做的.AdminLoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            height: 20px;
        }
        .auto-style5 {
            width: 150px;
        }
        .auto-style6 {
            height: 20px;
            width: 150px;
        }
        .auto-style7 {
            width: 176px;
            text-align: right;
        }
        .auto-style8 {
            height: 20px;
            width: 176px;
        }
        .auto-style9 {
            height: 20px;
            width: 176px;
            text-align: right;
        }
        .auto-style10 {
            width: 176px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        管理员登录窗口<table class="auto-style1">
            <tr>
                <td class="auto-style10">管理员：</td>
                <td class="auto-style5">
                    <asp:TextBox ID="tbx_admin" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">密码：</td>
                <td class="auto-style6">
                    <asp:TextBox ID="tbx_pwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style6"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="btn_login" runat="server" OnClick="btn_login_Click" Text="登录" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="btn_back" runat="server" OnClick="btn_back_Click" Text="退出" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
