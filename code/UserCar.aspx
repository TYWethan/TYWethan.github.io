<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserCar.aspx.cs" Inherits="自己做的.UserCar" %>

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
            height: 20px;
            width: 88px;
        }
        .auto-style6 {
            width: 88px;
        }
        .auto-style7 {
            width: 88px;
            height: 39px;
        }
        .auto-style8 {
            height: 39px;
        }
        .auto-style9 {
            width: 88px;
            height: 64px;
        }
        .auto-style10 {
            height: 64px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td colspan="2">
                    请输入商品名：<asp:TextBox ID="tbx_p" runat="server"></asp:TextBox>
                    <asp:Button ID="brn_search" runat="server" OnClick="brn_search_Click" Text="搜索" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Height="199px" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting" PageSize="5" Width="771px" DataKeyNames="cid" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:BoundField DataField="cid" HeaderText="编号" />
                            <asp:BoundField DataField="uname" HeaderText="用户名" />
                            <asp:BoundField DataField="pid" HeaderText="商品编号" />
                            <asp:BoundField DataField="pname" HeaderText="商品名" />
                            <asp:BoundField DataField="price" HeaderText="价格" />
                            <asp:BoundField DataField="nums" HeaderText="数量" />
                            <asp:CommandField HeaderText="操作" ShowDeleteButton="True" />
                            <asp:CommandField HeaderText="操作" ShowSelectButton="True" />
                        </Columns>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">默认地址：<asp:TextBox ID="tbx_address" runat="server" Width="225px"></asp:TextBox>
                &nbsp;</td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style6">默认手机：<asp:TextBox ID="tbx_tel" runat="server" Width="220px"></asp:TextBox>
                </td>
                <td>商品名：<asp:TextBox ID="tbx_pname" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">用户名：<asp:TextBox ID="tbx_uname" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style8">商品编号：<asp:TextBox ID="tbx_pid" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">数量：<asp:TextBox ID="tbx_nums" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style10">价格：<asp:TextBox ID="tbx_price" runat="server"  ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="btn_buy" runat="server" Text="确认购买" OnClick="btn_buy_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
