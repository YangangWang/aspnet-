using System;
using System.Collections;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace chapter1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Request.Params["name"];
            Response.Write(name);

            dataSource = new ArrayList();
            dataSource.Add("haha");
            ListBox1.DataSource = dataSource;
            ListBox1.DataBind();

            foreach (PropertyInfo item in typeof(Color).GetProperties())
            {
                DropDownList1.Items.Add(item.Name);
            }

            TextBox1.Text = @"闹花深处层楼，画帘半卷东风软。春归翠陌，平莎茸嫩，垂杨金浅。迟日催花，淡云阁雨，轻寒轻暖
                 恨芳菲世界，游人未赏，都付与、莺和燕。寂寞凭高念远。向南楼、一声归雁。
   
                   金钗斗草，青丝勒马，风流云散。罗绶分香，翠绡对泪，几多幽怨。正销魂，又是疏烟淡月，子规声断。 ";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        ArrayList dataSource = null;
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            dataSource.Add(DateTime.Now.ToString());
            ListBox1.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string colorName = DropDownList1.SelectedItem.Value;
            switch (colorName)
            {
                case "AliceBlue":
                    DropDownList1.BackColor = Color.AliceBlue;
                    break;
                case "Aqua":
                    DropDownList1.BackColor = Color.Aqua;
                    break;
                default:
                    DropDownList1.BackColor = Color.Red;
                    break;
            }

        }

        protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
        {

        }

        protected void btnHide_Click(object sender, EventArgs e)
        {
            if (Panel1.Visible == true)
                Panel1.Visible = false;
            else
                Panel1.Visible = true;
        }

        protected void btnLoad_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    Image1.ImageUrl = "~/pictures/" + FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath("~/pictures/") + FileUpload1.FileName);
                }
                catch
                {
                    Response.Write("<script language='javascript'>alert('文件上传不成功')</script>");
                }
            }
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            //string s = new ServiceReference1.WebServiceSoapClient().Select("a");
            //Response.Write(string.Format("<script>alert('{0}')</script>", 0));
            try
            {
                string s = new cn.com.webxml.www.MobileCodeWS().getMobileCodeInfo("13054661950", "");
                string[] s1 = new cn.com.webxml.www.MobileCodeWS().getDatabaseInfo();
                Response.Write(string.Format("<script>alert('{0}')</script>", s));
                foreach (string ss in s1)
                {
                    Response.Write(string.Format("<script>alert('{0}')</script>", ss));
                }
            }
            catch (Exception)
            {

                throw;
            }




        }

        protected void btn1_Click1(object sender, EventArgs e)
        {
            string[] s = new cn.com.webxml.www1.WeatherWS().getWeather("东营","");
            string ss = s[0] + "</br>" + s[1] + "</br>" + s[2]+ s[3] + "</br>" + s[4] + "</br>" + s[5] + s[6];
            Response.Write(ss);

        }
    }
}