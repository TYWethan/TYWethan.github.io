<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserMain.aspx.cs" Inherits="自己做的.UserMain" %>

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
            width: 87px;
        }
        .auto-style3 {
            width: 106px;
            text-align: right;
        }
        .auto-style4 {
            width: 71px;
        }
        .auto-style5 {
            width: 206px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">商品名称：</td>
                <td class="auto-style4">
                    <asp:TextBox ID="tbx_pname" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:Button ID="btn_search" runat="server" Text="搜索" OnClick="btn_search_Click" />
                </td>
                <td>点击图片查看更多！</td>
            </tr>
            <tr>
                <td colspan="4" style="text-align: right">
                    <asp:DataList ID="ddl_product" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
                        <ItemTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td colspan="2" style="text-align: center">
                                        <asp:ImageButton ID="ImageButton1" runat="server" Height="111px" ImageUrl='<%# Eval("photo") %>' Width="119px" CommandArgument='<%# Eval("pid") %>' OnClick="ImageButton1_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">商品名称：</td>
                                    <td>
                                        <asp:Label ID="lbl_pname" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">商品单价：</td>
                                    <td>
                                        <asp:Label ID="lbl_price" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">销售数量：</td>
                                    <td>
                                        <asp:Label ID="lbl_num" runat="server" Text='<%# Eval("salenums") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:LinkButton ID="lbtn_pre" runat="server" CommandArgument="pre" OnClick="lbtn_Click">上一页</asp:LinkButton>
                </td>
                <td class="auto-style4">
                    <asp:LinkButton ID="lbtn_next" runat="server" CommandArgument="next" OnClick="lbtn_Click">下一页</asp:LinkButton>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="tbx_page" runat="server" style="text-align: center" Width="53px">1</asp:TextBox>
&nbsp;&nbsp;
                    <asp:Button ID="btn_go" runat="server" Text="跳转" OnClick="btn_go_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
