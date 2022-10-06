using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bussiness;
using Entity;
using System.Data;

namespace 自己做的
{
    public partial class AdmininsertA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_reset_Click(object sender, EventArgs e)
        {
            tbx_aname.Text = "";
            tbx_pwd.Text = "";
            tbx_tel.Text = "";
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            if (tbx_aname.Text == "" || tbx_pwd.Text == "" || tbx_tel.Text == "")
            {
                Response.Write("<script>alert('请填写所有信息!')</script>");
            }
            Entity.Eadmin t = new Eadmin();
            t.Aname =tbx_aname .Text.Trim () ;
            t.Password =tbx_pwd .Text .Trim ();
            t.Tel = Convert.ToDecimal(tbx_tel.Text);

            int i = Bussiness.Badmin.InsertAdmin(t);
            if (i > 0)
            {
                Response.Write("<script>alert('添加成功！')</script>");
                tbx_aname.Text = "";
                tbx_pwd.Text = "";
                tbx_tel.Text = "";
            }
            else
            {
                Response.Write("<script>alert('添加失败！')</script>");
            }
        }
    }
}