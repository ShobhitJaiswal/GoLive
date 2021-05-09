﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="support.aspx.cs" Inherits="support" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Support :: GoLive </title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="css/hstyle1.css" type="text/css" media="all" />
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
                <div class="row">
                <div class="support-desc">
                    <div class="grids">              
                    <div class="div-spacer"></div>
                    <div class="gray-blurb">
                        <div id="query">
                            <h4 class="ui-heading">Feedback Us:</h4>
                            <p>Give Your Views, So We Can Enchance Our Services.</p>
                            <br>
                        </div>
                        <table id="contact-form" border="0" cellpadding="0" cellspacing="0" class="data-form chk-icons" width="100%">
                            <tbody>
                                <tr>
                                    <td width="200" class="frm-label">Name <span class="red">*</span></td>
                                    <td width="600">
                                        <asp:TextBox ID="name1" runat="server" class="frm-field" type="text" name="contact_name" required="required"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="frm-label">Email Address <span class="red">*</span></td>
                                    <td>
                                        <asp:TextBox ID="email1" runat="server" class="frm-field" type="text" name="contact_email" required="required"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="frm-label" valign="top">Choose User Type</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList1" runat="server" class="frm-select valid" name="contact_dept">
                                            <asp:ListItem>Select User Type</asp:ListItem>
                                            <asp:ListItem>User</asp:ListItem>
                                            <asp:ListItem>Vendor</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="frm-label" valign="top">Your Message</td>
                                    <td>
                                        <asp:TextBox ID="message1" runat="server" class="frm-field" name="contact_msg" TextMode="MultiLine" required="required" Height="90px" Width="360px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <div id="msg" runat="server" visible="false">
                                            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                        </div>
                                        <br />
                                        <asp:Button ID="sendmail" runat="server" Text="Send us mail" type="submit" name="contact_submit" class="uiButton" OnClick="sendmail_Click" CssClass="uiButton" />
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                      </div>
            </div>

            </div>
            <div class="clear"></div>
        </div>
        </div>
        <div class="footer">
            <div class="wrap">
                <div class="footer_grides">
                  <div class="footer_grid">
                        <h4>Let's Connect With Us</h4>
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
