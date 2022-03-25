using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

public partial class Order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserID"] == null)
        {
            Response.Redirect("Product.aspx");
        }
        else
        {
            try
            {
                string ShowDeatail = "";
                Global.con.Open();
                SqlCommand cmd = new SqlCommand("CartGet2", Global.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@RId", Session["UserID"]).DbType = DbType.Int64;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                Global.con.Close();
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Decimal BillAmt = Convert.ToDecimal(ds.Tables[0].Rows[0]["CartTotal"].ToString());
                    Decimal GST = (BillAmt * 18) / 100;
                    Decimal NetAmt = BillAmt + GST + Convert.ToDecimal(Session["Shipping"]);

                    ShowDeatail += "<li>Particulars <span>Amount</span></li>";

                    ShowDeatail += "<li class=\"fw-normal\">Sub Total <span>" + ds.Tables[0].Rows[0]["CartTotal"].ToString() + "</span></li>";
                    ShowDeatail += "<li class=\"fw-normal\">Shipping <span>" + Session["Shipping"] + "</span></li>";
                    ShowDeatail += "<li class=\"fw-normal\">GST (18%) <span>" + Convert.ToString(GST) + "</span></li>";
                    ShowDeatail += "<li class=\"fw-normal\">Discount applied <span>0</span></li>";
                    ShowDeatail += "<li class=\"total-price\">Total <span>" + Convert.ToString(NetAmt) + "</span></li>";

                    ulCart.InnerHtml = ShowDeatail;
                }
                else
                {
                    Response.Redirect("ViewCart.aspx");
                }
            }
            catch (Exception ex) { }
            finally
            {
                Global.con.Close();
            }

        }
    }




    protected void btnOrder_Click(object sender, EventArgs e)
    {
        Int32 ShipId;
        try
        {
            Global.con.Open();
            SqlCommand cmd = new SqlCommand("ShippingInsert", Global.con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@RId", Session["UserID"].ToString()).DbType = DbType.Int32;
            cmd.Parameters.AddWithValue("@FirstName", tbFirstName.Text).DbType = DbType.String;
            cmd.Parameters.AddWithValue("@LastName", tbLastName.Text).DbType = DbType.String;
            cmd.Parameters.AddWithValue("@AreaID", DropDownList1.SelectedValue).DbType = DbType.String;
            cmd.Parameters.AddWithValue("@Address", tbAddress.Text + " " + tbAddress2.Text).DbType = DbType.String;
            cmd.Parameters.AddWithValue("@Pincode", tbPincode.Text).DbType = DbType.String;
            cmd.Parameters.AddWithValue("@PhoneNo", tbPhone.Text).DbType = DbType.String;
            ShipId = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            cmd.Dispose();
            Global.con.Close();
            
            Response.Redirect("Payment.aspx?SID=" + ShipId);
        }
        catch (Exception ex) { }
    }
}