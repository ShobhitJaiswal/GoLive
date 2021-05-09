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
       
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if(DropDownList1.SelectedIndex==1)
        {
            passerr.Visible = true;
           Label1.Text= dl.UserForgetPassword(TextBox1.Text);
            DropDownList1.SelectedIndex = 0;
            TextBox1.Text = "";
        }
        else if(DropDownList1.SelectedIndex==2)
        {
            passerr.Visible = true;
            Label1.Text = dl.VendorForgetPassword(TextBox1.Text);
            DropDownList1.SelectedIndex = 0;
            TextBox1.Text = "";
        }
        else if(DropDownList1.SelectedIndex==3)
        {
            passerr.Visible = true;
            Label1.Text = dl.AdminForgetPassword(TextBox1.Text);
            DropDownList1.SelectedIndex = 0;
            TextBox1.Text = "";
        }
        else
        {
            passerr.Visible = true;
            Label1.Text = "User Invalid....!!!!";
            DropDownList1.SelectedIndex = 0;
            TextBox1.Text = "";
        }
    }
}