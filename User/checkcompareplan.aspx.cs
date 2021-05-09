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
        string ptype = Convert.ToString(Session["pt"]);
        string pform = Convert.ToString(Session["pf"]);
        var q = from aa in dl.da.VendorProfileTables
                from b in dl.da.HostingPlansTables.Where(oo => oo.VendorID == aa.Id && oo.Platform==pform && oo.PlanType==ptype)
                from cc in dl.da.RateReviewTables.Where(oo => oo.VendorID == aa.Id).GroupBy(oo => oo.VendorID).Select(t => new { rateavg = (t.Sum(oo => oo.Rate) / t.Count(oo => Convert.ToBoolean(oo.Rate))) })
                select new
                {
                    b.Email_size,
                    b.Ftp_size,
                    b.PlanPrice,
                    b.SpaceSize,
                    b.Websites,
                    aa.Logo,
                    aa.VendorName,
                    cc.rateavg
                };
        DataList4.DataSource = q;
        DataList4.DataBind();
        string un = Convert.ToString(Session["a"]);
        Label7.Text = pform;
        Label8.Text = ptype;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/default.aspx");
    }

}