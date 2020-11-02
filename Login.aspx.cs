using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lil
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_login_button_Click(object sender, EventArgs e)
        {
            string strcon = "Data Source=Desktop-J6KRVK5;Initial Catalog=Lil;Integrated Security=True";
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand com = new SqlCommand("Login", con);
            com.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("EmailAddress", login_email_textbox.Text);
            SqlParameter p2 = new SqlParameter("Password", login_password_textbox.Text);
            com.Parameters.Add(p1);
            com.Parameters.Add(p2);
            con.Open();
            SqlDataReader rd = com.ExecuteReader();
            if (rd.HasRows)
            {
                rd.Read();
                login_alert_label.Text = "Login successful.";
                login_alert_label.Visible = true;
            }
            else
            {
                login_alert_label.Text = "Invalid username or password.";
                login_alert_label.Visible = true;
            }
        }
    }
}