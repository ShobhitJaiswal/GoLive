<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adddomain.aspx.cs" Inherits="login" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Domain :: GoLive</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../css/vstyle.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="js/jquery.js"></script>
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
            complete: function (xhr, text) { },
            cache: true,
            error: function (xhr, text, e) { },
            global: true,
            headers: {},
            statusCode: {},
            success: function (data, text, xhr) { },
            dataType: "html",
            done: function (data) { }
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
        <div class="bulk-domain">
            <div class="content">
                <div class="wrap">
                    <div class="login_form">
                        <div class="login_form_left">
                            <h3>Add Domain Here..</h3>
                            <label>
                                Choose Domain Name <span class="astrix">*<br />
                                </span>
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="DomainNames" DataValueField="DomainNames">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GoLiveDatabaseConnectionString %>" SelectCommand="SELECT [Id], [DomainNames] FROM [DomainTable]"></asp:SqlDataSource>
                            </label>
                            <table>
                                <tbody>
                                    <tr>
                                        <td>
                                            <div>
                                                <label>
                                                    <br />
                                                    Enter Domain Price <span class="astrix">*</span><asp:TextBox ID="dprice" runat="server"></asp:TextBox>
                                                </label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                                            <br />
                                        </td>
                                        <td><span></span></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button ID="adddomain" runat="server" name="Checkout" type="button" class="uiButton" Text="Add Domain" OnClick="adddomain_Click" CssClass="uiButton1" /></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="login_form_right">
                            <h3>Want to ADD Plan?<br />
                            </h3>
                            <div>
                                <h3>
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Vendor/addplan.aspx" CssClass="ui-button">Add Plan</asp:HyperLink></h3>
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
                            <p>
                                <asp:LinkButton ID="LinkButton2" runat="server" class="link-1" OnClientClick="javascript:OpenPage('http://www.facebook.com/golive2016');" Target="_blank">Facebook</asp:LinkButton></p>
                            <p>
                                <asp:LinkButton ID="LinkButton4" runat="server" CssClass="link-2" OnClientClick="javascript:OpenPage('http://www.twitter.com/servicesgolive');" Target="_blank">Twitter</asp:LinkButton></p>
                            <p>
                                <asp:LinkButton ID="LinkButton5" runat="server" CssClass="link-3" OnClientClick="javascript:OpenPage('https://plus.google.com/108354560148307794966/');" Target="_blank">Google+</asp:LinkButton></p>
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
                        <br />
                    </div>
                    <div class="footer_grid1">
                        <h4>Quick Navigation</h4>
                        <ul class="footer-links">
                            <li><a href="vendorhome.aspx">Home</a></li>
                            <li><a href="addplan.aspx">Add Plan</a></li>
                            <li><a href="adddomain.aspx">Add Domain</a></li>
                            <li><a href="updateplan.aspx">Update Plan</a></li>
                            <li><a href="updatedomain.aspx">Update Domain</a></li>
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
