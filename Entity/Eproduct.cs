using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class Eproduct
    {
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
        private string photo;

        public string Photo
        {
            get { return photo; }
            set { photo = value; }
        }
        private string author;

        public string Author
        {
            get { return author; }
            set { author = value; }
        }
        private string type;

        public string Type
        {
            get { return type; }
            set { type = value; }
        }
        private string publisher;

        public string Publisher
        {
            get { return publisher; }
            set { publisher = value; }
        }
        private string ptime;

        public string Ptime
        {
            get { return ptime; }
            set { ptime = value; }
        }
        private decimal price;

        public decimal Price
        {
            get { return price; }
            set { price = value; }
        }
        private string mess;

        public string Mess
        {
            get { return mess; }
            set { mess = value; }
        }
        private int pnums;

        public int Pnums
        {
            get { return pnums; }
            set { pnums = value; }
        }
        private int salenums;

        public int Salenums
        {
            get { return salenums; }
            set { salenums = value; }
        }
    }
}
