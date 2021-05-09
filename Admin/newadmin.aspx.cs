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
        Label2.Text= Convert.ToString(Session["a"]);
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/default.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        dl.CreateNewAdmin(username.Text, confirmpassword.Text);
        username.Text = password.Text = confirmpassword.Text = "";
        msg.Visible = true;
        Label1.Text = "!!....Account Created....!!";
    }
}