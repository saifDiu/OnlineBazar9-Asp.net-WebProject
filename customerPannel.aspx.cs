using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace OnlineBazar
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            panelCustomer.Visible = false;
            paneluser.Visible = false;
            if (Session["User"] != null)
            {
                tbxUser.Text = "welcome" + Session["user"].ToString();
            }
        }


        protected void btnlogout_Click1(object sender, EventArgs e)
        {

            Session.Remove("user");
            Response.Redirect("login.aspx");

        }

        protected void btnrequestProduct_Click(object sender, EventArgs e)
        {
            panelCustomer.Visible = true;
        }

        protected void btnrequest_Click(object sender, EventArgs e)
        {
            int length = productimage.PostedFile.ContentLength;
            byte[] image = new byte[length];
            productimage.PostedFile.InputStream.Read(image, 0, length);

            SqlConnection con =new SqlConnection("Data Source=DESKTOP-DK4F0I6\\SAIF;Initial Catalog=onlineBazar;Integrated Security=True");
            string query = "insert into customerRequest values(@prodname,@category,@description,@price,@image)";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.Parameters.AddWithValue("@prodname", tbxproductName.Text);
            cmd.Parameters.AddWithValue("@category", dropdowncategory.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@description", tbxDescription.Text);
            cmd.Parameters.AddWithValue("@price", tbxprice.Text);
            cmd.Parameters.AddWithValue("@image", image);
            cmd.ExecuteNonQuery();
            con.Close();
            panelCustomer.Visible = true;
            requestproduct.Text = "Product details sent Successfully !!!";
        }

        protected void btnprofile_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-DK4F0I6\\SAIF;Initial Catalog=onlineBazar;Integrated Security=True");
            string query = "select * from customer where username = '"+ Session["user"].ToString() + "'";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            tbxname.Text = dt.Rows[0]["_name"].ToString();
            tbxemail.Text = dt.Rows[0]["email"].ToString();
            tbxphone.Text = dt.Rows[0]["phone"].ToString();
            tbxusername.Text = dt.Rows[0]["username"].ToString();
            password.Text = dt.Rows[0]["_password"].ToString();
            paneluser.Visible = true;
           
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-DK4F0I6\\SAIF;Initial Catalog=onlineBazar;Integrated Security=True");
            string query = "update customer set _name='"+tbxname.Text+"',email='"+tbxemail.Text+"',phone='"+tbxphone.Text+"',username='"+tbxusername.Text+"',_password='"+password.Text+"' where username = '" + Session["user"].ToString() + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            if (cmd.ExecuteNonQuery() == 1)
            {
                lblupdate.Text = "Updated Succesfully";
            }
            else
            {
                lblupdate.Text = "Update error";
            }
            paneluser.Visible = true;
            con.Close();
        }
    }
}