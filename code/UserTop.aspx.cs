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
    public partial class UserTop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Write("<script>alert('对不起，请登录！'),location.href='userLogin.aspx'</script>");
            }
            else
            {
                Label1.Text = Session["user"].ToString();
            }
        }

        
    }
}