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

    public partial class Usermessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

            this.DataList1.DataSource = Bussiness.Bmessage .SelectmessageXtable ();
            this.DataList1.DataBind();
        }
    }
}