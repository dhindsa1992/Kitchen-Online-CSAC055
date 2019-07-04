using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace project_1
{
    public partial class Add_Product : System.Web.UI.Page
    {
        public string connect = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database2.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Edit Product.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connect);

            con.Open();

            if (con.State == System.Data.ConnectionState.Open)
            {
                string edit = "INSERT INTO Products (Product_Name, Sales_Price, Quantity, Brand_Name, Product_Id)values('" + TextBox3.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + DropDownList2.SelectedItem + "','" + DropDownList1.SelectedItem + "','" + TextBox1.Text.ToString() + "')";
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