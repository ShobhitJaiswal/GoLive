<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userhome.aspx.cs" Inherits="_default" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home :: GoLive</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="../css/userstyle1.css" type="text/css" media="all" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <script src="js/jquery.js"></script>
<script src="../js/nanobar.js"></script>
      <script src="../js/nanobar.min.js"></script>
    <script src="../js/nprogress.js"></script>
    <link href="../css/nprogress.css" rel="stylesheet" />
    
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
    <style type="text/css">
        .auto-style1 {
            float: left;
            width: 229px;
            margin-left: 0;
            margin-right: 15px;
            margin-top: 16px;
            margin-bottom: 0;
        }

        .auto-style2 {
            float: left;
            width: 236px;
            margin-left: 0;
            margin-right: 15px;
            margin-top: 16px;
            margin-bottom: 0;
        }

        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <div class="wrap">
                <div class="nav">
                    <ul class="navigation">
                        <li>
                            <div class="logo newspaceright">
                            <span class="menu-mid1"><img src="../images/new3dlogo.png" /></span>
                                </div>
                        </li>
                        <li class="" id="domain-list">
                            <a href="userhome.aspx" id="menu-domainsection">
                                <span class="menu-mid1">Home</span>
                            </a>
                        </li>
                        <li class="">
                            <a href="compareplan.aspx" id="menu-emailsection">
                                <span class="menu-mid1">Compare Plan</span>
                            </a>
                        </li>
                        <li class="">
                            <a href="comparedomain.aspx" id="menu-emailsection">
                                <span class="menu-mid1">Compare Domain </span>
                            </a>
                        </li>
                        <li class="">
                            <a href="support.aspx" id="menu-emailsection">
                                <span class="menu-mid1">Support</span>
                            </a>
                        </li>
                        <li class=" " id="hosting-list">
                            <a href="about.aspx" id="menu-emailsection">
                                <span class="menu-mid1">About Us</span>
                            </a>
                        </li>
                        <li class=" " id="hosting-list">
                            <a href="changepassword.aspx" id="menu-emailsection">
                                <span class="menu-mid1">Change Password</span>
                            </a>
                        </li>
                        <li class=" " id="hosting-list">
                            <div id="menu-emailsection">
                                <span class="menu-mid1 alink">
                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton></span>
                            </div>
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
        <!-- Domain Blurb -->
        <div class="blue-bar">
            <div class="wrap">
                <div class="banner-bottom">
                    <div class="img-holder">
                        <img src="images/thumb-hosting.png" alt="Buy Shared Web Hosting">
                    </div>
                    <div class="text-hosting">
                        <h2 class="ui-buy">Start<span class="bl-txt">  Your Website Today</span></h2>
                        <p class="ui-subtitle">Web Hosting made <em class="greytext">EASY and AFFORDABLE!</em></p>
                        <div class="feature-list">
                            <ul>
                                <li>Unlimited Bandwith, Space</li>
                                <li>Reliable &amp; Secure</li>
                            </ul>
                        </div>
                        <div class="feature-list">
                            <ul>
                                <li>Powered by cPanel / Plesk</li>
                                <li>Free Email included</li>
                            </ul>
                        </div>
                        <div class="feature-list1">
                            <ul>
                                <li>99.9% Uptime Guarantee</li>
                                <li>30 Day Money Back Guarantee</li>
                            </ul>
                        </div>
                        <div class="clear"></div>
                        <div class="pricing-wrp">
                        </div>
                        <div class="auto-style1">
                            <a class="button" href="compareplan.aspx">
                                <img src="images/windows.png" style="margin-right: 10px; margin-bottom: -10px; margin-top: -5px;">View Compare Plans</a>
                        </div>
                        <div class="auto-style2">
                            <a class="button" href="comparedomain.aspx">
                                <img src="images/linux.png" style="margin-right: 20px; margin-bottom: -10px; margin-top: -5px;">View Compare Plans</a>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#field_domains-input').textboxValueToggle('Buy a Domain name...');
            });
            $.fn.textboxValueToggle = function (defaultText) {
                $(this).focus(function () {
                    if ($(this).val() === defaultText) {
                        $(this).val('').removeClass('optionalField');
                    }
                }).blur(function () {
                    if ($(this).val() === '') {
                        $(this).addClass('optionalField').val(defaultText);
                    }
                });
            }
        </script>
        <div class="content">
            <div class="wrap">
                <div class="grids">
                        <div class="rchosting grid-left">
                            <img src="images/rchosting.png" alt="" />
                        </div>
                            <h3>What &nbsp;Is<span class="blue"> Web Hosting?</span></h3>
                            <div class="newcolor" >Web Host is in the business of providing server space, Web services and file maintenance for Web sites controlled by individual or companies that do not have their own Web servers. Many ISPs, will allow subscribers a small amount of server space to host a personal Web Page. Other commercial ISPs will charge the user a fee depending on the complexity of the site being hosted.</div>                                     
                             </div>
                                          <div class="clear"></div>
                    <div class="clear"></div>
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
                            <li><a href="userhome.aspx">Home</a></li>
                            <li><a href="comparedomain.aspx">Compare Domain</a></li>
                            <li><a href="compareplan.aspx">Compare Plan</a></li>
                            <li><a href="support.aspx">Support</a></li>
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
