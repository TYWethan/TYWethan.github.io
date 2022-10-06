<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdmininsertA.aspx.cs" Inherits="自己做的.AdmininsertA" %>

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
            width: 114px;
        }
        .auto-style3 {
            width: 114px;
            height: 25px;
        }
        .auto-style4 {
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">管理员名：</td>
                <td>
                    <asp:TextBox ID="tbx_aname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">密码：</td>
                <td>
                    <asp:TextBox ID="tbx_pwd" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">电话：</td>
                <td>
                    <asp:TextBox ID="tbx_tel" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="btn_add" runat="server" OnClick="btn_add_Click" Text="添加" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="btn_reset" runat="server" OnClick="btn_reset_Click" Text="重置" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
