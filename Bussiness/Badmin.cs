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
    public class Badmin
    {
        public static int AdminAndPWD(Entity .Eadmin t)
        {
            string[] names = { "aname", "password" };
            object[] values = {t.Aname, t.Password };
            int i = Convert.ToInt32(DA.GetOneData("proc_AnameAndPwd", CommandType.StoredProcedure, names , values));
            return i;
        }
        public static int InsertAdmin(Entity .Eadmin t)
        {
            string[] names = { "aname", "password", "tel" };
            object[] values = { t.Aname, t.Password, t.Tel };
            int i = DA.ExecuteSQL ("proc_Admin", CommandType.StoredProcedure, names , values);
            return i;
        }
        public static DataTable SelectadminXtable()
        {
            string[] names = new string[] { "tablename" };
            object[] values = new object[] { "tb_admin" };

            return DataAccess.DA.GetDataTable("spr_SelectProductXtable", CommandType.StoredProcedure, names, values);
        }
        public static int DeleteAdminByAid(Entity.Eadmin t)
        {
            string[] names = { "aid" };
            object[] values = { t.Aid  };
            return DataAccess.DA.ExecuteSQL("spr_DeleteAdminByAid", CommandType.StoredProcedure, names, values);

        }
        public static int DeleteproductByPid(Entity.Eproduct t)
        {
            string[] names = { "pid" };
            object[] values = { t.Pid  };
            return DataAccess.DA.ExecuteSQL("spr_DeleteproductByPid", CommandType.StoredProcedure, names, values);

        }
        public static int DeleteorderDByid(Entity.EorderD t)
        {
            string[] names = { "id" };
            object[] values = { t.Id  };
            return DataAccess.DA.ExecuteSQL("spr_DeleteorderDByid", CommandType.StoredProcedure, names, values);

        }
        public static int UpdateProductByPid(Entity .Eproduct t)
        {
           
            string[] names = { "pname", "photo", "author", "type", "publisher", "ptime", "price", "mess", "pnums", "salenums", "pid" };
            object[] values = { t.Pname, t.Photo, t.Author, t.Type, t.Publisher, t.Ptime, t.Price, t.Mess,t.Pnums, t.Salenums, t.Pid };
            return DataAccess.DA.ExecuteSQL("spr_UpdateProductByPid", CommandType.StoredProcedure, names, values);
        }
        public static int UpdateAdminByAid(Entity.Eadmin  t)
        {

            string[] names = { "aname", "password", "tel", "aid" };
            object[] values = { t.Aname ,t.Password ,t.Tel ,t.Aid  };
            return DataAccess.DA.ExecuteSQL("spr_UpdateAdminByAid", CommandType.StoredProcedure, names, values);
        }
        public static int UpdateOderDetailsById(Entity.EorderD t)
        {

            string[] names = { "price", "nums", "states", "id","uname" };
            object[] values = { t.Price ,t.Nums ,t.States ,t.Id ,t.Uname };
            return DataAccess.DA.ExecuteSQL("spr_UpdateOderDetailsById", CommandType.StoredProcedure, names, values);
        }
        public static DataTable SelectOrderDbyuname(Entity.EorderD t)
        {
            string[] names = new string[] { "uname" };
            object[] values = new object[] { t.Uname };

            return DataAccess.DA.GetDataTable("spr_SelectOrderDbyuname", CommandType.StoredProcedure, names, values);
        }
    }
}
