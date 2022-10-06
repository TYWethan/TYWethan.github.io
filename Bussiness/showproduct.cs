using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccess;
using Entity;
using System.Data ;

namespace Bussiness
{
    public class showproduct
    {
       
              public static DataTable SelectProductXtable()
        {
            string[] names = new string[] { "tablename" };
            object[] values = new object[] { "tb_product"};

            return DataAccess.DA.GetDataTable("spr_SelectProductXtable", CommandType.StoredProcedure, names, values);
        }
              
              public static DataTable SelectProductByPname(Entity .Eproduct t)
              {
                  string[] names = new string[] { "Pname" };
                  object[] values = new object[] { t.Pname  };

                  return DataAccess.DA.GetDataTable("spr_SelectProductByPname", CommandType.StoredProcedure, names, values);
              }
              public static DataTable SelectProductByPid(Entity .Eproduct t)
        {
            string[] names = new string[] { "pid" };
            object[] values = new object[] { t.Pid  };

            return DataAccess.DA.GetDataTable("spr_SelectProductByPid", CommandType.StoredProcedure, names, values);
        }
              public static int InsertProduct(Entity.Eproduct  t)
              {

                  string[] names = new string[] { "pname", "photo", "author", "type", "publisher", "ptime", "price", "mess", "pnums", "salenums" };
                  object[] values = new object[] { t.Pname ,t.Photo ,t.Author ,t.Type ,t.Publisher ,t.Ptime ,t.Price ,t.Mess ,t.Pnums ,t.Salenums  };

                  int i = DA.ExecuteSQL("proc_InsertProduct", CommandType.StoredProcedure, names, values);
                  return i;

              }
            
    }
}
