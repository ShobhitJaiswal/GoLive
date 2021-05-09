<%@ Page Language="C#" AutoEventWireup="true" CodeFile="vendorregreq.aspx.cs" Inherits="admin_bootstrap_elements" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vendor Request :: Admin</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
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
      <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet" />

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
     <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    </head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="home.aspx">Admin Dashboard</a>
            </div>
           <!-- Top Menu Items -->
                <ul class="nav navbar-right top-nav">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-child"></i>  <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label> <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                                                    <li>
                            <a href="changepassword.aspx"><i class="fa fa-fw fa-lock"></i>Change Password</a>
                        </li>
                        <li>
                            <a href="newadmin.aspx"><i class="fa fa-fw fa-user"></i> Create New Admin</a>
                        </li>
                        <li class="divider"></li>
                                                        <li>
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="logout1">Logout</asp:LinkButton>
                            </li>
                        </ul>
                    </li>
                </ul>
                <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">
                        <li>
                            <a href="home.aspx"><i class="fa fa-fw fa-dashboard"></i>Dashboard</a>
                        </li>
                        <li>
                            <a href="viewvendor.aspx"><i class="fa fa-fw fa-bar-chart-o"></i>Vendor</a>
                        </li>
                        <li>
                            <a href="viewuser.aspx"><i class="fa fa-fw fa-table"></i>User</a>
                        </li>
                        <li>
                            <a href="viewfeedback.aspx"><i class="fa fa-fw fa-edit"></i>Feedback</a>
                        </li>
                        <li>
                            <a href="viewplan.aspx"><i class="fa fa-fw fa-desktop"></i>Plan View</a>
                        </li>
                        <li>
                            <a href="viewdomain.aspx"><i class="fa fa-fw fa-wrench"></i>Domain View</a>
                        </li>
                        <li class="active">
                            <a href="vendorregreq.aspx"><i class="fa fa-fw fa-file"></i>Vendor Request</a>
                        </li>
                        <li>
                                              <a href="vendorurl.aspx"><i class="fa fa-fw fa-dashboard"></i>Manage Url</a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            View Registration requests from Vendors...
                        </h1>
                        <ol class="breadcrumb">
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <!-- Main jumbotron for a primary marketing message or call to action -->
                <div class="jumbotron">
                    <table align="center">
                        <tr>
                            <td>
                                <asp:DataList ID="DataList1" runat="server" Width="876px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black">
                                    <AlternatingItemStyle BackColor="PaleGoldenrod" />
                                    <FooterStyle BackColor="Tan" />
                                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <ItemTEMPLATE>
                            <table class="nav-justified">
                                <tr>
                                    <td>
                                        <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" ImageUrl='<%#"~/Vendor/VendorLogo/"+Eval("Logo") %>'/>
                                    </td>
                                    <td class="text-center">
                                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("VendorName") %>'></asp:Label>
                                    </td>
                                    <td class="text-center">
                                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("E_mail") %>'></asp:Label>
                                    </td>
                                    <td class="text-center">
                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("Id") %>' OnClick="LinkButton1_Click">Accept</asp:LinkButton>
                                    </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("Id") %>' OnClick="LinkButton2_Click">Reject</asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
                        </ItemTEMPLATE>
                                    <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    </asp:DataList>
                            </td>
                        </tr>
                    </table>
                    
                </div>

            </div>

        </div>

    </div>
    </form>
</body>
</html>
