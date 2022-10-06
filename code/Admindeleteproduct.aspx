<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admindeleteproduct.aspx.cs" Inherits="自己做的.Admindeleteproduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="pid" ForeColor="Black" GridLines="None" Height="256px" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting" PageSize="6" Width="859px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="pid" HeaderText="商品编号" />
                <asp:BoundField DataField="pname" HeaderText="商品名" />
                <asp:BoundField DataField="author" HeaderText="游戏类型" />
                <asp:BoundField DataField="type" HeaderText="饰品类型" />
                <asp:BoundField DataField="publisher" HeaderText="发行活动" />
                <asp:BoundField DataField="pnums" HeaderText="库存" />
                <asp:BoundField DataField="salenums" HeaderText="出售量" />
                <asp:BoundField DataField="price" HeaderText="价格" />
                <asp:BoundField DataField="ptime" HeaderText="发行时间" />
                <asp:CommandField HeaderText="操作" ShowDeleteButton="True" />
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
    
    </div>
    </form>
</body>
</html>
