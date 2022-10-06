<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUpdateProduct.aspx.cs" Inherits="自己做的.AdminUpdateProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style15 {
            height: 20px;
            font-weight: bold;
            width: 205px;
        }
        .auto-style2 {
            height: 20px;
        }
        .auto-style1 {
            width: 100%;
            height: 379px;
            margin-bottom: 0px;
        }
        .auto-style16 {
            height: 20px;
            font-weight: bold;
            width: 195px;
        }
        .auto-style17 {
            height: 20px;
            font-weight: bold;
            width: 134px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DataList ID="DataList1" runat="server" OnCancelCommand="DataList1_CancelCommand" OnEditCommand="DataList1_EditCommand" OnUpdateCommand="DataList1_UpdateCommand" style="margin-right: 35px">
            <EditItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("photo") %>' Width="156px" />
                            <br />
                            <asp:Button ID="btn_sc" runat="server" OnClick="btn_sc_Click" Text="上传头像" />
                            <asp:FileUpload ID="FileUpload1" runat="server" style="margin-left: 88px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">饰品编号：</td>
                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("pid") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17"><b>饰品名称：</b></td>
                        <td>
                            <asp:TextBox ID="tbx_pname" runat="server" Text='<%# Eval("pname") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17"><b>所属游戏：</b></td>
                        <td>
                            <asp:TextBox ID="tbx_writer" runat="server" Text='<%# Eval("author") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17"><b>饰品类型：</b></td>
                        <td>
                            <asp:TextBox ID="tbx_type" runat="server" Text='<%# Eval("type") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17"><b>发行活动：</b></td>
                        <td class="auto-style2">
                            <asp:TextBox ID="tbx_publisher" runat="server" Text='<%# Eval("publisher") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17"><b>发行时间：</b></td>
                        <td>
                            <asp:TextBox ID="tbx_ptime" runat="server" Text='<%# Eval("ptime") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17"><b>饰品价格：</b></td>
                        <td>
                            <asp:TextBox ID="tbx_price" runat="server" Text='<%# Eval("price") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">库存量：</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="tbx_nums" runat="server" Text='<%# Eval("pnums") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17"><b>销售量：</b></td>
                        <td>
                            <asp:TextBox ID="tbx_snums" runat="server" Text='<%# Eval("salenums") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17"><b>信息：</b></td>
                        <td>
                            <asp:TextBox ID="tbx_mess" runat="server" Height="71px" Text='<%# Eval("mess") %>' Width="163px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">
                            <asp:Button ID="btn_update" runat="server" CommandName="update" Text="保存" />
                        </td>
                        <td>
                            <asp:Button ID="btn_cancel" runat="server" CommandName="cancel" Text="取消" />
                        </td>
                    </tr>
                </table>
            </EditItemTemplate>
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("photo") %>' Width="156px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">饰品编号：</td>
                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("pid") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><b>饰品名称：</b></td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><b>所属游戏：</b></td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("author") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><b>饰品类型：</b></td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("type") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><b>发行活动：</b></td>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("publisher") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><b>发行时间：</b></td>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("ptime") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><b>饰品价格：</b></td>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("price") %>'></asp:Label>
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
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("salenums") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><b>信息：</b></td>
                        <td>
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("mess") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><b></b></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16" colspan="2">
                            <asp:Button ID="btn_edit" runat="server" CommandName="edit" Text="编辑" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    
    </div>
    </form>
</body>
</html>
