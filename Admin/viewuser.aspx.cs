using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_bootstrap_elements : System.Web.UI.Page
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
        DataList1.DataSource = dl.ShowUser();
        DataList1.DataBind();
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(((LinkButton)sender).CommandArgument);
        dl.DeleteUser(id);
    }

    protected void Logout1(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/default.aspx");
    }
}