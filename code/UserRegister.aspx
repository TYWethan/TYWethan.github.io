<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegister.aspx.cs" Inherits="自己做的.UserRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 167px;
            text-align: right;
        }
        .auto-style3 {
            width: 167px;
            height: 20px;
            text-align: right;
        }
        .auto-style4 {
            height: 20px;
        }
        .auto-style5 {
            width: 190px;
        }
        .auto-style6 {
            height: 20px;
            width: 190px;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            width: 190px;
            text-align: center;
        }
        .auto-style9 {
            width: 167px;
            text-align: center;
        }
        .auto-style10 {
            height: 20px;
            width: 190px;
            text-align: center;
        }
        .auto-style12 {
            width: 167px;
            text-align: right;
        }
        .auto-style13 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style12">用户名：</td>
                <td class="auto-style8">
                    <asp:TextBox ID="tbx_uname" runat="server" Height="16px" Width="175px"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:Label ID="check" runat="server"></asp:Label>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">检测昵称</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">姓名：</td>
                <td class="auto-style8">
                    <asp:TextBox ID="tbx_name" runat="server" Height="16px" Width="175px"></asp:TextBox>
                </td>
                <td class="auto-style13">请输入真实姓名</td>
            </tr>
            <tr>
                <td class="auto-style3">密码：</td>
                <td class="auto-style10">
                    <asp:TextBox ID="tbx_code" runat="server" Height="16px" Width="175px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style12">确认密码：</td>
                <td class="auto-style5">
                    <asp:TextBox ID="tbx_againcode" runat="server" Height="16px" Width="175px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">地址：</td>
                <td class="auto-style5">
                    <asp:TextBox ID="tbx_address" runat="server" Height="16px" Width="175px"></asp:TextBox>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">电话：</td>
                <td class="auto-style6">
                    <asp:TextBox ID="tbx_tel" runat="server" Height="16px" Width="175px"></asp:TextBox>
                </td>
                <td class="auto-style4">请输入数字</td>
            </tr>
            <tr>
                <td class="auto-style3">邮箱：</td>
                <td class="auto-style6">
                    <asp:TextBox ID="tbx_email" runat="server" Height="16px" Width="175px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbx_email" ErrorMessage="邮箱格式输入错误" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" style="font-weight: 700"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btn_register" runat="server" OnClick="btn_register_Click" Text="注册" style="text-align: right" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="btn_reset" runat="server" OnClick="btn_reset_Click" Text="重置" />
                </td>
                <td>
                    <asp:Button ID="btn_back" runat="server" OnClick="btn_back_Click" Text="返回" />
                </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
