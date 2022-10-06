using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class Eorder
    {
        private int oid;

        public int Oid
        {
            get { return oid; }
            set { oid = value; }
        }
        private string uname;

        public string Uname
        {
            get { return uname; }
            set { uname = value; }
        }
        private DateTime ordertime;

        public DateTime Ordertime
        {
            get { return ordertime; }
            set { ordertime = value; }
        }
        private decimal allPrice;

        public decimal AllPrice
        {
            get { return allPrice; }
            set { allPrice = value; }
        }
        private string address;

        public string Address
        {
            get { return address; }
            set { address = value; }
        }
        private string tel;

        public string Tel
        {
            get { return tel; }
            set { tel = value; }
        }

    }
}
