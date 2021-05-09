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
        string DomainName = Session["dn"].ToString();
        var q = from aa in dl.da.VendorProfileTables

                from b in dl.da.HostDomainsTables.Where(oo => oo.VendorID == aa.Id && oo.DomainName==DomainName)
               
                from cc in dl.da.RateReviewTables.Where(oo => oo.VendorID == aa.Id).GroupBy(oo => oo.VendorID).Select(t => new { rateavg=( t.Sum(oo => oo.Rate)/t.Count(oo => Convert.ToBoolean( oo.Rate))) })
                
                select new
                {
                    b.DomainPrice,
                    aa.Logo,
                    aa.VendorName,
                    cc.rateavg
                };
        DataList4.DataSource = q;
        DataList4.DataBind();
        Label2.Text = DomainName;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/default.aspx");
    }


}