using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace OnlineBazar.admin
{
    public partial class adminlogin : System.Web.UI.Page
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

        protected void tbxloginadmin_Click(object sender, EventArgs e)
        {
            dbcon();
            string query = "select * from adminLogin where username='"+tbxadminusername.Text+ "' and password ='" + tbxadminpass.Text + "' ";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["user"] = tbxadminusername.Text;
                Response.Redirect("adminpannel.aspx");
            }

        }
    }
}