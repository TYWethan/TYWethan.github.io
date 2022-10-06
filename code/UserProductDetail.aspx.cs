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
    public partial class UserProductDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["user"] == null)
            {
                Response.Write("<script>alert('请先登录！');parent.window.location.href ='Login.aspx'</script>");
                return;
            }
            if (!Page.IsPostBack)
            {
                this.LoadDataList();
            }
        }
        private void LoadDataList()
        {
            Entity.Eproduct t = new Eproduct();
            t.Pid = Convert.ToInt32(Request.QueryString["pid"]);
            this.DataList1.DataSource = Bussiness.showproduct.SelectProductByPid(t);
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

            if (Convert.ToInt32(((TextBox)e.Item.FindControl("tbx_nums")).Text) > Convert.ToInt32(((Label)e.Item.FindControl("lbl_pnums")).Text))
            {
                Response.Write("<script>alert('库存不足，不能购买！')</script>");
                ((TextBox)e.Item.FindControl("tbx_nums")).Text = "1";

            }
            else
            {
                Entity.Ecar t = new Ecar();
                t.Uname = Session["user"].ToString();
                t.Pid = Convert.ToInt32(((Label)e.Item.FindControl("lbl_pid")).Text);
                t.Pname = ((Label)e.Item.FindControl("lbl_pname")).Text;
                t.Price = Convert.ToDecimal(((Label)e.Item.FindControl("lbl_price")).Text);
                t.Nums = Convert.ToInt32(((TextBox)e.Item.FindControl("tbx_nums")).Text);
                t.Photo = ((Image)e.Item.FindControl("Image1")).ImageUrl;

                int i = Bussiness.Bcar.Insertcar(t);
                if (i > 0)
                {
                    Response.Write("<script>alert('成功添加购物车！'),location.href='userMain.aspx'</script>");
                }
                else
                    Response.Write("<script>alert('添加购物车失败！'),location.href='userMain.aspx'</script>");

            }


        }

     

       
    }
}