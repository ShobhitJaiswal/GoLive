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
    }

    protected void sendmail_Click(object sender, EventArgs e)
    {
        string type = DropDownList1.Text;
        dl.SendFeedBack(name1.Text, email1.Text, type, message1.Text);
        msg.Visible = true;
        Literal1.Text = "Mail Sent..!";
        name1.Text = email1.Text = message1.Text = "";
        DropDownList1.SelectedIndex = 0;
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/default.aspx");
    }
}