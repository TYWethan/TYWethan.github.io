<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Userorderdetail.aspx.cs" Inherits="自己做的.Userorderdetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="255px" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="6" Width="725px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="编号" />
                <asp:BoundField DataField="oid" HeaderText="订单号" />
                <asp:BoundField DataField="uname" HeaderText="用户名" />
                <asp:BoundField DataField="pid" HeaderText="商品号" />
                <asp:BoundField DataField="pname" HeaderText="商品名" />
                <asp:BoundField DataField="price" HeaderText="价格" />
                <asp:BoundField DataField="nums" HeaderText="数量" />
                <asp:BoundField DataField="states" HeaderText="状态" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
