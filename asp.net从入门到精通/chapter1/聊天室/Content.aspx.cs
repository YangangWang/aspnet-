using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace chapter1
{
    public partial class Content : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int count = (int)Application["count"];
            Application.Lock();
            string charts = Application["charts"].ToString();
            string[] chartss = charts.Split(',');
            for (int i = chartss.Length-1; i >0; i--)
            {
                if (count == 0)
                    txtContent.Text = chartss[i].ToString();
                else
                    txtContent.Text = txtContent + chartss[i].ToString();
            }
            Application.UnLock();
        }
    }
}