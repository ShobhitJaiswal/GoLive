using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void new_submit_Click(object sender, EventArgs e)
    {
        Response.Redirect("registration.aspx");
    }

    protected void signin_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 1)
        {
            Session["a"] = username.Text;           
            var q = dl.Userlogin(username.Text, password.Text);
            if (q.Any())

            {

                Response.Redirect("~/User/userhome.aspx");
            }
            else
            {
                msg.Visible = true;
                Literal1.Text = "Something Worng!!!";
                username.Text = password.Text = "";
                DropDownList1.SelectedIndex = 0;
            }
        }
        else if (DropDownList1.SelectedIndex == 2)
        {
            var q = dl.Vendorlogin(username.Text, password.Text);
            if (q.Any())
            {
                Session["a"] = username.Text;
                Response.Redirect("~/Vendor/vendorhome.aspx");
            }
            else
            {
                msg.Visible = true;
                Literal1.Text = "Something Wrong!!!!";
                username.Text = password.Text = "";
                DropDownList1.SelectedIndex = 0;
            }
        }

        else if (DropDownList1.SelectedIndex == 3)
        {
            Session["a"] = username.Text;
            var q = dl.Adminlogin(username.Text, password.Text);
            if (q.Any())
            {
                Response.Redirect("~/admin/home.aspx");
            }
            else
            {
                msg.Visible = true;
                Literal1.Text = "Something Wrong!!!";
                username.Text = password.Text = "";
                DropDownList1.SelectedIndex = 0;
            }
        }
        else
        {
            msg.Visible = true;
            Literal1.Text = "Something Wrong....!!!";
            username.Text = password.Text = "";
            DropDownList1.SelectedIndex = 0;
        }
    }
}