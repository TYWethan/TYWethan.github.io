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
    public partial class AdminupdateA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                this.LoadDataList();
            }
        }
        private void LoadDataList()
        {

            this.DataList1.DataSource = Bussiness.Badmin.SelectadminXtable();
            this.DataList1.DataBind();
        }

        protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
        {
            this.DataList1.EditItemIndex = e.Item.ItemIndex;
            this.LoadDataList();
        }

        protected void DataList1_CancelCommand(object source, DataListCommandEventArgs e)
        {
            this.DataList1.EditItemIndex = -1;
            this.LoadDataList();
        }

        protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
        {
            Entity.Eadmin t = new Eadmin();
            t.Aid = Convert.ToInt32(((Label)e.Item.FindControl("Label1")).Text);
            t.Aname = ((TextBox)e.Item.FindControl("tbx_aname")).Text;
            t.Password = ((TextBox)e.Item.FindControl("tbx_pwd")).Text;
            t.Tel = Convert.ToDecimal(((TextBox)e.Item.FindControl("tbx_tel")).Text);

            int i = Bussiness.Badmin.UpdateAdminByAid(t);
            if (i > 0)
            {
                Response.Write("<script>alert('更新成功')</script>");
            }
            else
            {
                Response.Write("<script>alert('更新失败')</script>");
            }
            this.DataList1.EditItemIndex = -1;
            this.LoadDataList();
        }
    }
}