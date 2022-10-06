using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using Bussiness;
using System.Data;

namespace 自己做的
{
    public partial class Userorderdetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
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
            Entity.EorderD t = new EorderD();
            t.Uname = Session["user"].ToString();
            this.GridView1.DataSource = Bussiness .Buser .Selectorderdetailbyuname (t);
            this.GridView1.DataBind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            this.GridView1.PageIndex = e.NewPageIndex;
            this.LoadGridView();
        }
    }
}