<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admindeleteuser.aspx.cs" Inherits="自己做的.Admindeleteuser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="uid" ForeColor="Black" GridLines="Vertical" Height="265px" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting" PageSize="6" Width="878px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="uid" HeaderText="编号" />
                <asp:BoundField DataField="uname" HeaderText="用户名" />
                <asp:BoundField DataField="name" HeaderText="姓名" />
                <asp:BoundField DataField="password" HeaderText="密码" />
                <asp:BoundField DataField="address" HeaderText="地址" />
                <asp:BoundField DataField="tel" HeaderText="电话" />
                <asp:BoundField DataField="email" HeaderText="邮箱" />
                <asp:CommandField HeaderText="操作" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
