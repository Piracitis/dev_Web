<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/LoggedIn.Master" CodeBehind="OtherVeggie.aspx.vb" Inherits="Agripedia.OtherVeggie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="placeholder" runat="server">
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
                                            <img src="images/cauliflower.jpg" alt="..." />
                                            <div class="caption text-center">
                                                <h3>cauliflower</h3>
                                            </div>
                                            <!--end caption-->
                                            <asp:Button class="btn btn-warning" runat="server" OnClick="ButtonClick" Text="ViewMore" ID="cauliflower" /><i class="fa fa-angle-right"></i>
                                        </div>
                                        <!--end thumbnail-->
                                    </div>
                                    <!--end col-->
                                    <div class="col-sm-6 col-md-3">
                                        <div class="thumbnail">
                                            <img src="images/fenugreek.jpg" alt="..." />
                                            <div class="caption text-center">
                                                <h3>fenugreek</h3>
                                            </div>
                                            <!--end caption-->
                                            <asp:Button class="btn btn-warning" runat="server" OnClick="ButtonClick" Text="ViewMore" ID="fenugreek" /><i class="fa fa-angle-right"></i>
                                        </div>
                                        <!--end thumbnail-->
                                    </div>
                                    <!--end col-->
                                    <div class="col-sm-6 col-md-3">
                                        <div class="thumbnail">
                                            <img src="images/amaranthus.jpg" alt="..." />
                                            <div class="caption text-center">
                                                <h3>amaranthus</h3>
                                            </div>
                                            <!--end caption-->
                                            <asp:Button class="btn btn-warning" runat="server" OnClick="ButtonClick" Text="ViewMore" ID="amaranthus" /><i class="fa fa-angle-right"></i>
                                        </div>
                                        <!--end thumbnail-->
                                    </div>
                                    <!--end col-->
                                    <div class="col-sm-6 col-md-3">
                                        <div class="thumbnail">
                                            <img src="images/cowpea.jpg" alt="..." />
                                            <div class="caption text-center">
                                                <h3>cowpea</h3>
                                            </div>
                                            <!--end caption-->
                                            <asp:Button class="btn btn-warning" runat="server" OnClick="ButtonClick" Text="ViewMore" ID="cowpea" /><i class="fa fa-angle-right"></i>
                                        </div>
                                        <!--end thumbnail-->
                                    </div>
                                    <!--end col-->
                                </div>
                                <!--end row-->
                                <div class="row">
                                    <div class="col-sm-6 col-md-3">
                                        <div class="thumbnail">
                                            <img src="images/bhendi.jpg" alt="..." />
                                            <div class="caption text-center">
                                                <h3>bhendi</h3>
                                            </div>
                                            <!--end caption-->
                                            <asp:Button class="btn btn-warning" runat="server" OnClick="ButtonClick" Text="ViewMore" ID="bhendi" /><i class="fa fa-angle-right"></i>
                                        </div>
                                        <!--end thumbnail-->
                                    </div>
                                    <!--end col-->
                                    <div class="col-sm-6 col-md-3">
                                        <div class="thumbnail">
                                            <img src="images/capsicum.jpg" alt="..." />
                                            <div class="caption text-center">
                                                <h3>capsicum</h3>
                                            </div>
                                            <!--end caption-->
                                            <asp:Button class="btn btn-warning" runat="server" OnClick="ButtonClick" Text="ViewMore" ID="capsicum" /><i class="fa fa-angle-right"></i>
                                        </div>
                                        <!--end thumbnail-->
                                    </div>
                                    <!--end col-->
                                    <div class="col-sm-6 col-md-3">
                                        <div class="thumbnail">
                                            <img src="images/pea.jpg" alt="..." />
                                            <div class="caption text-center">
                                                <h3>pea</h3>
                                            </div>
                                            <!--end caption-->
                                            <asp:Button class="btn btn-warning" runat="server" OnClick="ButtonClick" Text="ViewMore" ID="pea" /><i class="fa fa-angle-right"></i>
                                        </div>
                                        <!--end thumbnail-->
                                    </div>
                                    <!--end col-->
                                    <div class="col-sm-6 col-md-3">
                                        <div class="thumbnail">
                                            <img src="images/rajma.jpg" alt="..." />
                                            <div class="caption text-center">
                                                <h3>rajma</h3>
                                            </div>
                                            <!--end caption-->
                                            <asp:Button class="btn btn-warning" runat="server" OnClick="ButtonClick" Text="ViewMore" ID="rajma" /><i class="fa fa-angle-right"></i>
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
        //$(function () {
        //    $('.tree-toggle').parent().children('ul.tree').toggle(200);
        //})

        function anchor() {
            var anchor = document.getElementByid("OtherVeggie")
            anchor.setAttribute('class', 'active');
        }
    </script>
</asp:Content>
