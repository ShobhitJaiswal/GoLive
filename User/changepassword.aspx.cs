using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class forgetpassword : System.Web.UI.Page
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
    }

    protected void changepass_Click(object sender, EventArgs e)
    {
        var q = dl.UserChangePassword(email1.Text);
        if (q.Any())
        {
            foreach (ProfileTable k in q)
            {
                k.Password = confpass.Text;
                dl.da.SubmitChanges();
                Literal1.Text = "Password change successfully!!!";
            }
        }
        else
        {
            Literal1.Text = "Email is Incorrect";
        }
        pass.Text = confpass.Text = email1.Text = "";
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/default.aspx");
    }
}