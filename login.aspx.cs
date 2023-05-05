using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace Billing_Application
{
    public partial class login : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection con;
        SqlDataAdapter adr;
        DataTable dt;
        String ls_sql = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            adr = new SqlDataAdapter();
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["billing_applicationConnectionString"].ConnectionString);
            con.Open();
            cmd = new SqlCommand(" ", con);

            TextBox1.Focus();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ls_username = "", ls_password = "", ls_empname = "";

            if (TextBox1.Text.Trim() == "")
            {



                ShowMessage("", "User Name Must Be Entered");
                TextBox1.Focus();
                return;
            }
            if (TextBox2.Text.Trim() == "")
            {
                ShowMessage("", "Password Must Be Entered");
                TextBox2.Focus();
                return;
            }
            if (TextBox1.Text.Trim() == "" && TextBox2.Text.Trim() == "")
            {
                ShowMessage("", "User Name and Password Must Be Entered");
                TextBox2.Focus();
                return;
            }

            ls_sql = "";
            ls_sql += "       select empcode,empname,pswrd         ";
            ls_sql += "       From   employe                           ";
            ls_sql += "       where  empname= '" + TextBox1.Text + "'";


            cmd.CommandText = ls_sql;

            adr.SelectCommand = cmd;
            dt = new DataTable();
            adr.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                ls_username = dt.Rows[0]["empname"].ToString().Trim();
                ls_password = dt.Rows[0]["pswrd"].ToString().Trim();
                ls_empname = dt.Rows[0]["empname"].ToString().Trim();
            }

            if (ls_username != TextBox1.Text.Trim())
            {
                Session.Add("username", ls_empname);
                ShowMessage(" ", "Invalid User Name");
                TextBox1.Text = "";
                TextBox1.Focus();
                return;
            }

            if (ls_password != TextBox2.Text.Trim())
            {
                ShowMessage("", "Invalid Password");
                TextBox2.Focus();
                return;
            }
            else
            {
                Session.Add("username", ls_empname);

                Response.Redirect("home.aspx");
            }

            con.Close();

        }

        private void ShowMessage(string p1, string p2)
        {
            ScriptManager.RegisterStartupScript(Page, this.GetType(), "alert", string.Format("alert('{1}', '{0}');", p1, p2), true);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = String.Empty;
            TextBox2.Text = String.Empty;
        }
    }
}