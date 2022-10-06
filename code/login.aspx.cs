using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bussiness;
using Entity;

namespace 自己做的
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_reset_Click(object sender, EventArgs e)
        {
            this.tbx_uname.Text  = "";
            this.tbx_password.Text  = "";
        }

        protected void btn_quit_Click(object sender, EventArgs e)
        {
            Response.Write("<script>close()</script>");
        }

        protected void btn_zhuce_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('欢迎进入注册界面！');window.location.href ='UserRegister.aspx'</script>");
        }

        protected void btn_admin_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('欢迎进入管理员登录界面！');window.location.href ='AdminLoginPage.aspx'</script>");
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {

            if (this.tbx_uname .Text.Trim() == "")
            {
                Response.Write("<script>alert('用户名不能为空！')</script>");
                return;
            }
            if (this.tbx_password.Text.Trim() == "")
            {
                Response.Write("<script>alert('密码不能为空！')</script>");
                return;
            }
           
            Entity.Euser t = new Euser() ;
            t.Uname  = this.tbx_uname .Text.Trim();
            t.Password = this.tbx_password.Text.Trim();
           int i = Bussiness.Buser.UserAndPWD(t);
            
            if (i>0)
            {
                Session["user"] = tbx_uname . Text.Trim();
                Response.Write("<script>alert('欢迎进入用户界面！');window.location.href ='Userframeset.aspx'</script>");
              
            }
            
                 
         else 
            {


                Response.Write("<script>alert('用户名密码错误，请重新输入！')</script>");
            }
        } 
    }
}