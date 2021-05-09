<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newadmin.aspx.cs" Inherits="admin_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create New Admin :: Admin</title>
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

    <!-- Morris Charts CSS -->
    <link href="css/plugins/morris.css" rel="stylesheet" />

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

    <!-- Morris Charts JavaScript -->
    <script src="js/plugins/morris/raphael.min.js"></script>
    <script src="js/plugins/morris/morris.min.js"></script>
    <script src="js/plugins/morris/morris-data.js"></script>
    <style type="text/css">
        .auto-style1 {
            height: 39px;
        }
        .auto-style4 {
            text-align: center;
            height: 30px;
        }
        .auto-style5 {
            width: 1046px;
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
                        <a class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-child"></i>  <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                                                    <li>
                            <a href="changepassword.aspx"><i class="fa fa-fw fa-lock"></i>Change Password</a>
                        </li>
                        <li>
                            <a href="newadmin.aspx"><i class="fa fa-fw fa-user"></i> Create New Admin</a>
                        </li>
                        <li class="divider"></li>
                                                        <li>
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton>
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
                        <li>
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
                        <br />
                        <div class="text-center">
                         <a>
                          <h2 class="auto-style1">Create New Admin -</h2>                           
                            </a>
                            </div>
                        <br />
                        <table cellpadding="0" class="auto-style5">
                            <tr class="even">
                                <th>
                                    Enter Detail 
                                </th>
                            </tr>
                            <tr class="even">
                                <td>User Name : </td>
                                <td>
                                    <asp:TextBox ID="username" runat="server" required="required" Width="75%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Password :</td>
                                <td>
                                    <asp:TextBox ID="password" runat="server" required="required" TextMode="Password" Width="75%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Confirm Password :</td>
                                <td>
                                    <asp:TextBox ID="confirmpassword" runat="server" required="required" TextMode="Password" Width="75%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td><div runat="server" visible="false" id="msg">
                                        <a>
                                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                            </a>
                                    </div></td>
                                <td>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="confirmpassword" ErrorMessage="Password Did Not Match" ForeColor="Red"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr class="even">
                                <td class="auto-style4" colspan="2">
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create New Admin" />
                                </td>
                            </tr>
                        </table>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />                         
                </div>
    </div>

    </div>
    </form>
</body>
</html>
