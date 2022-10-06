using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bussiness;
using Entity;
using System.Data;
using System.IO;

namespace 自己做的
{
    public partial class AdminAddproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["admin"] == null)
            {
                Response.Write("<script>alert('请先登录！');parent.window.location.href ='Login.aspx'</script>");
                return;
            }
        }

        protected void btn_upload_Click(object sender, EventArgs e)
        {
            string savePath = Server.MapPath("~/image/");
            if (ful_image.HasFile)
            {
                savePath = savePath + ful_image.FileName;
                ful_image . SaveAs(savePath);
                Image1.ImageUrl = "~/image/" + ful_image.FileName;
            }
        }

        protected void btn_reset_Click(object sender, EventArgs e)
        {
            tbx_pname.Text = "";
            Image1.ImageUrl = "";
            tbx_price.Text = "";
            tbx_writer.Text = "";
            tbx_type.Text = "";
            tbx_publisher.Text  = "";
            tbx_time.Text = "";
            tbx_mess.Text = "";
            tbx_nums.Text = "";
            tbx_snums.Text = "";
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            if (tbx_pname.Text == "" || tbx_price.Text == "" || tbx_writer.Text == "" || tbx_type.Text == "" || tbx_publisher.Text == "" || tbx_time.Text == "" || tbx_mess.Text == "" || tbx_nums.Text == "" || tbx_snums.Text == "" || Image1.ImageUrl == "")
            {
                Response.Write("<script>alert('请填写所有信息!')</script>");
            }
            Entity.Eproduct t = new Eproduct();
            t.Pname = tbx_pname.Text.Trim();
            t.Photo = Image1.ImageUrl;
            t.Publisher = tbx_publisher.Text.Trim();
            t.Author = tbx_writer.Text.Trim();
            t.Type = tbx_type.Text.Trim();
            t.Ptime = tbx_time.Text.Trim();
            t.Price = Convert.ToDecimal(tbx_price.Text.Trim());
            t.Mess = tbx_mess.Text.Trim();
            t.Pnums = Convert.ToInt32(tbx_nums.Text.Trim());
            t.Salenums = Convert.ToInt32(tbx_snums.Text.Trim());

            int i = Bussiness.showproduct.InsertProduct(t);
            if (i > 0)
            {
                Response.Write("<script>alert('添加成功！')</script>");
                tbx_pname.Text = "";
                Image1.ImageUrl = "";
                tbx_price.Text = "";
                tbx_writer.Text = "";
                tbx_type.Text = "";
                tbx_publisher.Text = "";
                tbx_time.Text = "";
                tbx_mess.Text = "";
                tbx_nums.Text = "";
                tbx_snums.Text = "";
            }
            else
            {
                Response.Write("<script>alert('添加失败！')</script>");
             }
        }
    }
}