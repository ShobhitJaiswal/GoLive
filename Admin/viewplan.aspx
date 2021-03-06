<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewplan.aspx.cs" Inherits="admin_bootstrap_elements" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Plans :: Admin</title>
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

       <link href="css/tablestyle.css" rel="stylesheet" type="text/css" media="all" />

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
    <style type="text/css">
        .auto-style1 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 100%;
            left: 0px;
            top: -100px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
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
                        <a class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-child"></i>  <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label> <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                                                    <li>
                            <a href="changepassword.aspx"><i class="fa fa-fw fa-lock"></i>Change Password</a>
                        </li>
                        <li>
                            <a href="newadmin.aspx"><i class="fa fa-fw fa-user"></i> Create New Admin</a>
                        </li>
                        <li class="divider"></li>
                                                        <li>
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="Logout1">Logout</asp:LinkButton>
                            </li>
                        </ul>
                    </li>
                </ul>
                <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">
                        <li class="active">
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
                        <li class="active">
                            <a href="viewplan.aspx"><i class="fa fa-fw fa-desktop"></i>Plan View</a>
                        </li>
                        <li>
                            <a href="viewdomain.aspx"><i class="fa fa-fw fa-wrench"></i>Domain View</a>
                        </li>
                        <li>
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
                    <div class="auto-style1">
                        <h1 class="page-header">
                            View Plans Details...
                        </h1>
                        <ol class="breadcrumb">
                            <li class="active">
                                &nbsp;View Plan</li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <!-- Main jumbotron for a primary marketing message or call to action -->
                <div class="jumbotron">
                    <h1>View Plans :: </h1>
                    <br />
                    <br />
                    <asp:DataList ID="DataList1" runat="server">
                       <ItemTEMPLATE> 
                            <table dellpadding="0">
                                <tr class="even">
                                    <th>PlatForm</th><th>PlanType</th><th>Websites</th><th>Space Size</th><th>E-Mail Size</th><th>FTP Size</th><th>Plan Price</th>
                                </tr>
                                <tr class="even">
                                    <td>
                                        PlatForm :
                                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("Platform") %>'></asp:Label>
                                    </td>
                                    <td class="text-left">
                                        PlanType :
                                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("Plantype") %>'></asp:Label>
                                    </td>
                                    <td class="text-left">
                                        Websites :
                                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("Websites") %>'></asp:Label>
                                    </td>
                                    <td class="text-left">
                                        Space Size :
                                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("SpaceSize") %>'></asp:Label>
                                    </td>
                                                                        <td class="text-left">
                                        E-Mail Size :
                                        <asp:Label ID="Label5" runat="server" Text='<%#Eval("Email_size") %>'></asp:Label>
                                    </td>
                                                                        <td class="text-left">
                                        FTP Size :
                                        <asp:Label ID="Label6" runat="server" Text='<%#Eval("Ftp_size") %>'></asp:Label>
                                    </td>
                                                                        <td class="text-left">
                                        Plan Price :
                                        <asp:Label ID="Label7" runat="server" Text='<%#Eval("PlanPrice") %>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("Id") %>' OnClick="LinkButton2_Click">Delete</asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
                        </ItemTEMPLATE>
                                    <SelectedItemStyle BackColor="#738A9C" ForeColor="White" Font-Bold="True" />
                    </asp:DataList>
                </div>

            </div>

        </div>

    </div>
    </form>
</body>
</html>
