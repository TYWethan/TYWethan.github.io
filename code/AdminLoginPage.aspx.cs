using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using Bussiness;

namespace 自己做的
{
    public partial class AdminLoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            if (tbx_admin.Text == "" || tbx_pwd.Text == "")
            {
                Response.Write("<script>alert('请填写完整登录信息！')</script>");
            }
            else
            {
                Entity.Eadmin t = new Eadmin();
                t.Aname = tbx_admin.Text.Trim();
                t.Password = tbx_pwd.Text.Trim();

                int count = Bussiness.Badmin.AdminAndPWD(t);
                if (count > 0)
                {
                    Session["admin"] = tbx_admin.Text.Trim();
                    Response.Write("<script>alert('登录成功'),location.href='Adminframeset.aspx'</script>");
                }
                else
                {
                    Response.Write("<script>alert('管理员名和密码不匹配，请重新输入！')</script>");
                }
            }
        }
    }
}