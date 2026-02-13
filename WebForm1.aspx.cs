using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForms
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Page_Load Worked";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            int id = int.Parse(TextBox2.Text);
            double salary = double.Parse(TextBox3.Text);

            Label1.Text = $"Name is {name}, ID is {id}, & salary is {salary}";
        }
    }
}