using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class vendorregistration : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void txtUsername_TextChanged(object sender, EventArgs e)
    {
        var q = dl.checkUsername(username.Text);
        var w = dl.chkUsername(username.Text);
        if (q.Any() || w.Any())
        {
            Label1.Visible = true;
            Label1.Text = "UserName Alredy Exist";
        }
    }


    protected void createaccount_Click1(object sender, EventArgs e)
    {
        if(FileUpload1.HasFile)
        { 
         FileUpload1.SaveAs(Server.MapPath("~/Vendor/VendorLogo/"+FileUpload1.FileName));
         string logo = FileUpload1.FileName;
         string logopath = "~/Vendor/VendorLogo/" + FileUpload1.FileName;
         dl.VendorRegistrationMethod(username.Text, vname.Text, email1.Text, confirmpassword.Text, logo, logopath);
         username.Text = email1.Text = password.Text = confirmpassword.Text = vname.Text = "";
         Label1.Visible = true;
         Label1.Text = "!!...Account Created Now Login...!!";
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Please Upload Logo";
        }
    }
}