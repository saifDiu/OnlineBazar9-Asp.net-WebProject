using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace OnlineBazar
{
    public partial class productDetails : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           // DataTable dt = new DataTable();
           // dt = (DataTable)Session["buyitems"];
            //if (dt != null)
            //{
               
            //    lblMasterStatus.Text = dt.Rows.Count.ToString();
            //}
            //else
            //{
            //    lblMasterStatus.Text = "0";

            //}
            getProductDetails();

        }



        public void getProductDetails()
        {
            if(!IsPostBack)
            {
                DataTable dt = new DataTable();
                if(Request.QueryString["id"] != null)
                {
                    
                    
                        String mycon = "Data Source=DESKTOP-DK4F0I6\\SAIF;Initial Catalog=onlineBazar;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from Allproduct where prodID=" + Request.QueryString["id"];
                        Console.WriteLine(myquery);
                    
                        SqlDataAdapter sda = new SqlDataAdapter(myquery,mycon);
                    DataSet ds = new DataSet();
                    sda.Fill(ds);
                    DataList1.DataSource = ds;
                    DataList1.DataBind();
                       
        
                   
                }
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "addtocart")
            {
                
               DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
   
                Response.Redirect("AddtoCart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());


            }

        }
    }
}