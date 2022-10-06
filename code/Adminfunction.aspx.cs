using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 自己做的
{
    public partial class Adminfunction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {

            if (this.TreeView1.SelectedValue == "退出系统")
            {
                Session.Clear();
                Response.Write("<script>parent.window.location.href='Login.aspx'</script>");
            }

        }
    }
}