using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Admin_ProductMaster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserID"] == null)
        {
            Response.Redirect("AdminLogin.aspx");
        }
        lblSuccess.Enabled = false;
        lblError.Enabled = false;
        

        
    }
    private void ClosrMessages()
    {
        error.Style.Add("display", "none");
        info.Style.Add("display", "none");
        success.Style.Add("display", "none");
        attention.Style.Add("display", "none");
    }
    protected void fvProductMaster_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            gvProductMaster.DataBind();


            ClosrMessages();
            lblSuccess.Text = "Product Added Successfully! ";
            success.Style.Add("display", "block");
           
        }
        
    }
    protected void fvProductMaster_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            gvProductMaster.DataBind();
            ClosrMessages();
            lblSuccess.Text = "Product Updated Successfully! ";
            success.Style.Add("display", "block");
        }
        
    }
    protected void gvProductMaster_SelectedIndexChanged(object sender, EventArgs e)
    {
        fvProductMaster.ChangeMode(FormViewMode.Edit);
        fvProductMaster.DataBind();
    }
    protected void dsProductMaster_Inserting(object sender, SqlDataSourceCommandEventArgs e)
    {
        FileUpload fuImagePath = (FileUpload)fvProductMaster.FindControl("fuProduct");
        string strGuID = Guid.NewGuid().ToString();

        if (fuImagePath.HasFile)
        {
            String extn = System.IO.Path.GetExtension(fuImagePath.PostedFile.FileName).ToLower();
            if (extn.Equals(".jpg") || extn.Equals(".jpeg") || extn.Equals(".gif") || extn.Equals(".png"))
            {
                String f1 = System.IO.Path.GetFileNameWithoutExtension(fuImagePath.PostedFile.FileName);
                string savefile1 = Server.MapPath("../ProductImages/") + f1 + strGuID + extn;
                string strPhoto = "ProductImages/" + f1 + strGuID + extn;
                fuImagePath.SaveAs(savefile1);

                e.Command.Parameters["@ImagePath"].Value = strPhoto;
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Sorry!", "alert('Invalid file format')", true);
                fuImagePath.Focus();
                e.Cancel = true;
            }
            
        }

        
    }
    //protected void btnUpload_Click(object sender, EventArgs e)
    //{

    //}

   
    protected void gvProductMaster_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            gvProductMaster.DataBind();
            ClosrMessages();
            lblSuccess.Text = "Product Deleted Successfully! ";
            success.Style.Add("display", "block");
        }
    }
    protected void MRPTextBox_TextChanged(object sender, EventArgs e)
    {
        TextBox salestxt = (TextBox)fvProductMaster.FindControl("SalesRateTextBox");
        TextBox mrptxt = (TextBox)fvProductMaster.FindControl("MRPTextBox");
        TextBox disctxt = (TextBox)fvProductMaster.FindControl("DiscountAmtTextBox");

        
        if (mrptxt.Text != "" && disctxt.Text != "")
        {
            salestxt.Text = Convert.ToString(Convert.ToDecimal(mrptxt.Text) - Convert.ToDecimal(disctxt.Text));
        }
    }
    protected void DiscountAmtTextBox_TextChanged(object sender, EventArgs e)
    {
        TextBox salestxt = (TextBox)fvProductMaster.FindControl("SalesRateTextBox");
        TextBox mrptxt = (TextBox)fvProductMaster.FindControl("MRPTextBox");
        TextBox disctxt = (TextBox)fvProductMaster.FindControl("DiscountAmtTextBox");

        
        if (mrptxt.Text != "" && disctxt.Text != "")
        {
            salestxt.Text = Convert.ToString(Convert.ToDecimal(mrptxt.Text) - Convert.ToDecimal(disctxt.Text));
        }
    }
    protected void fvProductMaster_ItemInserting(object sender, FormViewInsertEventArgs e)
    {
        //TextBox txtPfl = (TextBox)fvProductMaster.FindControl("FNameTextBox");
        DropDownList fl = (DropDownList)fvProductMaster.FindControl("ddFlavour");
        TextBox txtqty = (TextBox)fvProductMaster.FindControl("VolumeTextBox");
        SqlCommand cmd = new SqlCommand("select * from ProductMaster where FId = '" + fl.SelectedValue + "' AND Volume= '" + txtqty.Text + "'  ", Global.con);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            ClosrMessages();
            lblError.Text = "Product already exists!";
            error.Style.Add("display", "block");
            e.Cancel = true;
        }
    }
    protected void dsProductMaster_Updating(object sender, SqlDataSourceCommandEventArgs e)
    {
        FileUpload fuImagePath = (FileUpload)fvProductMaster.FindControl("fuProductUpdate");
        string strGuID = Guid.NewGuid().ToString();

        if (fuImagePath.HasFile)
        {
            String extn = System.IO.Path.GetExtension(fuImagePath.PostedFile.FileName).ToLower();
            if (extn.Equals(".jpg") || extn.Equals(".jpeg") || extn.Equals(".gif") || extn.Equals(".png"))
            {
                String f1 = System.IO.Path.GetFileNameWithoutExtension(fuImagePath.PostedFile.FileName);
                string savefile1 = Server.MapPath("../ProductImages/") + f1 + strGuID + extn;
                string strPhoto = "ProductImages/" + f1 + strGuID + extn;
                fuImagePath.SaveAs(savefile1);

                e.Command.Parameters["@ImagePath"].Value = strPhoto;
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Sorry!", "alert('Invalid file format')", true);
                fuImagePath.Focus();
                e.Cancel = true;
            }

        }
    }
}