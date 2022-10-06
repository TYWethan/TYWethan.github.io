<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Useraddmessage.aspx.cs" Inherits="自己做的.Useraddmessage" %>

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
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        &nbsp;<table class="auto-style1">
            <tr>
                <td class="auto-style2">留言标题：</td>
                <td>
                    <asp:TextBox ID="tbx_title" runat="server"></asp:TextBox>
                    不能为空</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">留言内容：</td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:TextBox ID="tbx_content" runat="server" Height="97px" style="margin-left: 0px" Width="245px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="btn_publish" runat="server" OnClick="btn_publish_Click" Text="发表" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
