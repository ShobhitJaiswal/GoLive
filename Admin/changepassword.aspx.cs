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
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/default.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        var q = dl.AdminChangePassword(username1.Text);
        if (q.Any())
        {
            foreach (LoginTable k in q)
            {
                k.Password = confirmpassword1.Text;
                dl.da.SubmitChanges();
                msg2.Visible = true;
                Label3.Text = "Password change successfully!!!";
            }
        }
        else
        {
            msg2.Visible = true;
            Label3.Text = "User Name is Incorrect";
        }
        password1.Text = confirmpassword1.Text = username1.Text = "";
    }
}