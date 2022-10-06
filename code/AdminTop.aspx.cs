using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 自己做的
{
    public partial class AdminTop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Write("<script>alert('对不起，请登录！'),location.href='userLogin.aspx'</script>");
            }
            else
            {
                Label1.Text = Session["admin"].ToString();
            }
        }
    }
}