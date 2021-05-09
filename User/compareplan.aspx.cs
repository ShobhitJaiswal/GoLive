using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
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

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/default.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0 || DropDownList2.SelectedIndex == 0)
        {
            err.Visible = true;
            Label1.Text = "Please Select Right Option..!!";
        }
        else
        {   
        Session["pf"] = DropDownList1.SelectedItem.ToString();
        Session["pt"] = DropDownList2.SelectedItem.ToString();
        Response.Redirect("~/User/checkcompareplan.aspx");
        }
    }
}