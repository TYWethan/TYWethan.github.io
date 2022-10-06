using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class EorderD
    {
        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
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
        private int pid;

        public int Pid
        {
            get { return pid; }
            set { pid = value; }
        }
        private string pname;

        public string Pname
        {
            get { return pname; }
            set { pname = value; }
        }
        private decimal price;

        public decimal Price
        {
            get { return price; }
            set { price = value; }
        }
        private int nums;

        public int Nums
        {
            get { return nums; }
            set { nums = value; }
        }
        private string photo;

        public string Photo
        {
            get { return photo; }
            set { photo = value; }
        }
        private string states;

        public string States
        {
            get { return states; }
            set { states = value; }
        }
    }
}
