using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForms
{
    public partial class AddEmp : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            conn = new SqlConnection(cs);
            conn.Open();

            if (!IsPostBack)
            {
                FetchManager();
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string Name = TextBox1.Text;
            double Salary = double.Parse(TextBox2.Text);


            FileUpload1.SaveAs(Server.MapPath("Images/") + Path.GetFileName(FileUpload1.FileName));     //Images/xyz.jpg

            string path = "Images/" + Path.GetFileName(FileUpload1.FileName);

            int mid = int.Parse(DropDownList1.SelectedValue);


            string q = $"exec sp_SaveEmp '{Name}','{Salary}','{path}','{mid}'";
            SqlCommand cmd = new SqlCommand(q,conn);
            cmd.ExecuteNonQuery();

            Response.Write("<script> alert('Emp Saved Successfully') </script>");
        }


        /*Fetch All the Manager*/

        public void FetchManager()
        {
            string q = "exec sp_FetchManagerList";

            SqlCommand cmd = new SqlCommand(q,conn);
            SqlDataReader rdr = cmd.ExecuteReader();

            DropDownList1.DataSource = rdr;
            DropDownList1.DataTextField = "mname";
            DropDownList1.DataValueField = "mid";
            DropDownList1.DataBind();

        }
    }
}