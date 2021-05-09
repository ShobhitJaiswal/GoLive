using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class css_userregistration : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void txtUsername_TextChanged(object sender, EventArgs e)
    {
        var q = dl.checkUsername(username.Text);
        var w = dl.chkUsername(username.Text);
        if (q.Any() || w.Any())
        {
            msg.Visible = true;
            Label1.Text = "UserName Alredy Exist";
        }
        else
        {
            msg.Visible = false;
        }
    }

    protected void createaccount_Click(object sender, EventArgs e)
    {
        dl.UserRegistrationMethod(username.Text,fullname.Text,email.Text,confirmpassword.Text);
          username.Text = fullname.Text = email.Text = password.Text = confirmpassword.Text = "";
        msg.Visible = true;
        Label1.Text = "!!....Account Created....!!";
    }
}