using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BotDetect;
using BotDetect.Web;
using BotDetect.Web.UI;
using System.Text;
using System.Data.SqlClient;


namespace project_1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public string connect = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database2.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connect);

            con.Open();
            bool correct = CaptchaBox.Validate(txtCaptcha.Text);
            txtCaptcha.Text = null;
            if (correct)
            {
                if (con.State == System.Data.ConnectionState.Open)
                {
                    string insert = "INSERT INTO Register(First_name, Last_name, Username, Password)values('" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + TextBox3.Text.ToString() + "','" + TextBox4.Text.ToString() + "')";
                    SqlCommand cmd = new SqlCommand(insert, con);
                    cmd.ExecuteNonQuery();
                    Response.Write("successfully done");
                }
                else
                {
                    Response.Write("Please enter all the details");
                }
            }
            else
            {
                Response.Write("Invalid captcha");
            }
            Response.Redirect("Login.aspx");
        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
