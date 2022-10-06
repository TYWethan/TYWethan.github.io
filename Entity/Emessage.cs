using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class Emessage
    {
        private int mid;

        public int Mid
        {
            get { return mid; }
            set { mid = value; }
        }
        private string title;

        public string Title
        {
            get { return title; }
            set { title = value; }
        }
        private string mess;

        public string Mess
        {
            get { return mess; }
            set { mess = value; }
        }
        private string uname;

        public string Uname
        {
            get { return uname; }
            set { uname = value; }
        }
        private DateTime messdate;

        public DateTime Messdate
        {
            get { return messdate; }
            set { messdate = value; }
        }
    }
}
