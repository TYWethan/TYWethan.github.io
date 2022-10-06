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
    public partial class AdmindeleteorderD : System.Web.UI.Page
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
            this.GridView1.DataSource = Bussiness.Buser.SelectorderdetailXtable();
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
                Entity.EorderD t = new EorderD();
                t.Id  = Convert.ToInt32(this.GridView1.DataKeys[e.RowIndex].Values["id"]);
                int r = Bussiness.Badmin.DeleteorderDByid(t);
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

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            this.GridView1 .EditIndex = -1;
            this.LoadGridView();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            this.GridView1 .EditIndex = e.NewEditIndex;
            this.LoadGridView();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
           
                Entity.EorderD t = new EorderD();
                t.Id = Convert.ToInt32(this.GridView1.DataKeys[e.RowIndex].Values["id"]);
                t.Uname = ((TextBox)this.GridView1 .Rows[e.RowIndex].Cells[2].Controls[0]).Text.ToString();
                t.Price =Convert .ToDecimal ( ((TextBox)this.GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text.ToString ());
                t.Nums = Convert.ToInt32 (((TextBox)this.GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text.ToString ());
                t.States = ((DropDownList)this.GridView1.Rows[e.RowIndex].FindControl("ddl_states")).SelectedValue;

                int i = Bussiness.Badmin.UpdateOderDetailsById(t);
                if (i  > 0)
                {
                    Response.Write("<script>alert('更新成功')</script>");
                }
                else
                {
                    Response.Write("<script>alert('更新失败')</script>");
                }
                this.GridView1 .EditIndex = -1;
                this.LoadGridView();
            
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {

            string uname = this .tbx_uname .Text.Trim();
            if (uname == "")
            {
                Response.Write("<script>alert('不能为空！')</script>");
                return;
            }
            Entity.EorderD t = new EorderD();
            t.Uname  = "%" + uname + "%";
            this.GridView1.DataSource = Bussiness.Badmin.SelectOrderDbyuname(t);
            this.GridView1.DataBind();
        }
    }
}