<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login :: GoLive</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/hstyle1.css" rel="stylesheet" type="text/css" media="all" />
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
    warp: {},
    nav: {},
    navigation:{},
    statusCode: {},
    success: function(data, text, xhr) {},
    dataType: "html",
    done: function(data) {}
});    </script>
	<script>
	    $(document).ready(function () {
	        NProgress.start();
	        NProgress.inc();
	        NProgress.set(0.4);
	        NProgress.inc();
	        NProgress.done();
	        $("#signin").click(function () {
	            NProgress.configure({ showSpinner: true });
	            NProgress.start();
	            NProgress.inc();
	            NProgress.set(0.4);
	            NProgress.inc();
	            NProgress.done();
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
                         <li >
                           <div class="logo newspaceright"><span class="menu-mid"><img src="images/new3dlogo.png" /></span></div>
                                </li>
                        <li class="" id="domain-list">
                            <a href="default.aspx" id="menu-domainsection">
                                <span class="menu-mid">Home</span>
                            </a>
                        </li>
                        <li class="">
                            <a href="login.aspx" id="menu-emailsection">
                                <span class="menu-mid">Login</span>
                            </a>
                        </li>
                        <li class="">
                            <a href="registration.aspx" id="menu-emailsection">
                                <span class="menu-mid">Registration</span>
                            </a>
                        </li>
                        <li class="">
                            <a href="support.aspx" id="menu-emailsection">
                                <span class="menu-mid">Support</span>
                            </a>
                        </li>
                    <li class=" " id="hosting-list">
                            <a href="about.aspx" id="menu-emailsection">
                                <span class="menu-mid">About Us</span>
                            </a>
                        </li>
                    </ul>
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
        <div class="bulk-domain1">
            <div class="content">
                <div class="wrap">
                    <div class="login_form">
                        <div class="login_form_left">
                            <h3>Sign in to access more..!!</h3>
                            <label>
                                Choose User Type <span class="astrix">*<br />
                                </span>
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                                    <asp:ListItem>Choose User Type</asp:ListItem>
                                    <asp:ListItem>User</asp:ListItem>
                                    <asp:ListItem>Vendor</asp:ListItem>
                                    <asp:ListItem>Admin</asp:ListItem>
                                </asp:DropDownList>
                            </label>
                            <table>
                                <tbody>
                                    <tr>
                                        <td>
                                            <div>
                                                <label>
                                                    <br />
                                                    User Name <span class="astrix">*</span><asp:TextBox ID="username" runat="server"></asp:TextBox>
                                                </label>
                                            </div>
                                            <div>
                                                <label>
                                                    Password <span class="astrix">*</span><asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                                                </label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div id="msg" visible="false" runat="server">
                                                <asp:Literal ID="Literal1" runat="server"></asp:Literal><br />
                                            </div>
                                        </td>
                                        <td><span><a href="forgetpassword.aspx">Forgot Password ?</a></span></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button ID="signin" runat="server" Text="Sign In" CssClass="ui-button" OnClick="signin_Click" /></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="login_form_right">
                            <h3>Don't have a account?</h3>
                            <div>
                                <asp:LinkButton runat="server" class="uiButton" ID="new_submit" OnClick="new_submit_Click">Create an Account in 10 seconds</asp:LinkButton>
                            </div>
                        </div>
                        <div class="clear"></div>
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
