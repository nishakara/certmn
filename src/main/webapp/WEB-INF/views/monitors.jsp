<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title> | Certmonitor | </title>

    <!-- Bootstrap -->
    <link href="<c:url value="/resources/vendors/bootstrap/dist/css/bootstrap.min.css" />" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="<c:url value="/resources/vendors/font-awesome/css/font-awesome.min.css" />" rel="stylesheet">
    <!-- NProgress -->
    <link href="<c:url value="/resources/vendors/nprogress/nprogress.css" />" rel="stylesheet">
    <!-- iCheck -->
    <link href="<c:url value="/resources/vendors/iCheck/skins/flat/green.css" />" rel="stylesheet">
    <!-- bootstrap-wysiwyg -->
    <link href="<c:url value="/resources/vendors/google-code-prettify/bin/prettify.min.css" />" rel="stylesheet">
    <!-- Select2 -->
    <link href="<c:url value="/resources/vendors/select2/dist/css/select2.min.css" />" rel="stylesheet">
    <!-- Switchery -->
    <link href="<c:url value="/resources/vendors/switchery/dist/switchery.min.css" />" rel="stylesheet">
    <!-- starrr -->
    <link href="<c:url value="/resources/vendors/starrr/dist/starrr.css" />" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="<c:url value="/resources/vendors/bootstrap-daterangepicker/daterangepicker.css" />" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="<c:url value="/resources/build/css/custom.min.css" />" rel="stylesheet">
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <!-- <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>Gentelella Alela!</span></a> -->
              <a href="<c:url value="/" />" class="site_title"><!--<i class="fa fa-paw"> --></i> <span></span></a>

            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="<c:url value="/resources/images/img.jpg" />" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>User</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-home"></i> Status <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="<c:url value="/" />">Status Dashboard</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-edit"></i> Add New <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                    </ul>
                    <ul class="nav child_menu">
                        <li><a href="<c:url value="/monitors" />">Add New Monitor</a></li>
                      </ul>
                  </li>
                </ul>
              </div>
              <div class="menu_section">
                <!-- <h3>Live On</h3> -->
                <ul class="nav side-menu">

                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="<c:url value="/login" />">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <div class="nav toggle">
                  <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                </div>
                <nav class="nav navbar-nav">
                <ul class=" navbar-right">
                  <li class="nav-item dropdown open" style="padding-left: 15px;">
                    <a href="javascript:;" class="user-profile dropdown-toggle" aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown" aria-expanded="false">
                      <img src="<c:url value="/resources/images/img.jpg" />" alt="">User
                    </a>
                    <div class="dropdown-menu dropdown-usermenu pull-right" aria-labelledby="navbarDropdown">
                      <a class="dropdown-item"  href="javascript:;"> Profile</a>
                        <a class="dropdown-item"  href="javascript:;">
                          <span class="badge bg-red pull-right">50%</span>
                          <span>Settings</span>
                        </a>
                    <a class="dropdown-item"  href="javascript:;">Help</a>
                      <a class="dropdown-item"  href="<c:url value="/login" />"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
                    </div>
                  </li>
  
                  <li role="presentation" class="nav-item dropdown open">
                    <a href="javascript:;" class="dropdown-toggle info-number" id="navbarDropdown1" data-toggle="dropdown" aria-expanded="false">
                      <i class="fa fa-envelope-o"></i>
                      <span class="badge bg-green">6</span>
                    </a>
                    <ul class="dropdown-menu list-unstyled msg_list" role="menu" aria-labelledby="navbarDropdown1">
                      <li class="nav-item">
                        <a class="dropdown-item">
                          <span class="image"><img src="<c:url value="/resources/images/img.jpg" />" alt="Profile Image" /></span>
                          <span>
                            <span>John Smith</span>
                            <span class="time">3 mins ago</span>
                          </span>
                          <span class="message">
                            Film festivals used to be do-or-die moments for movie makers. They were where...
                          </span>
                        </a>
                      </li>
                      <li class="nav-item">
                        <a class="dropdown-item">
                          <span class="image"><img src="<c:url value="/resources/images/img.jpg" />" alt="Profile Image" /></span>
                          <span>
                            <span>John Smith</span>
                            <span class="time">3 mins ago</span>
                          </span>
                          <span class="message">
                            Film festivals used to be do-or-die moments for movie makers. They were where...
                          </span>
                        </a>
                      </li>
                      <li class="nav-item">
                        <a class="dropdown-item">
                          <span class="image"><img src="<c:url value="/resources/images/img.jpg" />" alt="Profile Image" /></span>
                          <span>
                            <span>John Smith</span>
                            <span class="time">3 mins ago</span>
                          </span>
                          <span class="message">
                            Film festivals used to be do-or-die moments for movie makers. They were where...
                          </span>
                        </a>
                      </li>
                      <li class="nav-item">
                        <a class="dropdown-item">
                          <span class="image"><img src="<c:url value="/resources/images/img.jpg" />" alt="Profile Image" /></span>
                          <span>
                            <span>John Smith</span>
                            <span class="time">3 mins ago</span>
                          </span>
                          <span class="message">
                            Film festivals used to be do-or-die moments for movie makers. They were where...
                          </span>
                        </a>
                      </li>
                      <li class="nav-item">
                        <div class="text-center">
                          <a class="dropdown-item">
                            <strong>See All Alerts</strong>
                            <i class="fa fa-angle-right"></i>
                          </a>
                        </div>
                      </li>
                    </ul>
                  </li>
                </ul>
              </nav>
            </div>
          </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Create New Monitor</h3>
              </div>

            </div>
            <div class="clearfix"></div>
                <div class="x_panel">
                  <div class="col-md-6 ">
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>Create Monitor</h2>
                        <ul class="nav navbar-right panel_toolbox">
                          <!-- <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                          </li> -->
                          <!-- <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="#">Settings 1</a>
                                <a class="dropdown-item" href="#">Settings 2</a>
                              </div>
                          </li> -->
                          <!-- <li><a class="close-link"><i class="fa fa-close"></i></a>
                          </li> -->
                        </ul>
                        <div class="clearfix"></div>
                      </div>
                      <div class="x_content">
                        <br />
                        <form class="form-horizontal form-label-left" action="/CreateMonitor"  method="post">
    
                          <div class="form-group row ">
                            <label class="control-label col-md-3 col-sm-3 ">Monitor Name</label>
                            <div class="col-md-9 col-sm-9 ">
                              <input type="text" class="form-control" required="required" placeholder="" name="monitorName" />
                            </div>
                          </div>
