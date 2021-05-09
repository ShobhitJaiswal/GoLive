using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class css_userregistration : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["a"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
        }
        catch
        {
            Response.Redirect("~/login.aspx");
        }
    }

    protected void next_Click(object sender, EventArgs e)
    {
        if(DropDownList1.SelectedIndex==1)
        {
            Response.Redirect("~/Vendor/updateplan.aspx");
        }
        else if (DropDownList1.SelectedIndex == 2)
        {
            Response.Redirect("~/Vendor/updatedomain.aspx");
        }
        else
        {
            Literal1.Visible = true;
            Literal1.Text = "Something Wrong..!!!!";
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/default.aspx");
    }
}