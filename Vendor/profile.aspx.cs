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
        var pp = from c in dl.da.VendorProfileTables
                 where c.UserName == Session["a"].ToString()
                 from a in dl.da.RateReviewTables where a.VendorID==c.Id
                 from b in dl.da.ProfileTables
                 where b.Id==a.UserId
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
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/default.aspx");
    }
    
}