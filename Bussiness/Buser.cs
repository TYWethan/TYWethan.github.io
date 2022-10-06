using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Entity;
using DataAccess;
using System.Data;

namespace Bussiness
{
    public class Buser
    {
        public static int UserAndPWD(Entity.Euser t)
        {

            string[] names = new string[] { "uname", "password" };
            object[] values = new object[] { t.Uname, t.Password };


            int i = Convert.ToInt32(DA.GetOneData("spr_UserAndPWD", CommandType.StoredProcedure, names, values));
            return i;
        }
        public static int InsertUser(Entity.Euser t)
        {

            string[] names = new string[] { "uname", "name", "password", "address", "tel", "email" };
            object[] values = new object[] { t.Uname, t.Name, t.Password, t.Address, t.Tel, t.Email };

            int i = DA.ExecuteSQL("spr_InsertUser", CommandType.StoredProcedure, names, values);
            return i;

        }
        public static int UnameIsExist(Entity.Euser t)
        {

            string[] names = new string[] { "uname" };
            object[] values = new object[] { t.Uname };


            int i = Convert.ToInt32(DA.GetOneData("spr_UnameIsExist", CommandType.StoredProcedure, names, values));
            return i;
        }
        public static object GetUserNamebyID(Entity.Euser t)
        {
            string[] names = new string[] { "uid" };
            object[] values = new object[] { t.Uid };

            return DataAccess.DA.GetOneData("spr_GetUserNamebyID", CommandType.StoredProcedure, names, values);
        }
        public static DataTable SelectUserByUname(Entity.Euser t)
        {
            string[] names = new string[] { "uname" };
            object[] values = new object[] { t.Uname };

            return DataAccess.DA.GetDataTable("spr_SelectUserByUname", CommandType.StoredProcedure, names, values);
        }
        public static DataTable SelectorderXtable()
        {
            string[] names = new string[] { "tablename" };
            object[] values = new object[] { "tb_orders" };

            return DataAccess.DA.GetDataTable("spr_SelectProductXtable", CommandType.StoredProcedure, names, values);
        }
        public static DataTable SelectuserXtable()
        {
            string[] names = new string[] { "tablename" };
            object[] values = new object[] { "tb_user" };

            return DataAccess.DA.GetDataTable("spr_SelectProductXtable", CommandType.StoredProcedure, names, values);
        }
        public static DataTable SelectorderdetailXtable()
        {
            string[] names = new string[] { "tablename" };
            object[] values = new object[] { "tb_orderDetails" };

            return DataAccess.DA.GetDataTable("spr_SelectProductXtable", CommandType.StoredProcedure, names, values);
        }
        public static DataTable Selectorderdetailbyuname(Entity .EorderD t)
        {
            string[] names = new string[] { "uname" };
            object[] values = new object[] { t.Uname  };

            return DataAccess.DA.GetDataTable("spr_Selectorderdetailbyuname", CommandType.StoredProcedure, names, values);
        }
        public static DataTable Selectorderbyuname(Entity.Eorder t)
        {
            string[] names = new string[] { "uname" };
            object[] values = new object[] { t.Uname };

            return DataAccess.DA.GetDataTable("spr_Selectorderbyuname", CommandType.StoredProcedure, names, values);
        }
        public static int DeleteuserByUid(Entity.Euser t)
        {
            string[] names = { "uid" };
            object[] values = { t.Uid   };
            return DataAccess.DA.ExecuteSQL("spr_DeleteuserByUid", CommandType.StoredProcedure, names, values);

        }
        public static int InsertOrders(Entity.Eorder t)
        {

            string[] names = new string[] { "uname", "orderTime", "allPrice", "address", "tel" };
            object[] values = new object[] { t.Uname ,t .Ordertime ,t.AllPrice ,t.Address ,t.Tel };

            int i = DA.ExecuteSQL("spr_InsertOrders", CommandType.StoredProcedure, names, values);
            return i;
        }
        public static int InsertOrderDetail(Entity.EorderD t)
        {

            string[] names = new string[] {  "oid","uname", "pid", "pname", "price", "nums" ,"states" };
            object[] values = new object[] { t.Oid ,t.Uname ,t.Pid ,t.Pname ,t.Price ,t.Nums ,t.States   };

            int i = DA.ExecuteSQL("spr_InsertOrderDetail", CommandType.StoredProcedure, names, values);
            return i;
        }
    }

}