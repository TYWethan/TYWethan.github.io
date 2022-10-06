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
    public partial class UserCar : System.Web.UI.Page
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
        
                Entity.Euser t = new Euser();
                t.Uname = Session["user"].ToString();

                DataTable dt = new DataTable();
                dt = Bussiness.Buser.SelectUserByUname(t);

                tbx_address .Text  = dt.Rows[0][4].ToString();
               tbx_tel .Text  = dt.Rows[0][5].ToString();
            }
        }
        private void LoadGridView()
        {
            Entity .Ecar t=new Ecar ();
            t.Uname =Session ["user"].ToString ();
            this.GridView1.DataSource = Bussiness.Bcar.Selectcarbyuname(t);
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
                Entity.Ecar t = new Ecar();
                t.Cid = Convert.ToInt32(this.GridView1.DataKeys[e.RowIndex].Values["cid"]);
                int r = Bussiness.Bcar.DeleteCartByCid(t );
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = this.GridView1.SelectedIndex;
            tbx_uname.Text = Session["user"].ToString();
            tbx_pid.Text = this.GridView1.Rows[index].Cells[2].Text.Trim();
            tbx_pname.Text = this.GridView1.Rows[index].Cells[3].Text.Trim();
            tbx_price.Text = this.GridView1.Rows[index].Cells[4].Text.Trim();
            tbx_nums.Text = this.GridView1.Rows[index].Cells[5].Text.Trim();
        }

        protected void btn_buy_Click(object sender, EventArgs e)
        {
            Entity.Eorder t = new Eorder();
            t.Uname = tbx_uname.Text.Trim ();
            t.Ordertime = DateTime.Now;
            t.AllPrice = Convert.ToDecimal(Convert .ToDecimal  ( tbx_price.Text.Trim ()) * Convert .ToInt32 ( tbx_nums.Text));
            t.Address = tbx_address.Text.Trim();
            t.Tel = tbx_tel.Text.Trim();
            Bussiness.Buser.InsertOrders(t);

            Entity.EorderD i = new EorderD();
            i.Uname = tbx_uname.Text.Trim();
            
            i.Pid = Convert .ToInt32 ( tbx_pid.Text.Trim());
            i.Pname = tbx_pname.Text.Trim();
            i.Price = Convert.ToDecimal(Convert.ToDecimal(tbx_price.Text) * Convert.ToInt32(tbx_nums.Text));
            i.Nums = Convert.ToInt32(tbx_nums.Text.Trim());
            i.States = "已付款";
            int count = Bussiness.Buser.InsertOrderDetail(i );
            if (count > 0)
            {
                Response.Write("<script>alert('购买成功，订单已生成！请自行选择是否删除对应购物车商品'),location.href('Userorder.aspx')</script>");
            }
            else
            {
                Response.Write("<script>alert('生成失败')</script>");
            }
        }

        protected void brn_search_Click(object sender, EventArgs e)
        {
            string pname = this.tbx_p .Text.Trim();
            if (pname == "")
            {
                Response.Write("<script>alert('不能为空！')</script>");
                return;
            }
            Entity.Ecar t = new Ecar();
            t.Pname  = "%" +pname + "%";
            this.GridView1.DataSource = Bussiness.Bcar.Selectcarbypname(t);
            this.GridView1.DataBind();

        }
    }
}