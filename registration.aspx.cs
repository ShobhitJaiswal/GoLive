using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void next_Click(object sender, EventArgs e)
    {
        if(DropDownList1.SelectedIndex==1)
        {
            Response.Redirect("userregistration.aspx");
            DropDownList1.SelectedIndex = 0;
        }
        else if (DropDownList1.SelectedIndex == 2)
        {
            Response.Redirect("vendorregistration.aspx");
            DropDownList1.SelectedIndex = 0;
        }
        else
        {
            DropDownList1.SelectedIndex = 0;
            msg.Visible = true;
            Literal1.Text = "Something Wrong...!!!";
        }
    }
}