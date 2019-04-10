using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace OnlineBazar
{
    public partial class displaySearchItems : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

            search();
        }

        public void search()
        {
            
            if(Request.QueryString["search"] != null)
            {
                lblid.Text = "Item Found";
                gridList();
            }
            else
            {
                
            }

           

           


        }
        public void gridList()
        {
            string myquery = "";
            String mycon = "Data Source=DESKTOP-DK4F0I6\\SAIF;Initial Catalog=onlineBazar;Integrated Security=True";
            SqlConnection scon = new SqlConnection(mycon);
            myquery = "select * from Allproduct where prodName like('%" + Request.QueryString["search"].ToString() + "%')";
            SqlDataAdapter sda = new SqlDataAdapter(myquery, mycon);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            sda.Fill(dt);
            
            DataList1.DataSource = ds;
            DataList1.DataBind();
            
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            
               
               // Response.Redirect("productDetails.aspx?id=" + dt.Rows[0]["prodID"].ToString());

            
        }

       
    }
}