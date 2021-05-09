using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class support : System.Web.UI.Page
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
        if (!IsPostBack)
        {
            BindVendorDropDown();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/default.aspx");
    }

    public void BindVendorDropDown()
    {
        var qq = from a in dl.da.DomainTables
                 select new
                 {
                     a.DomainNames,
                     a.Id
                 };
        DropDownList1.DataTextField = "DomainNames";
        DropDownList1.DataValueField = "Id";
        DropDownList1.DataSource = qq;
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, "--------Select Domain--------");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(DropDownList1.SelectedIndex==0)
        {

        }
        else
        {
            Session["dn"] = DropDownList1.SelectedItem.ToString();
            Response.Redirect("checkcomparedomain.aspx");
        }
    }
}