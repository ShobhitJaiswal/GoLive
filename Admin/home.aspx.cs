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

        Label1.Text = Convert.ToString(Session["a"]);
        var q = from a in dl.da.FeedBackTables
                select a.Id;
        int fback =Convert.ToInt32( q.Count());
        Label2.Text = fback.ToString();

        var tp = from d in dl.da.HostingPlansTables
                 select d;
        int uu = Convert.ToInt32(tp.Count());
        Label4.Text = uu.ToString();

        var td = from d in dl.da.HostDomainsTables
                 select d;
        int y = Convert.ToInt32(td.Count());
        Label5.Text = y.ToString();

        var tu = from a in dl.da.ProfileTables
                 select a;
        int b = Convert.ToInt32(tu.Count());
        Label6.Text = b.ToString();

        var tv = from d in dl.da.VendorProfileTables
                 select d;
        int c = Convert.ToInt32(tv.Count());
        Label7.Text = c.ToString();

        int uv = b + c;
        Label8.Text = uv.ToString();
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/default.aspx");
    }

}