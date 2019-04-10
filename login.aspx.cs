using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBazar
{
    public partial class WebForm1 : System.Web.UI.Page
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
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("registration.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            {
                dbcon();
                SqlParameter p1 = new SqlParameter("@username", tbxName.Text.Trim());
                SqlParameter p2 = new SqlParameter("@_password", tbxpass.Text.Trim());
                SqlCommand cmd = new SqlCommand("log_in", con);
                cmd.Parameters.Add(p1);
                cmd.Parameters.Add(p2);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["user"] = tbxName.Text;
                    Response.Redirect("Customerpannel.aspx");
                }
                else
                {
                    lblerror.Text = "Log in Failed";
                }
            }
        }
    }
}