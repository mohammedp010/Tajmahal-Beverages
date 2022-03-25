using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserID"] == null)
        {
            Response.Redirect("Product.aspx");
        }
    }

        //void displayCart()
        //{
        //    string tr = "";

        //    try{
        //        if (Session["UserID"] != null)
        //        {
        //            SqlCommand cmd = SqlCommand("")
        //        }

        //    }
        //    catch(Exception ex){
        //    }
        //}
    
}