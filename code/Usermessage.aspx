<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usermessage.aspx.cs" Inherits="自己做的.Usermessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style5 {
            width: 84px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5">编号：</td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("mid") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">标题：</td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("title") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">留言信息：</td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("mess") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">用户名：</td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("uname") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">发表时间：</td>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("messDate") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    
    </div>
    </form>
</body>
</html>
