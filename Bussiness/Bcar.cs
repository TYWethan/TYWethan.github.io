using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccess;
using Entity;
using System.Data;

namespace Bussiness
{
   public  class Bcar
    {
       public static int DeleteCartByCid(Entity.Ecar t)
       {
           string[] names = {  "cid" };
           object[] values = { t.Cid  };
           return DataAccess.DA.ExecuteSQL("spr_DeleteCartByCid", CommandType.StoredProcedure, names, values);
         
       }

       public static DataTable SelectcarXtable()
       {
           string[] names = new string[] { "tablename" };
           object[] values = new object[] { "tb_cart" };

           return DataAccess.DA.GetDataTable("spr_SelectProductXtable", CommandType.StoredProcedure, names, values);
       }
       public static int Insertcar(Entity.Ecar t)
       {

           string[] names = new string[] { "uname", "pid", "pname", "price", "nums" };
           object[] values = new object[] { t.Uname ,t.Pid ,t.Pname ,t.Price ,t.Nums  };

           int i = DA.ExecuteSQL("spr_Insertcar", CommandType.StoredProcedure, names, values);
           return i;
       }
       public static DataTable Selectcarbypname(Entity.Ecar t)
       {
           string[] names = new string[] { "pname" };
           object[] values = new object[] { t.Pname  };

           return DataAccess.DA.GetDataTable("spr_Selectcarbypname", CommandType.StoredProcedure, names, values);
       }
       public static DataTable Selectcarbyuname(Entity.Ecar t)
       {
           string[] names = new string[] { "uname" };
           object[] values = new object[] { t.Uname };

           return DataAccess.DA.GetDataTable("spr_Selectcarbyuname", CommandType.StoredProcedure, names, values);
       }
    }
}
