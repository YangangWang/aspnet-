using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace chapter1
{
    public partial class listpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Application.Lock();
            ArrayList list = new ArrayList();
            string[] users = Application["users"].ToString().Split(',');
            foreach (string s  in users)
            {
                list.Add(s);
            }
            list1.DataSource = list;
            Application.UnLock();
        }
    }
}