using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        displayCartDetail();
        if (!IsPostBack)
        {
            DataList3.Visible = false;
        }
    }

    void displayCartDetail()
    { 
        String strLi = "";

        try {
            if (Session["UserID"] != null)
            {
                SqlCommand cmd = new SqlCommand("CartDetailGetForFront", Global.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@RId", Session["UserID"]).DbType = DbType.Int64;
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adp.Fill(ds);

                string logoutStr = "";
                //logoutStr += "<a href=\"Login.aspx\" class=\"icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11\">";
                //logoutStr += "<img src=\"/feather%20icons/log-out.svg\" alt=\"\" />";
                //logoutStr += "</a>";



                
                if (ds.Tables[0].Rows.Count > 0)
                {
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        strLi += "<li class=\"header-cart-item flex-w flex-t m-b-12\">";
                        strLi += "    <div class=\"header-cart-item-img\">";
                        strLi += "        <img src=\"" + ds.Tables[0].Rows[i]["ImagePath"].ToString() + "\" alt=\"" + ds.Tables[0].Rows[i]["ProductName"].ToString() + "\">";
                        strLi += "    </div>";
                        strLi += "    <div class=\"header-cart-item-txt p-t-8\">";
                        strLi += "        <a href=\"#\" class=\"header-cart-item-name m-b-18 hov-cl1 trans-04\">" + ds.Tables[0].Rows[i]["ProductName"].ToString() + "";
                        strLi += "        </a>";
                        strLi += "        <span class=\"header-cart-item-info\">" + ds.Tables[0].Rows[i]["Quantity"].ToString() + " x " + ds.Tables[0].Rows[i]["SalesRate"].ToString() + "";
                        strLi += "        </span>";
                        strLi += "    </div>";
                        strLi += "</li>";


                        string cartTotalQty = "";
                        
                        
                        


                            cartTotalQty += "<div class=\"icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart\" data-notify=\"" + ds.Tables[0].Rows[i]["TotalQty"].ToString() + "\">";
                            cartTotalQty += "    <i class=\"fas fa-shopping-cart\"></i>";
                            cartTotalQty += "</div>";
                            

                            

                            
                            divHeaderCart.InnerHtml = cartTotalQty;
                            
                            spanTotalAmt.InnerHtml = ds.Tables[0].Rows[i]["TotalAmt"].ToString();
                        
                    }
                }
                else
                {
                    strLi += "<li class=\"header-cart-item flex-w flex-t m-b-12\">";
                    strLi += "    <div class=\"header-cart-item-txt p-t-8\">";
                    strLi += "        <a href=\"#\" class=\"header-cart-item-name m-b-18 hov-cl1 trans-04\">Empty cart :(";
                    strLi += "        </a>";
                    strLi += "    </div>";
                    strLi += "</li>";
                }                
            }
            else {
                strLi += "<li class=\"header-cart-item flex-w flex-t m-b-12\">";
                strLi += "    <div class=\"header-cart-item-txt p-t-8\">";
                strLi += "        <a href=\"#\" class=\"header-cart-item-name m-b-18 hov-cl1 trans-04\">You need to login";
                strLi += "        </a>";
                strLi += "    </div>";
                strLi += "</li>";

                string cartTotalQty = "";
                cartTotalQty += "<div class=\"icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart\" data-notify=\"0\">";
                cartTotalQty += "    <i class=\"fas fa-shopping-cart\"></i>";
                cartTotalQty += "</div>";
                

                divHeaderCart.InnerHtml = cartTotalQty;
                
            }
            ulCartList.InnerHtml = strLi;
        }
        catch (Exception ex)
        { }
        
        
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
       
        Int64 id = Convert.ToInt64(DataList1.FindControl("ProductIdLabel"));
       
        //Session["PID"] = id;
        //Session["qty"] = qty.Text;
        if (Session["UserID"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            try
            {
                
                
                LinkButton lbtn = (LinkButton)sender;
                DataListItem dli = (DataListItem)lbtn.Parent;
                String ProductID = DataList1.DataKeys[dli.ItemIndex].ToString();
                
                //String SR = DataList1.DataMember[dli.ItemIndex].ToString();
                //Label SalesRate = (Label)DataList1.FindControl("MRPLabel");
                Global.con.Open();
                SqlCommand cmd1 = new SqlCommand("CartInsert", Global.con);
                TextBox qty = (TextBox)DataList1.FindControl("txtqty");
                string SalesRate = (dli.FindControl("HiddenField1") as HiddenField).Value;
                cmd1.CommandType = CommandType.StoredProcedure;

                cmd1.Parameters.AddWithValue("@ProductId", ProductID).DbType = DbType.Int64;
                cmd1.Parameters.AddWithValue("@RId", Session["UserId"]).DbType = DbType.Int64;
                cmd1.Parameters.AddWithValue("@Quantity", 1).DbType = DbType.Int64;
                cmd1.Parameters.AddWithValue("@SalesRate", SalesRate).DbType = DbType.Decimal;

                cmd1.ExecuteNonQuery();
                ClientScript.RegisterStartupScript(GetType(), "Done!", "swal('Done!', 'Product Added to cart!', 'success')", true);

                Global.con.Close();
                displayCartDetail();

            }
            catch (Exception ex)
            {
            }
            finally
            {
                if (Global.con.State == ConnectionState.Open)
                    Global.con.Close();
            }
        }

    }
    public void displayWithWater()
    {
        DataList1.Visible = false;
         DataList3.Visible = true;
    }


    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        if (Session["UserID"] != null)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
        
    }
}