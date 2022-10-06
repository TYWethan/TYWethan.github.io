using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Entity;
using DataAccess;

namespace Bussiness
{
   public  class Bmessage
    {
       public static DataTable SelectmessageXtable()
       {
           string[] names = new string[] { "tablename" };
           object[] values = new object[] { "tb_message" };

           return DataAccess.DA.GetDataTable("spr_SelectProductXtable", CommandType.StoredProcedure, names, values);
       }
       public static int InsertMessage(Entity .Emessage  t)
       {

           string[] names = new string[] { "title", "mess", "uname", "messDate" };
           object[] values = new object[] { t.Title ,t.Mess ,t.Uname ,t.Messdate };

           int i = DA.ExecuteSQL("spr_InsertMessage", CommandType.StoredProcedure, names, values);
           return i;

       }
       public static int DeletemessageByMid(Entity.Emessage t)
       {
           string[] names = { "mid" };
           object[] values = { t.Mid  };
           return DataAccess.DA.ExecuteSQL("spr_DeletemessageByMid", CommandType.StoredProcedure, names, values);

       }
    }
}
