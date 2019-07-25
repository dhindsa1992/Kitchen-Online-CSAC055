using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace project_1
{
    public partial class Add_Brand : System.Web.UI.Page
        
    {
        public string connect = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database2.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connect);

            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string insert = "INSERT INTO Add_brand(Brand_Name, Brand_Id)values('" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "')";
                SqlCommand cmd = new SqlCommand(insert, con);
                cmd.ExecuteNonQuery();
                Response.Redirect("Add Brand.aspx");
            }
            else
            {
                Response.Write("Please enter all the details");
            }

        }


        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Edit Brand.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
        {

        }
    }
}