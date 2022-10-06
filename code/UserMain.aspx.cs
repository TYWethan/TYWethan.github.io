using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Entity;
using Bussiness;

namespace 自己做的
{
    public partial class UserMain : System.Web.UI.Page
    {
        static DataTable DT;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DT = Bussiness.showproduct.SelectProductXtable();
                ViewState["pageindex"] = 0;
                this.LoadDataList(DT);
            }
        }
        private PagedDataSource DataListPaging(DataTable dt)
        {
            DataView dv = dt.DefaultView;
            PagedDataSource pds = new PagedDataSource();
            pds.DataSource = dv;
            pds.AllowPaging = true;
            pds.PageSize = 4;
            pds.CurrentPageIndex = Convert.ToInt32(ViewState["pageindex"].ToString());
            ViewState["pagecount"] = pds.PageCount;
            if (pds.IsFirstPage)
            {
                this.lbtn_pre.Enabled = false;
            }
            else
            {
                this.lbtn_pre.Enabled = true;
            }
            if (pds.IsLastPage)
            {
                this.lbtn_next.Enabled = false;
            }
            else
            {
                this.lbtn_next.Enabled = true;
            }
            return pds;
        }
        private void LoadDataList(DataTable dt)
        {
            this.ddl_product .DataSource = this.DataListPaging(dt);
            this.ddl_product .DataBind();
        }

        protected void lbtn_Click(object sender, EventArgs e)
        {
            LinkButton lbtn = sender as LinkButton;
            string cmda = lbtn.CommandArgument;
            int pageindex = Convert.ToInt32(ViewState["pageindex"].ToString());
            if (cmda == "pre")
            {
                pageindex = pageindex - 1;
            }
            else
            {
                pageindex = pageindex + 1;
            }
            ViewState["pageindex"] = pageindex;
            this.LoadDataList(DT);
            this.tbx_page .Text = (pageindex + 1).ToString();
        }

        protected void btn_go_Click(object sender, EventArgs e)
        {
            int pagenum = Convert.ToInt32(this.tbx_page .Text.Trim());
            int pageindex = pagenum - 1;
            int pagecount = Convert.ToInt32(ViewState["pagecount"]);
            if (pageindex < 0)
            {
                Response.Write("<script>alert('页数必须大于0！将回到首页')</script>");
                pageindex = 0;
            }
            if (pageindex >= pagecount)
            {
                Response.Write("<script>alert('页数不能超过总页数！将达到最后一页')</script>");
                pageindex = pagecount - 1;
            }

            ViewState["pageindex"] = pageindex;
            this.LoadDataList(DT);
            this.tbx_page .Text = (pageindex + 1).ToString();
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            string tname = this.tbx_pname .Text.Trim();
            if (tname == "")
            {
                Response.Write("<script>alert('商品名不能为空！')</script>");
               
                return;
            }
            Entity.Eproduct t = new Eproduct();
            t.Pname = "%" + tname + "%";
            DT = Bussiness.showproduct.SelectProductByPname(t);
            
            this.ddl_product .DataSource = this.DataListPaging(DT);
            this.ddl_product .DataBind();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton lkbtn = (ImageButton)sender;
            string pid = lkbtn.CommandArgument;
            
            if (Session["user"] == null)
            {
                Response.Write("<script>alert('请先登录！');parent.window.location.href ='Login.aspx'</script>");
                return;
            }
            else
            {
                Response.Redirect("~/UserProductDetail.aspx?pid=" + pid);
            }
        }
    }
}