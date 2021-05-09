<%@ Page Language="C#" AutoEventWireup="true" CodeFile="checkcompareplan.aspx.cs" Inherits="support" EnableEventValidation="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Compare Plans :: GoLive</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="../css/userstyle1.css" type="text/css" media="all" />
    <link href="../css/rating.css" rel="stylesheet" />
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
        <div class="support">
            <div class="wrap">
                <div class="support-desc">
                    <div class="clear"></div>
                </div>
                <div class="row-indent">
                    <div class="div-spacer"></div>
                    <div class="gray-blurb">
                        <div id="query">
                            <h4 class="ui-heading">All <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label> Hosting Plan Comparison of <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label> PlanType :</h4>
                            <p>&nbsp;</p>
                            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
                            <div class="grids-hosting">
                                <asp:DataList ID="DataList4" runat="server" RepeatColumns="4" Width="1000px">
                                    <ItemTemplate>
                                        <div class="grids-hosting">
        <ul class="plan-list us_plan ">
	       <form name="hostingplan" id="hostingplan_4" method="POST">
	        <li class="p-name2"> <asp:Image ID="Image1" runat="server" Height="150px" Width="150px" ImageUrl='<%#"~/Vendor/VendorLogo/"+Eval("Logo") %>'/></li>
	        <li class="p-dropdown"><h3><asp:Label ID="Label2" runat="server" Text='<%#Eval("VendorName") %>'></asp:Label></h3></li>
	        <li class="p-feat1"><asp:Label ID="Label3" runat="server"  Text='<%#Eval("PlanPrice") %>'></asp:Label></li>
	        <li class="p-feat"><asp:Label ID="Label4" runat="server" Text='<%#Eval("SpaceSize") %>'></asp:Label> Space Size</li>
		    <li class="p-feat1"><asp:Label ID="Label5" runat="server" Text='<%#Eval("Email_size") %>'></asp:Label> Email Accounts</li>               	        
            <li class="p-feat"><asp:Label ID="Label6" runat="server" Text='<%#Eval("Ftp_size") %>'></asp:Label> Data Transfer</li>
                <li class="p-currency p-feat"><asp:Rating ID="r1" runat="server" CurrentRating='<%#Eval("rateavg")%>' MaxRating="5"  EmptyStarCssClass="emptypng" FilledStarCssClass="donesmileypng" StarCssClass="emptypng" WaitingStarCssClass="smileypng"  ReadOnly="True" ></asp:Rating><br /></li>               
           <li class="p-button p-feat1" ><asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" ForeColor="#660033">Go to Website</asp:LinkButton></li>
	        </form>
		</ul>
	</div>
                                    </ItemTemplate>
                                </asp:DataList>
                                <script type="text/javascript">
    $(document).ready(function(){
        display_preferred_server_location("us");
        var left= ($(".plans-columns-wrp").width()/2 )-($(".server_loc_tabs").width()/2);
        $(".server_loc_tabs").css('left', left + 'px');

        $(".server_loc_tabs li").click( function(){
            $(".server_loc_tabs li").removeClass('sel');
            $(this).addClass('sel');
            $('.sel_tab').remove();
            $(this).append("<div class='sel_tab'></div>");
            $('#plans-container input[type=radio]').removeAttr("checked");
        })

        $('.country_specific_tabs li').each(function() {
            add_event_to_tabs($(this).attr('country'));
        });
    });

    function add_event_to_tabs(country){
        $(".tab_" + country).click( function(){
            var sel_tab_left=($(this).outerWidth()/2 );
            $(".server_loc_tabs li .sel_tab").css('left', sel_tab_left + 'px');
            var location = $(this).attr('country').toLowerCase();
            $('.plan-list').hide();
            $('.' + location + '_plan').show();
        })
    }

    function display_preferred_server_location(location){
        $('.plan-list').hide();
        $(".tab_" + location.toUpperCase()).addClass('sel').append("<div class='sel_tab'></div>");
        $('.' + location + '_plan').show();
        $('#' + location.toUpperCase() + '_plan_check').attr('checked', 'checked');
    }
</script>
                            </div>
                            <h2><a href="ratereview.aspx">Review & Rating</a></h2>
                            <br>
                            <br />
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
