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
        if(!IsPostBack)
        {
            BindVendorDropDown();
        }
        var pp = from a in dl.da.RateReviewTables
                 from b in dl.da.ProfileTables
                 where b.UserName == Session["a"].ToString()
                 from c in dl.da.VendorProfileTables
                 where c.Id == a.VendorID
                 select new
                 {
                     a.Rate,
                     b.FullName,
                     c.VendorName,
                     a.Review
                 };
        DataList1.DataSource = pp;
        DataList1.DataBind();

    }
    public void BindVendorDropDown()
    {
        var qq = from a in dl.da.VendorProfileTables
                 select new
                 {
                     a.VendorName,a.Id
                 };
        DropDownList1.DataTextField = "VendorName";
        DropDownList1.DataValueField = "Id";
        DropDownList1.DataSource = qq;
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, "--------Select Vendor--------");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/default.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        dl.RateReviewMethod(Convert.ToInt32(DropDownList1.SelectedValue),r1.CurrentRating,TextBox1.Text,Session["a"].ToString());
        TextBox1.Text = "";
        DropDownList1.SelectedIndex = 0;
        r1.CurrentRating = 0;
    }
    
}