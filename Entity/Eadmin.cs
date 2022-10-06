using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
   public  class Eadmin
    {
        private int aid;

        public int Aid
        {
            get { return aid; }
            set { aid = value; }
        }
        private string aname;

        public string Aname
        {
            get { return aname; }
            set { aname = value; }
        }
        private string password;

        public string Password
        {
            get { return password; }
            set { password = value; }
        }
        private decimal tel;

        public decimal Tel
        {
            get { return tel; }
            set { tel = value; }
        }

    }
}
