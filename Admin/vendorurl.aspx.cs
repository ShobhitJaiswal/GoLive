using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default : System.Web.UI.Page
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
        var q = from a in dl.da.VendorWebsiteTables
                from b in dl.da.VendorProfileTables
                where b.Id == a.VendorID
                select new
                {
                    a.Id,
                    a.url,
                    b.VendorName
                };
        DataList1.DataSource = q;
        DataList1.DataBind();
        Label1.Text = Convert.ToString(Session["a"]);
        if (!IsPostBack)
        {
            BindVendorDropDown();
        }
    }

    public void BindVendorDropDown()
    {
        var qq = from a in dl.da.VendorProfileTables
                 select new
                 {
                     a.VendorName,
                     a.Id
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

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(((LinkButton)sender).CommandArgument);
        dl.DeleteUser(id);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dl.vendorurl(Convert.ToInt32(DropDownList1.SelectedValue),TextBox1.Text);
        DropDownList1.SelectedIndex = 0;
        TextBox1.Text = "";
        Label2.Visible = true;
        Label2.Text = "URL Added..!!";
    }
}