<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updatedomain.aspx.cs" Inherits="support" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Domain :: GoLive</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="../css/vstyle.css" type="text/css" media="all" />
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
                <div class="support-desc">
                    <div class="linux-banner">
                        <img src="images/domain-forw.png" style="top: 15px; width: 189px;" />
                    </div>
                    <div class="gray-blurb">
                        <div id="query">
                            <h4 class="ui-heading">Update Domain:</h4>
                            <br>
                            <br />
                            <br />
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="Id"
                                OnRowCancelingEdit="GridView1_RowCancelingEdit" CellPadding="4" ForeColor="#5798CF"
                                OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating"
                                OnRowDeleting="GridView1_RowDeleting" Width="700px" ShowFooter="True">

                                <Columns>
                                    <asp:TEMPLATEField>
                                        <ItemTEMPLATE>
                                            <asp:LinkButton ID="LB1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                                            <asp:LinkButton ID="LB2" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                                        </ItemTEMPLATE>
                                        <EditItemTEMPLATE>
                                            <asp:LinkButton ID="LB3" runat="server" CommandName="Update">Update</asp:LinkButton>
                                            <asp:LinkButton ID="LB4" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                                        </EditItemTEMPLATE>
                                    </asp:TEMPLATEField>
                                    <asp:TEMPLATEField HeaderText="Domain Name">
                                        <ItemTEMPLATE>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("DomainName") %>'></asp:Label>
                                        </ItemTEMPLATE>
                                        <EditItemTEMPLATE>
                                            <asp:TextBox ID="txt_Name" runat="server" Text='<%# Eval("DomainName") %>'></asp:TextBox>
                                        </EditItemTEMPLATE>
                                    </asp:TEMPLATEField>
                                    <asp:TEMPLATEField HeaderText="Domain Price">
                                        <ItemTEMPLATE>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("DomainPrice") %>'></asp:Label>
                                        </ItemTEMPLATE>
                                        <EditItemTEMPLATE>
                                            <asp:TextBox ID="txt_Dp" runat="server" Text='<%# Eval("DomainPrice") %>'></asp:TextBox>
                                        </EditItemTEMPLATE>
                                    </asp:TEMPLATEField>
                                </Columns>
                                <HeaderStyle BackColor="#5798CF" Font-Bold="True" ForeColor="White" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <FooterStyle BackColor="#ff9751" />
                            </asp:GridView>
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

                    </div>               <div class="footer_grid">
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
