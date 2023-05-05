using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.Security;



namespace Billing_Application
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                   
                    masterpage_Label4.Text = Session["username"].ToString().Trim();
                    var dt = DateTime.Now;
                    masterpage_Label6.Text = dt.ToString("dd/MM/yyyy");
                    
                 }
                catch
                {
                    Response.Redirect("login.aspx");
                }
            }
        }

        protected void masterpage_Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

        protected void masterpage_ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
           
           try
            {
                Showmessage("You want to logout.");
            }
            catch
           {

           }
        }

        private void Showmessage(string p)
        {
            ScriptManager.RegisterStartupScript(Page,this.GetType(),"alert",string.Format("alert('{1}','{0}');",p),true);
        }

        protected void masterpage_ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                Showmessage("Go to home.");
            }
            catch
            {

            }
        }
    }
}