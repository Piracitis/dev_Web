﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/LoggedIn.Master" CodeBehind="Agriculture.aspx.vb" Inherits="Agripedia.Agriculture" %>


<asp:Content ID="Content1" ContentPlaceHolderID="placeholder" runat="server">
    <form runat="server">
        <div class="container-fluid">
            <div class="container">
                <div class="row" style="margin-top: 2.8%">
                    <div class="col-md-2 hidden-xs">
                        <div id="something" style="margin-top: 2%">
                        </div>
                        <ul class="nav nav-list">
                            <li class="divider"></li>
                            <li>
                                <label class="tree-toggle nav-header">Input</label>
                                <ul class="nav nav-list tree">
                                    <li>
                                        <label class="tree-toggle nav-header">&nbsp&nbsp&nbsp Seeds</label>
                                        <ul class="nav nav-list tree">
                                            <li>
                                                <label class="tree-toggle nav-header">
                                                    <a href="Dealer.aspx">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Dealers</a></label>
                                            </li>
                                            <li>
                                                <label class="tree-toggle nav-header">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Seed Varieties</label>
                                                <ul class="nav nav-list tree">
                                                    <li><a href="Agriculture.aspx">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Kitchen Garden</a></li>
                                                    <li><a href="Spices_Herbs.aspx">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Spices & Herbs</a></li>
                                                    <li><a href="OtherVeggie.aspx">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Other Vegetables</a></li>
                                                    <li><a href="Fruits.aspx">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fruits</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <label class="tree-toggle nav-header">&nbsp&nbsp&nbsp Fertilizers</label>
                                        <ul class="nav nav-list tree">
                                            <li>
                                                <label class="tree-toggle nav-header">
                                                    <a href="FertiDealer.aspx">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Dealers</a></label>
                                            </li>
                                            <li>
                                                <label class="tree-toggle nav-header">
                                                    <a href="Fertilizers.aspx">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Various Fertilizers</a></label>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                                <br />
                            </li>
                        </ul>
                        <ul class="nav nav-list">
                            <li class="divider"></li>
                            <li>
                                <label class="tree-toggle nav-header">Best Practices</label>
                                <ul class="nav nav-list tree">
                                    <li>
                                        <label class="tree-toggle nav-header">&nbsp&nbsp&nbsp Sustainable Agriculture</label>
                                        <ul class="nav nav-list tree">
                                            <li>
                                                <label class="tree-toggle nav-header">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Biodiversity</label>
                                                <ul class="nav nav-list tree">
                                                    <li><a href="CommunityFor.aspx">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Community Managed Forest</a></li>
                                                    <li><a href="Unculti.aspx">Conservation of uncultivated foods by local communities </a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                        <label class="tree-toggle nav-header">&nbsp&nbsp&nbsp AgroBased Enterprises Agriculture</label>
                                        <ul class="nav nav-list tree">
                                            <li>
                                                <label class="tree-toggle nav-header">
                                                    <a href="CaseStudy.aspx">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Case Studies - Agro Enterprises</a></label>
                                            </li>

                                        </ul>
                                    </li>
                                </ul>
                                <br />
                            </li>
                        </ul>
                        <ul class="nav nav-list">
                            <li class="divider"></li>
                            <li>
                                <label class="tree-toggle nav-header">Market Information</label>
                                <ul class="nav nav-list tree">
                                    <li>
                                        <label class="tree-toggle nav-header"><a href="MarketInformation.aspx">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Mininum Support Price</a></label>
                                    </li>
                                    <li>
                                        <label class="tree-toggle nav-header">
                                            <a href="MSPWeb.aspx">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Market Information Related Websites</a></label>

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
                                            <img src="images/carrot.jpg" alt="..." />
                                            <div class="caption text-center">
                                                <h3>Carrot</h3>
                                            </div>
                                            <!--end caption-->
                                            <asp:Button class="btn btn-warning" runat="server" OnClick="ButtonClick" Text="ViewMore" ID="Carrot" /><i class="fa fa-angle-right"></i>
                                        </div>
                                        <!--end thumbnail-->
                                    </div>
                                    <!--end col-->
                                    <div class="col-sm-6 col-md-3">
                                        <div class="thumbnail">
                                            <img src="images/tomatoes.jpg" alt="..." />
                                            <div class="caption text-center">
                                                <h3>Tomato</h3>
                                            </div>
                                            <!--end caption-->
                                            <asp:Button class="btn btn-warning" runat="server" OnClick="ButtonClick" Text="ViewMore" ID="Tomato" /><i class="fa fa-angle-right"></i>
                                        </div>
                                        <!--end thumbnail-->
                                    </div>
                                    <!--end col-->
                                    <div class="col-sm-6 col-md-3">
                                        <div class="thumbnail">
                                            <img src="images/cabbage.jpg" alt="..." />
                                            <div class="caption text-center">
                                                <h3>Cabbage</h3>
                                            </div>
                                            <!--end caption-->
                                            <asp:Button class="btn btn-warning" runat="server" OnClick="ButtonClick" Text="ViewMore" ID="Cabbage" /><i class="fa fa-angle-right"></i>
                                        </div>
                                        <!--end thumbnail-->
                                    </div>
                                    <!--end col-->
                                    <div class="col-sm-6 col-md-3">
                                        <div class="thumbnail">
                                            <img src="images/Cucumber.jpg" alt="..." />
                                            <div class="caption text-center">
                                                <h3>Cucumber</h3>
                                            </div>
                                            <!--end caption-->
                                            <asp:Button class="btn btn-warning" runat="server" OnClick="ButtonClick" Text="ViewMore" ID="Cucumber" /><i class="fa fa-angle-right"></i>
                                        </div>
                                        <!--end thumbnail-->
                                    </div>
                                    <!--end col-->
                                </div>
                                <!--end row-->
                                <div class="row">
                                    <div class="col-sm-6 col-md-3">
                                        <div class="thumbnail">
                                            <img src="images/chilli_phule_jyoti.jpg" alt="..." />
                                            <div class="caption text-center">
                                                <h3>Chilli</h3>
                                            </div>
                                            <!--end caption-->
                                            <asp:Button class="btn btn-warning" runat="server" OnClick="ButtonClick" Text="ViewMore" ID="Chilli" /><i class="fa fa-angle-right"></i>
                                        </div>
                                        <!--end thumbnail-->
                                    </div>
                                    <!--end col-->
                                    <div class="col-sm-6 col-md-3">
                                        <div class="thumbnail">
                                            <img src="images/parsley.jpg" alt="..." />
                                            <div class="caption text-center">
                                                <h3>Parsley</h3>
                                            </div>
                                            <!--end caption-->
                                            <asp:Button class="btn btn-warning" runat="server" OnClick="ButtonClick" Text="ViewMore" ID="Parsley" /><i class="fa fa-angle-right"></i>
                                        </div>
                                        <!--end thumbnail-->
                                    </div>
                                    <!--end col-->
                                    <div class="col-sm-6 col-md-3">
                                        <div class="thumbnail">
                                            <img src="images/beans.jpg" alt="..." />
                                            <div class="caption text-center">
                                                <h3>Beans</h3>
                                            </div>
                                            <!--end caption-->
                                            <asp:Button class="btn btn-warning" runat="server" OnClick="ButtonClick" Text="ViewMore" ID="Beans" /><i class="fa fa-angle-right"></i>
                                        </div>
                                        <!--end thumbnail-->
                                    </div>
                                    <!--end col-->
                                    <div class="col-sm-6 col-md-3">
                                        <div class="thumbnail">
                                            <img src="images/brinjal.jpg" alt="..." />
                                            <div class="caption text-center">
                                                <h3>Brinjal</h3>
                                            </div>
                                            <!--end caption-->
                                            <asp:Button class="btn btn-warning" runat="server" OnClick="ButtonClick" Text="ViewMore" ID="brinjal" /><i class="fa fa-angle-right"></i>
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
    </form>

    <script>
        $('.tree-toggle').click(function () {
            $(this).parent().children('ul.tree').toggle(200);
        });
        $(function () {
            $('.tree-toggle').parent().children('ul.tree').toggle(200);
        })
    </script>
</asp:Content>
