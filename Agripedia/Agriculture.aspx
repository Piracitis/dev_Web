<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/LoggedIn.Master" CodeBehind="Agriculture.aspx.vb" Inherits="Agripedia.Agriculture" %>

<asp:Content ID="Content1" ContentPlaceHolderID="placeholder" runat="server">
    <div class="container-fluid">
        <div class="container">
            <div class="row" style =" margin-top : 2.8%">
                <div class="col-md-2 hidden-xs">
                    <div id="something" style="margin-top: 2%">
                    </div>
                <ul class="nav nav-list">
                    <li>
                        <label class="tree-toggle nav-header">Seeds</label>
                        <ul class="nav nav-list tree">
                            <li>
                                <label class="tree-toggle nav-header">&nbsp&nbsp&nbsp Seed Varieties </label>
                                <ul class="nav nav-list tree">
                                    <li><a href="#">&nbsp&nbsp&nbsp </a></li>
                                    <li><a href="#">Sizes</a></li>
                                    <li>
                                        <label class="tree-toggle nav-header">Forms</label>
                                        <ul class="nav nav-list tree">
                                            <li><a href="#">Horizontal</a></li>
                                            <li><a href="#">Vertical</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <label class="tree-toggle nav-header">Responsive</label>
                        <ul class="nav nav-list tree">
                            <li><a href="#">Overview</a></li>
                            <li><a href="#">CSS</a></li>
                            <li>
                                <label class="tree-toggle nav-header">Media Queries</label>
                                <ul class="nav nav-list tree">
                                    <li><a href="#">Text</a></li>
                                    <li><a href="#">Images</a></li>
                                    <li>
                                        <label class="tree-toggle nav-header">Mobile Devices</label>
                                        <ul class="nav nav-list tree">
                                            <li><a href="#">iPhone</a></li>
                                            <li><a href="#">Samsung</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <label class="tree-toggle nav-header">Coding</label>
                                <ul class="nav nav-list tree">
                                    <li><a href="#">JavaScript</a></li>
                                    <li><a href="#">jQuery</a></li>
                                    <li>
                                        <label class="tree-toggle nav-header">HTML DOM</label>
                                        <ul class="nav nav-list tree">
                                            <li><a href="#">DOM Elements</a></li>
                                            <li><a href="#">Recursive</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
                </div>
                <div class="col-md-10">
                    <div class="panel">
                        <div class="panel-heading">
                            <h3 class="panel-title">BROWSE BY CATEGORIES</h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-sm-6 col-md-3">
                                    <div class="thumbnail">
                                        <img src="images/carrot.jpg" alt="...">
                                        <div class="caption text-center">
                                            <h3>Carrot</h3>
                                        </div>
                                        <!--end caption-->
                                        <a href="product.html" class="btn btn-warning" role="button">View more <i class="fa fa-angle-right"></i></a>
                                    </div>
                                    <!--end thumbnail-->
                                </div>
                                <!--end col-->
                                <div class="col-sm-6 col-md-3">
                                    <div class="thumbnail">
                                        <img src="images/tomatoes.jpg" alt="...">
                                        <div class="caption text-center">
                                            <h3>Tomato</h3>
                                        </div>
                                        <!--end caption-->
                                        <a href="product.html" class="btn btn-warning" role="button">View more <i class="fa fa-angle-right"></i></a>
                                    </div>
                                    <!--end thumbnail-->
                                </div>
                                <!--end col-->
                                <div class="col-sm-6 col-md-3">
                                    <div class="thumbnail">
                                        <img src="images/cabbage.jpg" alt="...">
                                        <div class="caption text-center">
                                            <h3>Cabbage</h3>
                                        </div>
                                        <!--end caption-->
                                        <a href="product.html" class="btn btn-warning" role="button">View more <i class="fa fa-angle-right"></i></a>
                                    </div>
                                    <!--end thumbnail-->
                                </div>
                                <!--end col-->
                                <div class="col-sm-6 col-md-3">
                                    <div class="thumbnail">
                                        <img src="images/Cucumber.jpg" alt="...">
                                        <div class="caption text-center">
                                            <h3>Cucumber</h3>
                                        </div>
                                        <!--end caption-->
                                        <a href="product.html" class="btn btn-warning" role="button">View more <i class="fa fa-angle-right"></i></a>
                                    </div>
                                    <!--end thumbnail-->
                                </div>
                                <!--end col-->
                            </div>
                            <!--end row-->
                            <div class="row">
                                <div class="col-sm-6 col-md-3">
                                    <div class="thumbnail">
                                        <img src="images/chilli_phule_jyoti.jpg" alt="...">
                                        <div class="caption text-center">
                                            <h3>Chilli</h3>
                                        </div>
                                        <!--end caption-->
                                        <a href="product.html" class="btn btn-warning" role="button">View more <i class="fa fa-angle-right"></i></a>
                                    </div>
                                    <!--end thumbnail-->
                                </div>
                                <!--end col-->
                                <div class="col-sm-6 col-md-3">
                                    <div class="thumbnail">
                                        <img src="images/parsley.jpg" alt="...">
                                        <div class="caption text-center">
                                            <h3>Par</h3>
                                        </div>
                                        <!--end caption-->
                                        <a href="product.html" class="btn btn-warning" role="button">View more <i class="fa fa-angle-right"></i></a>
                                    </div>
                                    <!--end thumbnail-->
                                </div>
                                <!--end col-->
                                <div class="col-sm-6 col-md-3">
                                    <div class="thumbnail">
                                        <img src="images/beans.jpg" alt="...">
                                        <div class="caption text-center">
                                            <h3>Beans</h3>
                                        </div>
                                        <!--end caption-->
                                        <a href="product.html" class="btn btn-warning" role="button">View more <i class="fa fa-angle-right"></i></a>
                                    </div>
                                    <!--end thumbnail-->
                                </div>
                                <!--end col-->
                                <div class="col-sm-6 col-md-3">
                                    <div class="thumbnail">
                                        <img src="images/dill.jpg" alt="...">
                                        <div class="caption text-center">
                                            <h3>Dill</h3>
                                        </div>
                                        <!--end caption-->
                                        <a href="product.html" class="btn btn-warning" role="button">View more <i class="fa fa-angle-right"></i></a>
                                    </div>
                                    <!--end thumbnail-->
                                </div>
                                <!--end col-->
                            </div>
                            <!--end row-->
                        </div>
                        <!--end panel-body-->
                    </div>
                    <!--end panel-->
                </div>
            </div>
            
        </div>
    </div>
    <script>
        $('.tree-toggle').click(function () {
            $(this).parent().children('ul.tree').toggle(200);
        });
        $(function () {
            $('.tree-toggle').parent().children('ul.tree').toggle(200);
        })
    </script>
</asp:Content>
