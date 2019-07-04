using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace project_1
{
    public partial class Edit_Product : System.Web.UI.Page
    {
        public string connect = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database2.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

            Response.Redirect("Edit Product.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connect);

            con.Open();

            if (con.State == System.Data.ConnectionState.Open)
            {
                string edit = "UPDATE Products SET Product_Name='" + TextBox3.Text.ToString() + "', Sales_Price='" + TextBox2.Text.ToString() + "',Quantity='" + DropDownList2.SelectedItem + "',Brand_Name='" + DropDownList1.SelectedItem + "'WHERE Product_Id='" + DropDownList3.SelectedItem + "'";
                SqlCommand cmd = new SqlCommand(edit, con);
                cmd.ExecuteNonQuery();
                Response.Redirect("Product List.aspx");
            }
            else
            {
                Response.Redirect("Home.aspx");
            }

        }
    }
}