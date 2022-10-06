<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProductDetail.aspx.cs" Inherits="自己做的.UserProductDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 379px;
            margin-bottom: 0px;
        }
        .auto-style2 {
            height: 20px;
        }
        .auto-style15 {
            height: 20px;
            font-weight: bold;
            width: 205px;
        }
        .auto-style16 {
        }
        .auto-style17 {
            width: 205px;
            height: 35px;
        }
        .auto-style18 {
            height: 35px;
        }
        .auto-style19 {
            width: 205px;
            height: 26px;
        }
        .auto-style20 {
            height: 26px;
        }
        .auto-style21 {
            width: 88px;
            height: 31px;
        }
        .auto-style22 {
            height: 31px;
        }
        .auto-style23 {
            width: 88px;
            height: 28px;
        }
        .auto-style24 {
            height: 28px;
        }
        .auto-style25 {
            width: 88px;
            height: 35px;
        }
        .auto-style26 {
            width: 88px;
            height: 26px;
        }
        .auto-style27 {
            width: 88px;
            height: 153px;
        }
        .auto-style28 {
            height: 153px;
        }
        .auto-style29 {
            height: 22px;
        }
        .auto-style30 {
            height: 21px;
            font-weight: bold;
            width: 205px;
        }
        .auto-style31 {
            height: 21px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="1" RepeatDirection="Horizontal" style="margin-right: 35px" OnEditCommand="DataList1_EditCommand" OnCancelCommand="DataList1_CancelCommand" OnUpdateCommand="DataList1_UpdateCommand" >
            <EditItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("photo") %>' Width="156px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30">饰品编号：</td>
                        <td class="auto-style31">
                            <asp:Label ID="lbl_pid" runat="server" Text='<%# Eval("pid") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><b>饰品名称：</b></td>
                        <td>
                            <asp:Label ID="lbl_pname" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><b>所属游戏：</b></td>
                        <td>
                            <asp:Label ID="lbl_wr" runat="server" Text='<%# Eval("author") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><b>饰品类型：</b></td>
                        <td>
                            <asp:Label ID="lbl_type" runat="server" Text='<%# Eval("type") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><b>发行活动：</b></td>
                        <td>
                            <asp:Label ID="lbl_pub" runat="server" Text='<%# Eval("publisher") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><b>发行时间：</b></td>
                        <td>
                            <asp:Label ID="lbl_time" runat="server" Text='<%# Eval("ptime") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><b>饰品价格：</b></td>
                        <td>
                            <asp:Label ID="lbl_price" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">库存量：</td>
                        <td class="auto-style2">
                            <asp:Label ID="lbl_pnums" runat="server" Text='<%# Eval("pnums") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><b>销售量：</b></td>
                        <td>
                            <asp:Label ID="lbl_snums" runat="server" Text='<%# Eval("salenums") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><b>信息：</b></td>
                        <td>
                            <asp:Label ID="lbl_mess" runat="server" Text='<%# Eval("mess") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style21"><b>购买数量：</b></td>
                        <td class="auto-style22">
                            <asp:TextBox ID="tbx_nums" runat="server" Height="16px" style="margin-left: 13px" Width="35px"></asp:TextBox>
                            &nbsp;请输入大于0的数字</td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><b>
                            <asp:Button ID="btn_add" runat="server" CommandName="update" Height="18px"  style="margin-left: 10px" Text="加入购物车" Width="73px" />
                            </b></td>
                        <td>
                            <asp:Button ID="btn_cancel" runat="server" CommandName="cancel" Text="取消" />
                        </td>
                    </tr>
                </table>
            </EditItemTemplate>
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td colspan="3" style="text-align: center">
                            <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("photo") %>' Width="156px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">饰品编号：</td>
                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("pid") %>'></asp:Label>
                        </td>
                        <td class="auto-style2"></td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><b>饰品名称：</b></td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><b>所属游戏：</b></td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("author") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><b>饰品类型：</b></td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("type") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><b>发行活动：</b></td>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("publisher") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><b>发行时间：</b></td>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("ptime") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><b>饰品价格：</b></td>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style15">库存量：</td>
                        <td class="auto-style2">
                            <asp:Label ID="lbl_pnums" runat="server" Text='<%# Eval("pnums") %>'></asp:Label>
                        </td>
                        <td class="auto-style2"></td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><b>销售量：</b></td>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("salenums") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><b>信息：</b></td>
                        <td>
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("mess") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><b></b></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16" colspan="2">
                            <asp:Button ID="btn_Edit" runat="server" CommandName="edit" Text="购物车入口" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style18"></td>
                    </tr>
                    <tr>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style20">&nbsp;</td>
                        <td class="auto-style20"></td>
                    </tr>
                    <tr>
                        <td class="auto-style16">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td colspan="2" style="text-align: center">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style15">&nbsp;</td>
                        <td class="auto-style2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style15">&nbsp;</td>
                        <td class="auto-style2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style29">&nbsp;</td>
                        <td class="auto-style29">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style21">&nbsp;</td>
                        <td class="auto-style22">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style25">&nbsp;</td>
                        <td class="auto-style18">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style26">&nbsp;</td>
                        <td class="auto-style20">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </SelectedItemTemplate>
        </asp:DataList>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style22">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style21">&nbsp;</td>
                            <td class="auto-style22">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style23">&nbsp;</td>
                            <td class="auto-style24">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style25">&nbsp;</td>
                            <td class="auto-style18">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style26">&nbsp;</td>
                            <td class="auto-style20">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style27">&nbsp;</td>
                            <td class="auto-style28"></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style24">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style27">
                    &nbsp;</td>
                <td class="auto-style28"></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
