<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAddproduct.aspx.cs" Inherits="自己做的.AdminAddproduct" %>

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
            height: 20px;
        }
        .auto-style3 {
            width: 101px;
        }
        .auto-style4 {
            height: 20px;
            width: 101px;
        }
        .auto-style5 {
            width: 101px;
            height: 64px;
        }
        .auto-style6 {
            height: 64px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">饰品名：</td>
                <td>
                    <asp:TextBox ID="tbx_pname" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">图片：</td>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="112px" Width="117px" />
                    <asp:FileUpload ID="ful_image" runat="server" />
                    <asp:Button ID="btn_upload" runat="server" OnClick="btn_upload_Click" Text="上传" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">游戏类型：</td>
                <td>
                    <asp:TextBox ID="tbx_writer" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">饰品类型：</td>
                <td>
                    <asp:TextBox ID="tbx_type" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">发行活动：</td>
                <td>
                    <asp:TextBox ID="tbx_publisher" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">发行时间：</td>
                <td>
                    <asp:TextBox ID="tbx_time" runat="server"></asp:TextBox>
                    例：2010年1月</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">价格：</td>
                <td>
                    <asp:TextBox ID="tbx_price" runat="server"></asp:TextBox>
                    输入数字</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">简介：</td>
                <td class="auto-style6">
                    <asp:TextBox ID="tbx_mess" runat="server" Height="54px"></asp:TextBox>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style3">库存量：</td>
                <td>
                    <asp:TextBox ID="tbx_nums" runat="server"></asp:TextBox>
                    输入数字</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">销售量：</td>
                <td class="auto-style2">
                    <asp:TextBox ID="tbx_snums" runat="server"></asp:TextBox>
                    输入数字</td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="btn_add" runat="server" OnClick="btn_add_Click" Text="添加" />
                </td>
                <td>
                    <asp:Button ID="btn_reset" runat="server" OnClick="btn_reset_Click" Text="清空" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
