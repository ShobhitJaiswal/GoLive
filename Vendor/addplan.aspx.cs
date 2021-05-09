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

    protected void Button1_Click(object sender, EventArgs e)
    {
        string sessid = Session["a"].ToString();
        dl.AddPlanMethod(DropDownList1.Text, DropDownList2.Text, planprice.Text, nowebsite.Text, noemail.Text, ftpsize.Text, spacesize.Text, sessid);
        Label1.Visible = true;
        Label1.Text = "Plan Added.!!";
        DropDownList1.SelectedIndex =  DropDownList2.SelectedIndex = 0;
        planprice.Text = noemail.Text = ftpsize.Text = spacesize.Text = nowebsite.Text = "";
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/default.aspx");
    }
}