<%--                          <div class="form-group row">--%>
<%--                            <label class="control-label col-md-3 col-sm-3 " required="required" >Select Type</label>--%>
<%--                            <div class="col-md-9 col-sm-9 ">--%>
<%--                              <select class="select2_single form-control" tabindex="-1">--%>
<%--                                <option value="cva">Certifcate Validity</option>--%>
<%--                                <option value="web">Website</option>--%>
<%--                                <option value="rus">Reacl User Performance</option>--%>
<%--                                <option value="mal">Malicious Bot / User Detection</option>--%>
<%--                                <option value="dbs">DNS Expected Values</option>--%>
<%--                                <option value="dom">Domain BlockList</option>--%>
<%--                                <option value="ema">Email BlockLists</option>--%>
<%--                                <option value="gsb">Google Safe Browsing</option>--%>
<%--                                <option value="pin">Ping</option>--%>
<%--                                <option value="tcp">TCP Port</option>--%>
<%--                              </select>--%>
<%--                            </div>--%>
<%--                          </div>--%>
                          <div class="form-group row ">
                            <label class="control-label col-md-3 col-sm-3 ">Hostname</label>
                            <div class="col-md-9 col-sm-9 ">
                              <input type="text" class="form-control" required="required" placeholder="" name="hostName" />
                            </div>
                          </div>
                          <div class="form-group row ">
                            <label class="control-label col-md-3 col-sm-3 ">Alert Days Prior</label>
                            <div class="col-md-9 col-sm-9 ">
                              <input type="text" class="form-control" required="required" placeholder="" name="alertDays">
                            </div>
                          </div>
                            <div class="form-group row ">
                                <label class="control-label col-md-3 col-sm-3 ">Group Email</label>
                                <div class="col-md-9 col-sm-9 ">
                                    <input type="text" class="form-control" required="required" placeholder="" name="groupEmail">
                                </div>
                            </div>
                          <div class="form-group row ">
                            <label class="control-label col-md-3 col-sm-3 ">Port</label>
                            <div class="col-md-9 col-sm-9 ">
                              <input type="text" class="form-control"  placeholder="" name="port">
                            </div>
                          </div>
                          <div class="ln_solid"></div>
                          <div class="form-group">
                            <div class="col-md-9 col-sm-9  offset-md-3">
                              <button type="button" class="btn btn-primary">Cancel</button>
                              <button type="reset" class="btn btn-primary">Reset</button>
                              <button type="submit" class="btn btn-success">Submit</button>
                            </div>
                          </div>
    
                        </form>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-12 col-sm-12 ">
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>Active Monitors</small></h2>
                        <ul class="nav navbar-right panel_toolbox">
                          
                        </ul>
                        <div class="clearfix"></div>
                      </div>
                      <div class="x_content">
                          <div class="row">
                              <div class="col-sm-12">
                                <div class="card-box table-responsive">
                       
                        <table id="monitors-table" class="table table-striped table-bordered bulk_action" style="width:100%">
                          <thead>
                            <tr>
                              <th>Enabled</th>
                              <th>Name</th>
                              <th>Type</th>
                              <th>Status</th>
                              <th>URL</th>
                              <th>Action</th>
                            </tr>
                          </thead>
                          <tbody id="monitors-table-body">

                          </tbody>
                        </table>
                      </div>
                      </div>
                  </div>
                </div>
                    </div>
                  </div>
                  
                  <!-- <div class="x_title">
                    <h2>Registration Form <small>Click to validate</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="#">Settings 1</a>
                            <a class="dropdown-item" href="#">Settings 2</a>
                          </div>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div> -->
                  <div class="x_content">

                    <!-- start form for validation -->
                    <!-- <form id="demo-form" data-parsley-validate> -->
                      <!-- <label for="fullname">Full Name * :</label>
                      <input type="text" id="fullname" class="form-control" name="fullname" required />

                      <label for="email">Email * :</label>
                      <input type="email" id="email" class="form-control" name="email" data-parsley-trigger="change" required /> -->

                      <!-- <label>Gender *:</label>
                      <p>
                        M:
                        <input type="radio" class="flat" name="gender" id="genderM" value="M" checked="" required /> F:
                        <input type="radio" class="flat" name="gender" id="genderF" value="F" />
                      </p> -->

                      <!-- <label>Hobbies (2 minimum):</label> -->
                      <!-- <p style="padding: 5px;">
                        <input type="checkbox" name="hobbies[]" id="hobby1" value="ski" data-parsley-mincheck="2" required class="flat" /> Skiing
                        <br />

                        <input type="checkbox" name="hobbies[]" id="hobby2" value="run" class="flat" /> Running
                        <br />

                        <input type="checkbox" name="hobbies[]" id="hobby3" value="eat" class="flat" /> Eating
                        <br />

                        <input type="checkbox" name="hobbies[]" id="hobby4" value="sleep" class="flat" /> Sleeping
                        <br />
                        <p> -->

                          <!-- <label for="heard">Heard us by *:</label>
                          <select id="heard" class="form-control" required>
                            <option value="">Choose..</option>
                            <option value="press">Press</option>
                            <option value="net">Internet</option>
                            <option value="mouth">Word of mouth</option>
                          </select> -->

                          <!-- <label for="message">Message (20 chars min, 100 max) :</label>
                          <textarea id="message" required="required" class="form-control" name="message" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100" data-parsley-minlength-message="Come on! You need to enter at least a 20 caracters long comment.."
                            data-parsley-validation-threshold="10"></textarea>

                          <br/>
                          <span class="btn btn-primary">Validate form</span> -->

                    <!-- </form> -->
                    <!-- end form for validations -->

                  </div>
                </div>


              </div>

              


              <!-- <div class="col-md-6 col-sm-12 ">
                <div class="x_panel"> -->
                  <!-- <div class="x_title">
                    <h2>Form Buttons <small>Sessions</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="#">Settings 1</a>
                            <a class="dropdown-item" href="#">Settings 2</a>
                          </div>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div> -->
                  <!-- <div class="x_content"> -->

                    <!-- <form class="form-horizontal form-label-left"> -->

                      <!-- <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Button addons</label>

                        <div class="col-sm-9">
                          <div class="input-group">
                            <span class="input-group-btn">
                                              <button type="button" class="btn btn-primary go-class">Go!</button>
                                          </span>
                            <input type="text" class="form-control">
                          </div>
                          <div class="input-group">
                            <input type="text" class="form-control">
                            <span class="input-group-btn">
                                              <button type="button" class="btn btn-primary">Go!</button>
                                          </span>
                          </div>
                        </div>
                      </div> -->
                      <!-- <div class="divider-dashed"></div> -->

                      <!-- <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Button addons</label>

                        <div class="col-sm-9">
                          <div class="dropdown input-group row">
                            <input type="text" class="form-control" aria-label="Text input with dropdown button">
                            <div class="input-group-btn">
                              <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Action <span class="caret"></span>
                              </button>
                              <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                <li><a class="dropdown-item" href="#">Action</a>
                                </li>
                                <li><a class="dropdown-item" href="#">Another action</a>
                                </li>
                                <li><a class="dropdown-item" href="#">Something else here</a>
                                </li>
                                <li class="divider"></li>
                                <li><a class="dropdown-item"  href="#">Separated link</a>
                                </li>
                              </ul>
                            </div>
                           /btn-group -->
                          <!-- </div> -->
                          <!-- <div class="input-group">
                            <input type="text" class="form-control">
                            <span class="input-group-btn">
                              <button type="button" class="btn btn-primary">Go!</button>
                            </span>
                          </div> -->
                        <!-- </div> -->
                      <!-- </div>  -->
                    <!-- </form> -->
                  <!-- </div> -->
                <!-- </div>
              </div> -->
            </div>

            <!-- <div class="col-md-12 col-sm-12 ">
              <div class="x_panel">
                <div class="x_title">
                  <h2>Text areas<small>Sessions</small></h2>
                  <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                          <a class="dropdown-item" href="#">Settings 1</a>
                          <a class="dropdown-item" href="#">Settings 2</a>
                        </div>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">
                  <div id="alerts"></div>
                  <div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor-one">
                    <div class="btn-group">
                      <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="fa fa-font"></i><b class="caret"></b></a>
                      <ul class="dropdown-menu">
                      </ul>
                    </div>

                    <div class="btn-group">
                      <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
                      <ul class="dropdown-menu">
                        <li>
                          <a data-edit="fontSize 5">
                            <p style="font-size:17px">Huge</p>
                          </a>
                        </li>
                        <li>
                          <a data-edit="fontSize 3">
                            <p style="font-size:14px">Normal</p>
                          </a>
                        </li>
                        <li>
                          <a data-edit="fontSize 1">
                            <p style="font-size:11px">Small</p>
                          </a>
                        </li>
                      </ul>
                    </div>

                    <div class="btn-group">
                      <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="fa fa-bold"></i></a>
                      <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
                      <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
                      <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
                    </div>

                    <div class="btn-group">
                      <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
                      <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
                      <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-dedent"></i></a>
                      <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
                    </div>

                    <div class="btn-group">
                      <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
                      <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
                      <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
                      <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
                    </div>

                    <div class="btn-group">
                      <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
                      <div class="dropdown-menu input-append">
                        <input class="span2" placeholder="URL" type="text" data-edit="createLink" />
                        <button class="btn" type="button">Add</button>
                      </div>
                      <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>
                    </div>

                    <div class="btn-group">
                      <a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="fa fa-picture-o"></i></a>
                      <input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
                    </div>

                    <div class="btn-group">
                      <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
                      <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
                    </div>
                  </div>

                  <div id="editor-one" class="editor-wrapper"></div>

                  <textarea name="descr" id="descr" style="display:none;"></textarea>
                  
                  <br />

                  <div class="ln_solid"></div>

                  <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 ">Resizable Text area</label>
                    <div class="col-md-9 col-sm-9 ">
                      <textarea class="resizable_textarea form-control" placeholder="This text area automatically resizes its height as you fill in more text courtesy of autosize-master it out..."></textarea>
                    </div>
                  </div>
                </div>
              </div>
            </div> -->

            <!-- <div class="x_panel">
              <div class="x_title">
                <h2>Form Input Grid <small>form input </small></h2>
                <ul class="nav navbar-right panel_toolbox">
                  <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                  </li>
                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="#">Settings 1</a>
                        <a class="dropdown-item" href="#">Settings 2</a>
                      </div>
                  </li>
                  <li><a class="close-link"><i class="fa fa-close"></i></a>
                  </li>
                </ul>
                <div class="clearfix"></div>
              </div>
              <div class="x_content">

                <div class="row">

                  <div class="col-md-12 col-sm-12  form-group">
                    <input type="text" placeholder=".col-md-12" class="form-control">
                  </div>

                  <div class="col-md-6 col-sm-12  form-group">
                    <input type="text" placeholder=".col-md-6" class="form-control">
                  </div>

                  <div class="col-md-6 col-sm-12  form-group">
                    <input type="text" placeholder=".col-md-6" class="form-control">
                  </div>


                  <div class="col-md-4 col-sm-12  form-group">
                    <input type="text" placeholder=".col-md-4" class="form-control">
                  </div>

                  <div class="col-md-4 col-sm-12  form-group">
                    <input type="text" placeholder=".col-md-4" class="form-control">
                  </div>

                  <div class="col-md-4 col-sm-12  form-group">
                    <input type="text" placeholder=".col-md-4" class="form-control">
                  </div>


                  <div class="col-md-3 col-sm-12  form-group">
                    <input type="text" placeholder=".col-md-3" class="form-control">
                  </div>

                  <div class="col-md-3 col-sm-12  form-group">
                    <input type="text" placeholder=".col-md-3" class="form-control">
                  </div>

                  <div class="col-md-3 col-sm-12  form-group">
                    <input type="text" placeholder=".col-md-3" class="form-control">
                  </div>

                  <div class="col-md-3 col-sm-12  form-group">
                    <input type="text" placeholder=".col-md-3" class="form-control">
                  </div>


                  <div class="col-md-2 col-sm-12  form-group">
                    <input type="text" placeholder=".col-md-2" class="form-control">
                  </div>

                  <div class="col-md-2 col-sm-12  form-group">
                    <input type="text" placeholder=".col-md-2" class="form-control">
                  </div>

                  <div class="col-md-2 col-sm-12  form-group">
                    <input type="text" placeholder=".col-md-2" class="form-control">
                  </div>

                  <div class="col-md-2 col-sm-12  form-group">
                    <input type="text" placeholder=".col-md-2" class="form-control">
                  </div>

                  <div class="col-md-2 col-sm-12  form-group">
                    <input type="text" placeholder=".col-md-2" class="form-control">
                  </div>

                  <div class="col-md-2 col-sm-12  form-group">
                    <input type="text" placeholder=".col-md-2" class="form-control">
                  </div>


                  <div class="col-md-1 col-sm-12  form-group">
                    <input type="text" placeholder=".col-md-1" class="form-control">
                  </div>

                  <div class="col-md-1 col-sm-12  form-group">
                    <input type="text" placeholder=".col-md-1" class="form-control">
                  </div>

                  <div class="col-md-1 col-sm-12  form-group">
                    <input type="text" placeholder=".col-md-1" class="form-control">
                  </div>

                  <div class="col-md-1 col-sm-12  form-group">
                    <input type="text" placeholder=".col-md-1" class="form-control">
                  </div>

                  <div class="col-md-1 col-sm-12  form-group">
                    <input type="text" placeholder=".col-md-1" class="form-control">
                  </div>

                  <div class="col-md-1 col-sm-12  form-group">
                    <input type="text" placeholder=".col-md-1" class="form-control">
                  </div>

                  <div class="col-md-1 col-sm-12  form-group">
                    <input type="text" placeholder=".col-md-1" class="form-control">
                  </div>

                  <div class="col-md-1 col-sm-12  form-group">
                    <input type="text" placeholder=".col-md-1" class="form-control">
                  </div>

                  <div class="col-md-1 col-sm-12  form-group">
                    <input type="text" placeholder=".col-md-1" class="form-control">
                  </div>

                  <div class="col-md-1 col-sm-12  form-group">
                    <input type="text" placeholder=".col-md-1" class="form-control">
                  </div>

                  <div class="col-md-1 col-sm-12  form-group">
                    <input type="text" placeholder=".col-md-1" class="form-control">
                  </div>

                  <div class="col-md-1 col-sm-12  form-group">
                    <input type="text" placeholder=".col-md-1" class="form-control">
                  </div>
                </div>

              </div>
            </div> -->


            <!-- <div class="x_panel">
              <div class="x_title">
                <h2>Form Design <small>different form elements</small></h2>
                <ul class="nav navbar-right panel_toolbox">
                  <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                  </li> -->
                  <!-- <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="#">Settings 1</a>
                        <a class="dropdown-item" href="#">Settings 2</a>
                      </div>
                  </li> -->
                  <!-- <li><a class="close-link"><i class="fa fa-close"></i></a>
                  </li>
                </ul>
                <div class="clearfix"></div>
              </div>
              <div class="x_content">
                <br /> -->

                <!-- <h4>Horizontal labels</h4>
                <p class="font-gray-dark">
                  Using the grid system you can control the position of the labels. The form example below has the <b>col-md-10</b> which sets the width to 10/12 and <b>center-margin</b> which centers it.
                </p> -->
                <!-- <form class="form-horizontal form-label-left">
                  <div class="form-group row">
                    <label class="control-label col-md-3" for="first-name">First Nameddd <span class="required">*</span>
                    </label>
                    <div class="col-md-7">
                      <input type="text" id="first-name2" required="required" class="form-control col-md-7 ">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label class="control-label col-md-3" for="last-name">Last Name <span class="required">*</span>
                    </label>
                    <div class="col-md-7">
                      <input type="text" id="last-name2" name="last-name" required="required" class="form-control col-md-7 ">
                    </div>
                  </div>
                </form> -->


                <!-- <h4>Vertical labels</h4>
                <p class="font-gray-dark">
                  For making labels vertical you have two options, either use the apropiate grid <b>.col-</b> class or wrap the form in the <b>form-vertical</b> class.
                </p> -->
                <!-- <div class="col-md-8 center-margin">
                  <form class="form-horizontal form-label-left">
                    <div class="form-group row">
                      <label>Email address</label>
                      <input type="email" class="form-control" placeholder="Enter email">
                    </div>
                    <div class="form-group row">
                      <label>Password</label>
                      <input type="password" class="form-control" placeholder="Password">
                    </div>

                  </form>
                </div> -->

                <!-- <h4>Inline Form </h4> -->
                <!-- <p class="font-gray-dark">
                  Add .form-inline to your form (which doesn't have to be a &lt;form&gt;) for left-aligned and inline-block controls.
                </p> -->
                <!-- <form class="form-inline">
                  <div class="form-group">
                    <label for="ex3" class="col-form-label">Email address</label>
                    <input type="text" id="ex3" class="form-control" placeholder=" ">
                  </div>
                  <div class="form-group">
                    <label for="ex4" class="col-form-label">Email address</label>
                    <input type="email" id="ex4" class="form-control" placeholder=" ">
                  </div>
                  <div class="form-check">
                    <label>
                      <input type="checkbox"> Remember me
                    </label>
                  </div>
                  <button type="submit" class="btn btn-secondary">Send invitation</button>
                </form> -->
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <!-- <div class="pull-right">
            Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
          </div> -->
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    <!-- jQuery -->
    <script src="<c:url value="/resources/vendors/jquery/dist/jquery.min.js" />" ></script>
    <!-- Bootstrap -->
   <script src="<c:url value="/resources/vendors/bootstrap/dist/js/bootstrap.bundle.min.js" />" ></script>
    <!-- FastClick -->
    <script src="<c:url value="/resources/vendors/fastclick/lib/fastclick.js" />" ></script>
    <!-- NProgress -->
    <script src="<c:url value="/resources/vendors/nprogress/nprogress.js" />" ></script>
    <!-- bootstrap-progressbar -->
    <script src="<c:url value="/resources/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js" />" ></script>
    <!-- iCheck -->
    <script src="<c:url value="/resources/vendors/iCheck/icheck.min.js" />" ></script>
    <!-- bootstrap-daterangepicker -->
    <script src="<c:url value="/resources/vendors/moment/min/moment.min.js" />" ></script>
    <script src="<c:url value="/resources/vendors/bootstrap-daterangepicker/daterangepicker.js" />" ></script>
    <!-- bootstrap-wysiwyg -->
    <script src="<c:url value="/resources/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js" />" ></script>
    <script src="<c:url value="/resources/vendors/jquery.hotkeys/jquery.hotkeys.js" />" ></script>
    <script src="<c:url value="/resources/vendors/google-code-prettify/src/prettify.js" />" ></script>
    <!-- jQuery Tags Input -->
    <script src="<c:url value="/resources/vendors/jquery.tagsinput/src/jquery.tagsinput.js" />" ></script>
    <!-- Switchery -->
    <script src="<c:url value="/resources/vendors/switchery/dist/switchery.min.js" />" ></script>
    <!-- Select2 -->
    <script src="<c:url value="/resources/vendors/select2/dist/js/select2.full.min.js" />" ></script>
    <!-- Parsley -->
    <script src="<c:url value="/resources/vendors/parsleyjs/dist/parsley.min.js" />" ></script>
    <!-- Autosize -->
    <script src="<c:url value="/resources/vendors/autosize/dist/autosize.min.js" />" ></script>
    <!-- jQuery autocomplete -->
    <script src="<c:url value="/resources/vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js" />" ></script>
    <!-- starrr -->
    <script src="<c:url value="/resources/vendors/starrr/dist/starrr.js" />" ></script>
    <!-- Custom Theme Scripts -->
    <script src="<c:url value="/resources/build/js/custom.js" />" ></script>

    <script src="<c:url value="/resources/js/certmonitor.js" />" ></script>

    <script type="text/javascript">
        $(document).ready(function(){
            loadDataToMonitorsTable();
        });
    </script>
    <script type="text/javascript">
        function getContextPath() {
            return "<c:out value="${pageContext.request.contextPath}" />";
        }
    </script>
  </body>
</html>
