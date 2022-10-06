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
    public partial class UserRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Entity.Euser t = new Euser();
           
           t.Uname = tbx_uname .Text .Trim ();


           int i = Bussiness.Buser.UnameIsExist(t);
           if (i > 0)
           {
               check .Text  = "该昵称已存在，请更换！";
           }
           else
           {
              check .Text  = "恭喜，昵称可以使用！";
           }
        }
        protected void btn_reset_Click(object sender, EventArgs e)
        {
            this.tbx_uname.Text = "";
            this.tbx_name.Text = "";
            this.tbx_code.Text = "";
            this.tbx_againcode.Text = "";
            this.tbx_address.Text = "";
            this.tbx_tel.Text = "";
            this.tbx_email.Text = "";
        }

        protected void btn_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void btn_register_Click(object sender, EventArgs e)
        {
            if (tbx_uname.Text == "" || tbx_name.Text == "" || tbx_code.Text == "" || tbx_againcode.Text == "" || tbx_email.Text == "" || tbx_address.Text == "" || tbx_tel.Text == "")
            {
                Response.Write("<script>alert('所有项目都必须填写')</script>");
            }
            else
            {
                if (tbx_code.Text.Trim() == tbx_againcode.Text.Trim())
                {
                   
                    Entity.Euser t = new Euser();
                    t.Uname = tbx_uname.Text.Trim();
                    t.Name = tbx_name.Text.Trim();
                    t.Password = tbx_code.Text.Trim();
                    t.Address = tbx_address.Text.Trim();
                    t.Tel = tbx_tel.Text.Trim();
                    t.Email = tbx_email.Text.Trim();

                    int i = Bussiness.Buser.InsertUser(t);
                    if (i > 0)
                    {
                        Response.Write("<script>alert('恭喜，注册成功！'),location.href='Login.aspx'</script>");
                    }
                }
                else
                {
                    tbx_againcode.Text = "";
                    Response.Write("<script>alert('两次密码输入不正确，请重新输入确认密码')</script>");
                }
            }
        }

     
    }
}