using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace chapter1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            string message = TextBox1.Text;
            Application.Lock();
            string charts = Application["charts"].ToString();
            List<string> users = (List<string>)Application["users"];
            users.Add("wangyangang");
            Application.UnLock();
        }

        protected void btnExit_Click(object sender, EventArgs e)
        {

        }
    }
}