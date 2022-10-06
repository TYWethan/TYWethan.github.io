using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Bussiness;
using Entity;
using System.IO;

namespace 自己做的
{
    public partial class AdminUpdateProduct : System.Web.UI.Page
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
            Entity.Eproduct t = new Eproduct();
            t.Pid = Convert .ToInt32 (((Label)e.Item.FindControl("Label1")).Text);
            t.Pname = ((TextBox)e.Item.FindControl("tbx_pname")).Text;
            t.Author = ((TextBox)e.Item.FindControl("tbx_writer")).Text;
            t.Type = ((TextBox)e.Item.FindControl("tbx_type")).Text;
            t.Publisher = ((TextBox)e.Item.FindControl("tbx_publisher")).Text;
            t.Ptime = ((TextBox)e.Item.FindControl("tbx_ptime")).Text;
            t.Price = Convert .ToDecimal  (((TextBox)e.Item.FindControl("tbx_price")).Text);
            t.Pnums = Convert.ToInt32(((TextBox)e.Item.FindControl("tbx_nums")).Text);
            t.Salenums = Convert.ToInt32(((TextBox)e.Item.FindControl("tbx_snums")).Text);
            t.Mess = ((TextBox)e.Item.FindControl("tbx_mess")).Text;
            t.Photo = ((Image)e.Item.FindControl("Image1")).ImageUrl;

            int i = Bussiness.Badmin.UpdateProductByPid(t);
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

        protected void btn_sc_Click(object sender, EventArgs e)
        {
            FileUpload ful = (FileUpload)this.DataList1.Items[0].FindControl("FileUpload1");
            Image img = (Image)this.DataList1.Items[0].FindControl("Image1");
            if (!ful.HasFile)
            {
                Response.Write("<script>alert('请选择JPG或JPEG文件！')</script>");
                return;
            }
            string uploadfile = ful.FileName;
            string fileextn = System.IO.Path.GetExtension(uploadfile);
            string newfname = DateTime.Now.ToString("yyyyMMddhhmmssff") + fileextn;
            if (fileextn.ToLower() == ".jpg" || fileextn.ToLower() == ".jpeg")
            {
                string dcty = "~/image";
                if (!Directory.Exists(Server.MapPath(dcty)))
                {
                    Directory.CreateDirectory(Server.MapPath(dcty));
                }
                dcty += "/";
                ful.SaveAs(Server.MapPath(dcty) + newfname);
                img.ImageUrl = dcty + newfname;
            }

        }
    }
}