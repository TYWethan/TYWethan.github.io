<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminupdateA.aspx.cs" Inherits="自己做的.AdminupdateA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 111%;
            height: 107px;
        }
        .auto-style3 {
            width: 108px;
        }
        .auto-style4 {
            width: 83px;
            height: 20px;
        }
        .auto-style5 {
            height: 20px;
        }
        .auto-style6 {
            width: 108px;
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DataList ID="DataList1" runat="server" OnCancelCommand="DataList1_CancelCommand" OnEditCommand="DataList1_EditCommand" OnUpdateCommand="DataList1_UpdateCommand" RepeatColumns="4" RepeatDirection="Horizontal">
            <EditItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">编号：</td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("aid") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">管理员名：</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="tbx_aname" runat="server" style="margin-left: 20px" Text='<%# Eval("aname") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">电话：</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="tbx_tel" runat="server" Text='<%# Eval("tel") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">密码：</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="tbx_pwd" runat="server" Text='<%# Eval("password") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:Button ID="btn_update" runat="server" CommandName="update" Text="保存" />
                        </td>
                        <td class="auto-style5">
                            <asp:Button ID="btn_cancel" runat="server" CommandName="cancel" Text="取消" />
                        </td>
                    </tr>
                </table>
            </EditItemTemplate>
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">编号：</td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("aid") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">管理员名：</td>
                        <td class="auto-style5">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("aname") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">电话：</td>
                        <td class="auto-style5">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("tel") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">密码：</td>
                        <td class="auto-style5">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("password") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="btn_edit" runat="server" CommandName="edit" Text="编辑" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    
    </div>
    </form>
</body>
</html>
