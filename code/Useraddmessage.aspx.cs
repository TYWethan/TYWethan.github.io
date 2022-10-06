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
    public partial class Useraddmessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_publish_Click(object sender, EventArgs e)
        {
            Entity.Emessage t = new Emessage();
            t.Title = tbx_title . Text.Trim();
           t.Mess = tbx_content . Text.Trim();
            t.Uname = Session["user"].ToString();
            t.Messdate  = DateTime.Now;

            int i = Bussiness.Bmessage.InsertMessage(t);
            if (i > 0)
            {
                Response.Write("<script>alert('留言成功,可以查看'),location.href='Usermessage.aspx'</script>");
            }
        }
    }
}