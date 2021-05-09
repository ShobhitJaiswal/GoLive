<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="support" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us :: GoLive </title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="../css/vstyle.css" type="text/css" media="all" />
    <script type="text/javascript" src="js/jquery.js"></script>
    <script src="js/nanobar.js"></script>
      <script src="js/nanobar.min.js"></script>
    <script src="js/nprogress.js"></script>
    <link href="css/nprogress.css" rel="stylesheet" />
    
<script>
$(".ajax-call").loadingbar({
  replaceURL: false, /* You can visibly change the URL of the browser to reflect the clicked links by toggling this to true. Default is false. May not work in old browsers. */
    target: "#loadingbar-frame", /* The container's selector where you want the ajax result to appear. Default is #loadingbar-frame */
    direction: "right", /* The direction where the the loading bar will progress. Default is right. */

    /* Default Ajax Parameters.  */
    async: true, 
    complete: function(xhr, text) {},
    cache: true,
    error: function(xhr, text, e) {},
    global: true,
    headers: {},
    statusCode: {},
    success: function(data, text, xhr) {},
    dataType: "html",
    done: function(data) {}
});    </script>
	<script>
	    $(document).ready(function () {
	        NProgress.start();
	        NProgress.done();
	        $("#signin").click(function () {
	            NProgress.configure({ showSpinner: true });
	            NProgress.set(0.2);
	            NProgress.set(0.4);
	            NProgress.set(0.6);
	            NProgress.set(0.8);
	            NProgress.set(1.0);
	        });
	    });
	   </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <div class="wrap">
                <div class="nav">
                    <ul class="navigation">
                        <li>
                            <div class="logo"><span class="menu-mid">
                                <img src="../images/new3dlogo.png" /></span></div>
                        </li>
                        <li class="" id="domain-list">
                            <a href="vendorhome.aspx" id="menu-domainsection">
                                <span class="menu-mid2">Home</span>
                            </a>
                        </li>
                        <li class="">
                            <a href="addplan.aspx" id="menu-emailsection">
                                <span class="menu-mid2">Add Plan</span>
                            </a>
                        </li>
                        <li class="">
                            <a href="adddomain.aspx" id="menu-emailsection">
                                <span class="menu-mid2">Add Domain </span>
                            </a>
                        </li>
                        <li class="">
                            <a href="update.aspx" id="menu-emailsection">
                                <span class="menu-mid2">Update</span>
                            </a>
                        </li>
                        <li class="">
                            <a href="support.aspx" id="menu-emailsection">
                                <span class="menu-mid2">Support</span>
                            </a>
                        </li>
                        <li class=" ">
                            <a href="about.aspx" id="menu-emailsection">
                                <span class="menu-mid2">About Us</span>
                            </a>
                        </li>
                          <li class=" ">
                            <a href="profile.aspx" id="menu-emailsection">
                                <span class="menu-mid2">Profile</span>
                            </a>
                        </li>
                         <li class=" ">
                                <span class="menu-mid2 alink"><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton></span>
                        </li>
                    </ul>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            $(".navigation li").hover(
              function () {
                  $(this).addClass("nav-hover");
              },
              function () {
                  $(this).removeClass("nav-hover");
              }
            );
        </script>
        <div class="support">
            <div class="wrap">
                <div class="content">
               <h3>About Us</h3>
                    <div class="contentcolor">
<b>GOLIVE</b> is based on idea of comparing these web host on basis the fee that they charge and amount of space providing on server.In the GO LIVE we will make comparison of the web host provider which include fee that they charge, bandwidth size, space proving on server and domain name that they will provide user.We will try to make user know about “What is Web Hosting?” Then we will provide user a comparison list of wed hosting sites on the basic of fee, server space, bandwidth and domain name. We will also provide reviews of old user’s which are using that web hosting services.</p>
		    <p>Now a days many web pages published by user. If any user want to publish their web page they just have to check our site and will get best host provider for their web page. It can we used by any user throughout the world who want to publish their web page.A site like GoLive (based on comparison of Hosting Services and Products given by several of Websites) would let you set the categories yourself and find a host that suits your needs.A site like GoLive (based on comparison of Hosting Services and Products given by several of Websites) would let you set the categories yourself and find a host that suits your needs.</p>
		    <p>There are so many web hosts out there in this day and age that it would be nearly impossible to list them all.Choosing a web host requires that you take an appraisal of your website, the technology used to create it, your web page elements and your future growths. You will also make space for emerging technologies and web trends. All of these scenarios require that you choose a web hosting provider with suitable care.</p>
          </div>
                    
                    <br />
                <h3>Features That We Provide..</h3>
                   <ul class="bullet-list">
                        <li ><div class="contentcolor">	Time Saving</div></li>
	<li><div class="contentcolor"> Many host provider service plan on one page</div></li>
<li>	<div class="contentcolor">User will not have to suffer from loss</div></li>
<li><div class="contentcolor">	Reviews of old user will be available for new user</div></li>
                    </ul>
                        </div>
            </div>
              </div>
        </div>
        <div class="footer">
            <div class="wrap">
                <div class="footer_grides">
                  <div class="footer_grid">
                        <h4>Let&#39;s Connect With Us</h4>
                        <div class="footer-pic">
                            <p><asp:LinkButton ID="LinkButton2" runat="server" class="link-1" OnClientClick="javascript:OpenPage('http://www.facebook.com/golive2016');" Target="_blank">Facebook</asp:LinkButton></p>
                            <p><asp:LinkButton ID="LinkButton4" runat="server" CssClass="link-2" OnClientClick="javascript:OpenPage('http://www.twitter.com/servicesgolive');" Target="_blank">Twitter</asp:LinkButton></p>
                            <p><asp:LinkButton ID="LinkButton5" runat="server" CssClass="link-3" OnClientClick="javascript:OpenPage('https://plus.google.com/108354560148307794966/');" Target="_blank">Google+</asp:LinkButton></p>
                        </div>
<script type="text/javascript">
    function OpenPage(url) {
        window.open(url);
        return true;
    }
</script>

                    </div>
                    <div class="footer_grid">
                        <br />
                        <br />
                    </div>
                    <div class="footer_grid1">
                        <h4>Quick Navigation</h4>
                        <ul class="footer-links">
                            <li><a href="default.aspx">Home</a></li>
                            <li><a href="login.aspx">Login</a></li>
                            <li><a href="registration.aspx">Registration</a></li>
                            <li><a href="support.aspx">Support</a></li>
                            <li><a href="forgetpassword.aspx">Forget Password</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="wrap">
                    <div class="copy-right">
                        <p>GOLIVE © 2016. ALL RIGHT RESERVED. WEBSITE DESIGNED BY SWARAJ AND SHOBHIT.</p>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
