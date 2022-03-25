using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ViewCart : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserID"] == null)
        {
            Response.Redirect("Product.aspx");
        }
        displayCartSummary();
        SqlCommand cmd = new SqlCommand("CartDetailGetForFront", Global.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@RId", Session["UserID"]).DbType = DbType.Int64;
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        
    }

    void displayCartSummary()
    {

        SqlCommand cmd = new SqlCommand("ShowCartSummary", Global.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@RId", Session["UserID"]).DbType = DbType.Int64;
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds);

            try
            {
                if (Session["UserID"] != null)
                {


                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        lblSubTotal.Text = ds.Tables[0].Rows[0]["TotalAmt"].ToString();
                        lblNetAmt.Text = ds.Tables[0].Rows[0]["NetAmt"].ToString();
                    } 


                }
            }
            catch (Exception ex)
            { }
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {


        ImageButton imgplus = (ImageButton)sender;
        GridViewRow gvr = (GridViewRow)(imgplus.Parent.NamingContainer);
        Int64 id = Convert.ToInt64(GridView1.DataKeys[gvr.RowIndex].Values["ProductId"]);

        try
        {
            Global.con.Open();
            SqlCommand cmd1 = new SqlCommand("CartQtyAdd", Global.con);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.AddWithValue("@RId", Session["UserID"]).DbType = DbType.Int64;
            cmd1.Parameters.AddWithValue("@ProductId", id).DbType = DbType.Int64;

            cmd1.ExecuteNonQuery();
            cmd1.Dispose();
            Global.con.Close();
            GridView1.DataBind();
            displayCartSummary();

        }
        catch (Exception ex)
        { }
        finally
        {
            Global.con.Close();
        }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("ShowCartSummary", Global.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@RId", Session["UserID"]).DbType = DbType.Int64;
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds);

      
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton imgplus = (ImageButton)sender;
        GridViewRow gvr = (GridViewRow)(imgplus.Parent.NamingContainer);
        Int64 id = Convert.ToInt64(GridView1.DataKeys[gvr.RowIndex].Values["ProductId"]);

        try
        {
            Global.con.Open();
            SqlCommand cmd1 = new SqlCommand("CartQtyRemove", Global.con);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.AddWithValue("@RId", Session["UserID"]).DbType = DbType.Int64;
            cmd1.Parameters.AddWithValue("@ProductId", id).DbType = DbType.Int64;

            cmd1.ExecuteNonQuery();
            cmd1.Dispose();
            Global.con.Close();
            GridView1.DataBind();
            displayCartSummary();
        }
        catch (Exception ex)
        { }
        finally
        {
            Global.con.Close();
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["Shipping"] = 50;
        Session["Subtotal"] = lblSubTotal.Text;
        Session["NetToal"] = lblNetAmt.Text;
        Response.Redirect("Order.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        
        //SqlCommand cmd = new SqlCommand("OfferCheck", Global.con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@OffName",TextBox2.Text).DbType = DbType.String;
        //SqlDataAdapter adp = new SqlDataAdapter(cmd);
        //DataSet ds = new DataSet();
        //adp.Fill(ds);

        //int net = Convert.ToInt16(lblSubTotal.Text);

        //if (ds.Tables[0].Rows.Count > 0)
        //{
        //    net = net * (50/100);
        //    String newnet = net.ToString();
        //    lblSubTotal.Text = newnet;
        //}

    }
    
    
}