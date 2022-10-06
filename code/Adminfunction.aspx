<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminfunction.aspx.cs" Inherits="自己做的.Adminfunction" %>

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
                <asp:TreeNode Text="商品管理" Value="商品管理">
                    <asp:TreeNode NavigateUrl="~/AdminAddproduct.aspx" Target="mainFrame" Text="添加商品" Value="添加商品"></asp:TreeNode>
                    <asp:TreeNode Target="mainFrame" Text="更新商品" Value="更新商品" NavigateUrl="~/AdminshowP.aspx"></asp:TreeNode>
                    <asp:TreeNode Target="mainFrame" Text="删除商品" Value="删除商品" NavigateUrl="~/Admindeleteproduct.aspx"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="管理员管理" Value="管理员管理">
                    <asp:TreeNode Target="mainFrame" Text="添加管理员" Value="添加管理员" NavigateUrl="~/AdmininsertA.aspx"></asp:TreeNode>
                    <asp:TreeNode Target="mainFrame" Text="删除管理员" Value="删除管理员" NavigateUrl="~/AdmindeleteA.aspx"></asp:TreeNode>
                    <asp:TreeNode Target="mainFrame" Text="修改管理员" Value="修改管理员" NavigateUrl="~/AdminupdateA.aspx"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="用户管理" Value="用户管理">
                    <asp:TreeNode Target="mainFrame" Text="删除用户" Value="删除用户" NavigateUrl="~/Admindeleteuser.aspx"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="留言管理" Value="留言管理">
                    <asp:TreeNode Target="mainFrame" Text="删除留言" Value="删除留言" NavigateUrl="~/Admindeletemess.aspx"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="订单管理" Value="订单管理">
                    <asp:TreeNode Target="mainFrame" Text="删除订单" Value="删除订单" NavigateUrl="~/AdmindeleteorderD.aspx"></asp:TreeNode>
                    <asp:TreeNode Target="mainFrame" Text="修改订单" Value="修改订单" NavigateUrl="~/AdmindeleteorderD.aspx"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="退出系统" Value="退出系统"></asp:TreeNode>
            </Nodes>
        </asp:TreeView>
    
    </div>
    </form>
</body>
</html>
