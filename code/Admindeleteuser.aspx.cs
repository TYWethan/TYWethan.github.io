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
    public partial class Admindeleteuser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Write("<script>alert('请先登录！');parent.window.location.href ='Login.aspx'</script>");
                return;
            }
            if (!IsPostBack)
            {
                this.LoadGridView();
            }
        }
        private void LoadGridView()
        {
            this.GridView1.DataSource = Bussiness.Buser.SelectuserXtable();
            this.GridView1.DataBind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            this.GridView1.PageIndex = e.NewPageIndex;
            this.LoadGridView();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                Entity.Euser t = new Euser();
                t.Uid    =Convert .ToInt32 ( this.GridView1.DataKeys[e.RowIndex].Values["uid"]);
                int r = Bussiness.Buser.DeleteuserByUid(t);
                if (r > 0)
                {
                    Response.Write("<script>alert('删除成功')</script>");
                }
                else
                {
                    Response.Write("<script>alert('删除失败')</script>");
                }
                this.LoadGridView();
            }
        }
    }
}