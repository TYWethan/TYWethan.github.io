<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Userfunction.aspx.cs" Inherits="自己做的.Userfunction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TreeView ID="TreeView1" runat="server" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged">
            <Nodes>
                <asp:TreeNode NavigateUrl="~/UserMain.aspx" Target="mainFrame" Text="首页" Value="首页"></asp:TreeNode>
                <asp:TreeNode Text="留言功能" Value="留言功能">
                    <asp:TreeNode NavigateUrl="~/Useraddmessage.aspx" Target="mainFrame" Text="去留言" Value="去留言"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/Usermessage.aspx" Target="mainFrame" Text="查看留言" Value="查看留言"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="订单信息" Value="订单信息">
                    <asp:TreeNode Text="查看订单" Value="查看订单总表" NavigateUrl="~/Userorder.aspx" Target="mainFrame"></asp:TreeNode>
                    <asp:TreeNode Text="查看订单详情" Value="查看订单详情" NavigateUrl="~/Userorderdetail.aspx" Target="mainFrame"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Target="mainFrame" Text="购物车" Value="购物车" NavigateUrl="~/UserCar.aspx"></asp:TreeNode>
                <asp:TreeNode Text="退出系统" Value="退出系统"></asp:TreeNode>
            </Nodes>
        </asp:TreeView>
    
    </div>
    </form>
</body>
</html>
