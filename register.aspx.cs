using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Billing_Application
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["billing_applicationconnectionstring"].ConnectionString);
                connection.Open();
                string checkuser = "select count(*) from register where name='" + reg_TextBox1.Text + "'";
                SqlCommand comment = new SqlCommand(checkuser, connection);
                int temp = Convert.ToInt32(comment.ExecuteScalar().ToString());
                connection.Close();

                if (temp == 1)
                {
                    Response.Write("user already exists.");
                }

            }
        }
    

        protected void reg_Button1_Click(object sender, EventArgs e)
        {
            try
            {
              

                SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["billing_applicationconnectionstring"].ConnectionString);
                //Response.Write("submit successfuly.")
                connection.Open();
                string insertquery = "insert into register(name,number,password)values(@name,@no,@password)";
                SqlCommand comment = new SqlCommand(insertquery, connection);
                comment.Parameters.AddWithValue("@name",reg_TextBox1.Text);
                comment.Parameters.AddWithValue("@no", reg_TextBox2.Text);
                comment.Parameters.AddWithValue("@password",reg_TextBox3.Text);
               

                comment.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
                Response.Write("Registration is successfuly.");

                connection.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }

        }

        protected void reg_Button2_Click(object sender, EventArgs e)
        {
            reg_TextBox1.Text = string.Empty;
            reg_TextBox2.Text = string.Empty;
            reg_TextBox3.Text = string.Empty;
            reg_TextBox4.Text = string.Empty;


        }
    }
}