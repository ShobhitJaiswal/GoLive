<%@ Page Language="C#" AutoEventWireup="true" CodeFile="vendorregistration.aspx.cs" Inherits="vendorregistration" EnableEventValidation="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Registration :: GoLive</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="css/hstyle1.css" type="text/css" media="all" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <script src="js/jquery.js"></script>
    <script src="js/nanobar.js"></script>
      <script src="js/nanobar.min.js"></script>
    <script src="js/nprogress.js"></script>
    <link href="css/nprogress.css" rel="stylesheet" />
    
    <script lang="javascript" type="text/javascript">
$(function () {
    $("#FileUpload1").change(function () {
        $("#imgprv").html("");
        var regex = /^([a-zA-Z0-9\s_\\.\-:])+(.jpg|.jpeg|.gif|.png|.bmp)$/;
        if (regex.test($(this).val().toLowerCase())) {
            if ($.browser.msie && parseFloat(jQuery.browser.version) <= 9.0) {
                $("#imgprv").show();
                $("#imgprv")[0].filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = $(this).val();
            }
            else {
                if (typeof (FileReader) != "undefined") {
                    $("#imgprv").show();
                    $("#imgprv").append("<img />");
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        $("#imgprv img").attr("src", e.target.result);
                    }
                    reader.readAsDataURL($(this)[0].files[0]);
                } else {
                    alert("This browser does not support FileReader.");
                }
            }
        } else {
            alert("Please upload a valid image file.");
        }
    });
});
</script>
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
        <script type="text/javascript">
            function showimagepreview(input) {
                if (input.files && input.files[0]) {
                    var filerdr = new FileReader();
                    filerdr.onload = function (e) {
                        $('#imgprvw').attr('src', e.target.result);
                    }
                    filerdr.readAsDataURL(input.files[0]);
                }
            }
        </script>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
        <div class="bulk-domain1">
            <div class="content">
                <div class="wrap">
                    <div class="login_form">
                        <h3>Create an Account</h3>
                        <table>
                            <tbody>
                                <tr>
                                    <td>
                                        <div>
                                            <label>Vendor Name <span class="astrix">*</span></label><asp:TextBox ID="vname" runat="server" required="required"></asp:TextBox>
                                        </div>
                                        <div>
                                            <label>E-Mail <span class="astrix">*</span></label><asp:TextBox ID="email1" runat="server" required="required"></asp:TextBox>
                                        </div>
                                        <div>
                                            <label>
                                                Password <span class="astrix">*<br />
                                                </span>
                                                <asp:TextBox ID="password" runat="server" required="required" TextMode="Password"></asp:TextBox>
                                                <asp:PasswordStrength ID="password_PasswordStrength" runat="server" TargetControlID="password">
                                                </asp:PasswordStrength>
                                            </label>
                                            <p>8 character minimum. No special characters.</p>
                                        </div>
                                        <div>
                                            <label>
                                                Confirm Password <span class="astrix">*</span><asp:TextBox ID="confirmpassword" runat="server" TextMode="Password" required="required"></asp:TextBox>
                                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="confirmpassword" ErrorMessage="Password Didn't Match..!!" ForeColor="Red"></asp:CompareValidator>
                                            </label>
                                        </div>
                                    </td>
                                    <td>
                                        <div>
                                            <label>
                                                User Name <span class="astrix">*</span><asp:TextBox ID="username" runat="server" required="required" AutoPostBack="True" OnTextChanged="txtUsername_TextChanged"></asp:TextBox>
                                            </label>
                                        </div>
                                        <div>
                                            <table>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <div>
                                                                <label>
                                                                    Upload Logo <span class="astrix">*<br />
                                                                        <br />
                                                                    </span>
                                                                    <asp:FileUpload ID="FileUpload1" runat="server" onchange="showimagepreview(this)"/></label>
                                                                    <br />
                                                                    <br />
                                                                    &nbsp;<asp:Image id="imgprvw" alt="uploaded image preview" runat="server" Height="100px" Width="100px" />
                                                                &nbsp;&nbsp;
		          	    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                                                                <br />
                                                                <br />
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>

                        &nbsp;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Button ID="createaccount" runat="server" Text="Sign Up" CssClass="ui-button" name="checkout" OnClick="createaccount_Click1" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="login.aspx">Already A User ?</a>
                    </div>
                </div>
            </div>
        </div>
        <<div class="footer">
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
