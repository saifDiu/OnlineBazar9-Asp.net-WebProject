using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBazar
{
    public partial class registration : System.Web.UI.Page
    {
        SqlConnection con = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void dbcon()
        {
            string connection = "Data Source=DESKTOP-DK4F0I6\\SAIF;Initial Catalog=onlineBazar;Integrated Security=True";
            con = new SqlConnection(connection);
            con.Open();
        }
        protected void clearTextbox()
        {
            tbxName.Text = string.Empty;
            contact_email.Text = string.Empty;
            tbxphone.Text = string.Empty;
            tbxusername.Text = string.Empty;
            tbxpass.Text = string.Empty;
        }
        protected void btnsave_Click(object sender, EventArgs e)
        {
            dbcon();
            string query = "insert into customer values (@name,@email,@phone,@username,@password)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@name", tbxName.Text);
            cmd.Parameters.AddWithValue("@email", contact_email.Text);
            cmd.Parameters.AddWithValue("@phone", tbxphone.Text);
            cmd.Parameters.AddWithValue("@username", tbxusername.Text);
            cmd.Parameters.AddWithValue("@password", tbxpass.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            clearTextbox();
            labelRegistration.Text = "Registration successful !";
        }
    }
}