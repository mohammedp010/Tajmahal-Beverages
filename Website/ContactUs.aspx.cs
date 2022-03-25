using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void ClosrMessages()
    {
        error.Style.Add("display", "none");
        info.Style.Add("display", "none");
        success.Style.Add("display", "none");
        attention.Style.Add("display", "none");
    }
    protected void fvcontact_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {

            ClosrMessages();
            lblSuccess.Text = "Sent! We'll reach you soon ";
            success.Style.Add("display", "block");
            
           
        

        }
    }

    protected void fvcontact_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {

    }
    protected void fvcontact_ItemDeleted(object sender, FormViewDeletedEventArgs e)
    {

    }
}