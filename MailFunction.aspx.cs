using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForms
{
    public partial class MailFunction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            string to = TextBox1.Text;
            string msg = TextBox2.Text;
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("sharanyanemade123@gmail.com");
            mail.To.Add(to);
            mail.Subject = "Test";
            mail.Body = msg;

            SmtpClient client = new SmtpClient("smtp.gmail.com");
            client.Port = 587;
            client.Credentials = new NetworkCredential("sharanyanemade123@gmail.com", "yril gykf ijev ppkp");
            client.EnableSsl = true;
            client.Send(mail);
        }
    }
}