using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;


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
        if (!IsPostBack)
        {
            BindGridView();
        }
        string un = Convert.ToString(Session["a"]);
    }
    protected void BindGridView()
    {
        var data = from i in dl.da.HostDomainsTables
                   where i.VendorID==((from a in dl.da.VendorProfileTables where a.UserName==Convert.ToString(Session["a"]) select a.Id).Single())
                   select i;
        if (data != null)
        {
            GridView1.DataSource = data;
            GridView1.DataBind();
        }
    }

    // Edit the Gridview's row
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindGridView();
    }

    // Update the Gridview's row
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        // Find student id for update the row
        int id = (int)GridView1.DataKeys[e.RowIndex].Value;

        // Find new updated values for TexBox
        TextBox name = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt_Name");
        TextBox dp = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt_Dp");
        // Select specific row from database table
        HostDomainsTable hd = (from i in dl.da.HostDomainsTables
                                where i.Id == id
                                select i).First();
        hd.DomainName = name.Text;
        hd.DomainPrice = dp.Text;
        // Update changes in database table
        dl.da.SubmitChanges();
        try
        {
            var q = from a in dl.da.ProfileTables
                    select a;
            foreach(ProfileTable k in q)
            { 
             MailMessage msg = new MailMessage();
             msg.From = new MailAddress("servicesgolive@gmail.com");
             msg.To.Add(k.E_mail);
             msg.Subject = "Plan Updated.";
             msg.Body = "Domain Name : "+name.Text+"   Price : "+dp.Text;
             msg.IsBodyHtml = true;
             SmtpClient smtp = new SmtpClient();
             smtp.Host = "smtp.gmail.com";
             smtp.Port = 587;
             System.Net.NetworkCredential networkcred = new System.Net.NetworkCredential();
             networkcred.UserName = "servicesgolive@gmail.com";
             networkcred.Password = "9455206407";
             smtp.UseDefaultCredentials = true;
             smtp.Credentials = networkcred;
             smtp.EnableSsl = true;
             smtp.Send(msg);
            }
        }
        catch
        {
            
        }

        GridView1.EditIndex = -1;
        BindGridView();
    }

    // Cancel row edit operation
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        BindGridView();
    }

    // Delete row from database table
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        // Find student id for edit the row
        int id = (int)GridView1.DataKeys[e.RowIndex].Value;
        // Select specific row from database table
        HostDomainsTable hd = (from i in dl.da.HostDomainsTables
                                where i.Id == id
                                select i).First();

        // Delete row from database table
               dl.da.HostDomainsTables.DeleteOnSubmit(hd);
     
        dl.da.SubmitChanges();
        GridView1.EditIndex = -1;
        BindGridView();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/default.aspx");
    }
}