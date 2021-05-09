using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DataLayer
/// </summary>
public class DataLayer
{
    public DataClassesDataContext da = new DataClassesDataContext(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\GoLiveDatabase.mdf;Integrated Security=True");
    public void UserRegistrationMethod(string name, string fullname, string email, string password)
    {
        ProfileTable pt = new ProfileTable();
        pt.UserName = name;
        pt.FullName = fullname;
        pt.E_mail = email;
        pt.Password = password;
        da.ProfileTables.InsertOnSubmit(pt);
        da.SubmitChanges();
    }
public IEnumerable<ProfileTable>checkUsername(string usename)
    {
        var q = from a in da.ProfileTables
                where a.UserName == usename 
                select a;
        return q;
    }
    public IEnumerable<VendorProfileTable> chkUsername(string uname)
    {
        var w = from b in da.VendorProfileTables
                where b.UserName == uname
                select b;
        return w;
    }
    public void VendorRegistrationMethod(string uname,string name, string email, string password, string logo, string logopath)
    {

        VendorProfileTable vpt = new VendorProfileTable();
        vpt.VendorName = name;
        vpt.E_mail = email;
        vpt.Password = password;
        vpt.UserName = uname;
        vpt.Logo = logo;
        vpt.LogoPath = logopath;
        vpt.Status = "u";
        da.VendorProfileTables.InsertOnSubmit(vpt);
        da.SubmitChanges();
      }
    public void SendFeedBack(string name,string email, string utype, string message)
    {
        FeedBackTable ft = new FeedBackTable();
        ft.Name = name;
        ft.E_mail = email;
        ft.Usertype = utype;
        ft.Message = message;
        da.FeedBackTables.InsertOnSubmit(ft);
        da.SubmitChanges();
    }
   public void AddPlanMethod(string pform, string ptype, string pprice, string webs, string emailno, string ftpno, string ssize,string vid)
    {
        var q = (from a in da.VendorProfileTables
                 where a.UserName== vid
                 select a.Id).Single();
        HostingPlansTable hp = new HostingPlansTable();
        hp.Platform = pform;
        hp.VendorID = q;
        hp.PlanType = ptype;
        hp.PlanPrice = pprice;
        hp.Websites = webs;
        hp.Email_size = emailno;
        hp.Ftp_size = ftpno;
        hp.SpaceSize = ssize;
        da.HostingPlansTables.InsertOnSubmit(hp);
        da.SubmitChanges();
    }
    public void AddDomainMethod(string dname, string dprice,string vid)
    {
        var q = (from a in da.VendorProfileTables
                 where a.UserName == vid
                 select a.Id).Single();
        HostDomainsTable hd = new HostDomainsTable();
        hd.DomainName = dname;
        hd.DomainPrice = dprice;
        hd.VendorID = q;
        da.HostDomainsTables.InsertOnSubmit(hd);
        da.SubmitChanges();
    }
    public IEnumerable<ProfileTable>Userlogin(string uname, string password)
    {
        var q = from a in da.ProfileTables
                where a.UserName == uname && a.Password==password
                select a;
        return q;
    }
    public IEnumerable<VendorProfileTable>Vendorlogin(string uname, string password)
    {
        VendorProfileTable vpt = new VendorProfileTable();
                var q = from a in da.VendorProfileTables
                        where a.UserName == uname && a.Password == password && a.Status=="r"
                        select a;
                return q;
        }
    public IEnumerable<LoginTable>Adminlogin(string uname, string password)
    {
        var q = from a in da.LoginTables
                where a.UserName == uname && a.Password == password
                select a;
        return q;
    }
    public string UserForgetPassword(string email)
    {
        string msg = "";
        var q = from a in da.ProfileTables
                where a.E_mail == email
                select a;
        if(q.Any())
        {
            foreach(ProfileTable k in q)
            {
                msg = k.Password;
            }
        }
        else
        {
            msg = "Invalid Email";
        }
        return msg;
    }

    public string VendorForgetPassword(string email)
    {
        string msg = "";
        var q = from a in da.VendorProfileTables
                where a.E_mail == email
                select a;
        if (q.Any())
        {
            foreach (VendorProfileTable k in q)
            {
                msg = k.Password;
            }
        }
        else
        {
            msg = "Invalid Email";
        }
        return msg;
    }
    public string AdminForgetPassword(string uname)
    {
        string msg = "";
        var q = from a in da.LoginTables
                where a.UserName == uname
                select a;
        if (q.Any())
        {
            foreach (LoginTable k in q)
            {
                msg = k.Password;
            }
        }
        else
        {
            msg = "Invalid Email";
        }
        return msg;
    }
    public IEnumerable<ProfileTable> UserChangePassword(string email)
    {
        var q = from a in da.ProfileTables
                where a.E_mail == email
                select a;
        return q;
    }
    public IEnumerable<VendorProfileTable> VendorChangePassword(string email)
    {
        var q = from a in da.VendorProfileTables
                where a.E_mail == email
                select a;
        return q;
    }
    public IEnumerable<VendorProfileTable>ShowRequestedDetails()
    {
        var q = from a in da.VendorProfileTables
                where a.Status == "u"
                select a;
        return q;
    }
    public void AcceptVendorRegstration(int id)
    {
        var q = from a in da.VendorProfileTables
                where a.Id == id
                select a;
        foreach(VendorProfileTable  k in q)
        {
            k.Status = "r";
        }
        da.SubmitChanges();
    }
    public void RejectVendorRegstration(int id)
    {
        var q = from a in da.VendorProfileTables
                where a.Id == id
                select a;
        foreach (VendorProfileTable k in q)
        {
            da.VendorProfileTables.DeleteOnSubmit(k);
        }
        da.SubmitChanges();
    }
    public void DeleteUser(int id)
    {
        var q = from a in da.ProfileTables
                where a.Id == id
                select a;
        foreach (ProfileTable k in q)
        {
            da.ProfileTables.DeleteOnSubmit(k);
        }
        da.SubmitChanges();
    }
    public IEnumerable<ProfileTable> ShowUser()
    {
        var q = from a in da.ProfileTables
                select a;
        return q;
    }
    public void DeleteVendor(int id)
    {
        var q = from a in da.VendorProfileTables
                where a.Id == id
                select a;
        foreach (VendorProfileTable k in q)
        {
            da.VendorProfileTables.DeleteOnSubmit(k);
        }
        da.SubmitChanges();
    }
    public IEnumerable<VendorProfileTable> ShowVendor()
    {
        var q = from a in da.VendorProfileTables
                select a;
        return q;
    }
    public IEnumerable<HostingPlansTable> ShowUpdatePlan(string vid)
    {
        var q = from a in da.HostingPlansTables
                where a.VendorID == (from b in da.VendorProfileTables where b.UserName == vid select b.Id).Single()
                select a;
        return q;
    }
    public IEnumerable<HostDomainsTable> ShowUpdateDomain(string vid)
    {
        var q = from a in da.HostDomainsTables
                where a.VendorID == (from b in da.VendorProfileTables where b.UserName == vid select b.Id).Single()
                select a;
        return q;
    }
    public IEnumerable<HostDomainsTable> UpdateDomain(string vid)
    {
        var q = from a in da.HostDomainsTables
                where a.VendorID == (from b in da.VendorProfileTables where b.UserName == vid select b.Id).Single()
                select a;
        return q;
    }
    public void DeleteDomain(int id)
    {
        var q = from a in da.HostDomainsTables
                where a.Id == id
                select a;
        foreach (HostDomainsTable k in q)
        {
            da.HostDomainsTables.DeleteOnSubmit(k);
        }
        da.SubmitChanges();
    }
    public IEnumerable<VendorProfileTable> ShowVendorinDomain()
    {
        var p = from a in da.VendorProfileTables
                select a;
                return p;
    }
    public IEnumerable<HostDomainsTable> ShowPriceofDomain(string dn)
    {
        var p = from a in da.HostDomainsTables
                where a.DomainName==dn
                select a ;
        return p;
    }
    public IEnumerable<ProfileTable> UNFetch(string un)
    {
        var q = from a in da.ProfileTables
                where a.UserName == un
                select a;
        return q;
    }
    public IEnumerable<VendorProfileTable> VUNFetch(string un)
    {
        var q = from a in da.VendorProfileTables
                where a.UserName == un
                select a;
        return q;
    }
    public IEnumerable<FeedBackTable> ShowFeedback()
    {
        var q = from a in da.FeedBackTables
                select a;
        return q;
    }
    public void DeleteFeedback(int id)
    {
        var q = from a in da.FeedBackTables
                where a.Id == id
                select a;
        foreach (FeedBackTable k in q)
        {
            da.FeedBackTables.DeleteOnSubmit(k);
        }
        da.SubmitChanges();
    }
    public IEnumerable<HostingPlansTable> ShowPlan()
    {
        var q = from a in da.HostingPlansTables
                select a;
        return q;
    }
    public void DeletePlanByAdmin(int id)
    {
        var q = from a in da.HostingPlansTables
                where a.Id == id
                select a;
        foreach (HostingPlansTable k in q)
        {
            da.HostingPlansTables.DeleteOnSubmit(k);
        }
        da.SubmitChanges();
    }
    public IEnumerable<HostDomainsTable> ShowDomain()
    {
        var q = from a in da.HostDomainsTables
                select a;
        return q;
    }
    public void DeleteDomainByAdmin(int id)
    {
        var q = from a in da.HostDomainsTables
                where a.Id == id
                select a;
        foreach (HostDomainsTable k in q)
        {
            da.HostDomainsTables.DeleteOnSubmit(k);
        }
        da.SubmitChanges();
    }
    public void CreateNewAdmin(string uname, string password)
    {
        LoginTable lt = new LoginTable();
        lt.UserName = uname;
        lt.Password = password;
        da.LoginTables.InsertOnSubmit(lt);
        da.SubmitChanges();
    }
    public IEnumerable<LoginTable> AdminChangePassword(string uname)
    {
        var q = from a in da.LoginTables
                where a.UserName == uname
                select a;
        return q;
    }

    public IEnumerable<HostDomainsTable>ShowDomainPrice(string domain)
    {
        var q = from a in da.HostDomainsTables
                where a.DomainName == domain
                select a;
        return q;
    }
    public void RateReviewMethod(int vid, int rate, string rev, string uid)
    {
        RateReviewTable rr = new RateReviewTable();
        rr.VendorID = vid;
        rr.Rate = rate;
        rr.Review = rev;
        var q = (from a in da.ProfileTables
                where a.UserName == uid
                select a.Id).Single();
        rr.UserId =Convert.ToInt32(q);
        da.RateReviewTables.InsertOnSubmit(rr);
        da.SubmitChanges();
    }

    public void vendorurl(int vid, string vurl)
    {
        VendorWebsiteTable vw = new VendorWebsiteTable();
        vw.VendorID = vid;
        vw.url = vurl;
        da.VendorWebsiteTables.InsertOnSubmit(vw);
        da.SubmitChanges();
    }

    public void DeleteUrl(int id)
    {
        var q = from a in da.VendorWebsiteTables
                where a.Id == id
                select a;
        foreach (VendorWebsiteTable k in q)
        {
            da.VendorWebsiteTables.DeleteOnSubmit(k);
        }
        da.SubmitChanges();
    }
}

