<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Main.Master" CodeBehind="HomePage.aspx.vb" Inherits="Agripedia.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="placeholder" runat="server">

    <div id="portal-column-content" class="cell width-full position-0">
        <!--Header-->
        <div class="">
            <dl class="portalMessage info" id="kssPortalMessage" style="display: none">
                <dt>Info</dt>
                <dd></dd>
            </dl>
            <div>
                <style type="text/css">
                    #plone-contentmenu-workflow {
                        display: block;
                    }
                </style>
            </div>

            <div id="content" class="bordered">
                <div id="viewlet-above-content">
                    <div id="portal-breadcrumbs">


                        <span id="breadcrumbs-home">
                            <a href="HomePage.aspx">Home</a>
                            <span class="breadcrumbSeparator">/
			
                            </span>
                        </span>
                        <span id="breadcrumbs-1" dir="ltr">
                            <span id="breadcrumbs-current">Home</span>

                        </span>

                    </div>
                </div>
                <div id="viewlet-above-content-title">&nbsp;&nbsp; </div>
                <div id="content-core" class="bordered" >
                    <div id="parent-fieldname-text-9aca6ef0fed64aa29a0cd35d2d333630" class="bordered">
                        <div id="mainContent">
                            <div id="dashboard_home">
                                <div id="LeftColumn">
                                    <div class="col-md-4" id="latest_dashboard">
                                        <div class="panel panel-success">
                                            <div class="panel-heading latestItem">
                                                <h4>Latest Items</h4>
                                            </div>
                                            <ul class="list-group">
                                                <li class="list-group-item"><a href="http://vikaspedia.in/agriculture/poultry/backyard-poultry/narmadanidhi"><span>Narmada Nidhi - A hy ...</span></a></li>
                                                <li class="list-group-item"><a href="http://vikaspedia.in/e-governance/women-and-e-governance/mahila-e-haat"><span>Mahila e-Haat</span></a></li>
                                                <li class="list-group-item"><a href="http://vikaspedia.in/newsletter/vikas-news-march-2016"><span>Vikas-news-March-201 ...</span></a></li>
                                                <li class="list-group-item"><a href="http://vikaspedia.in/social-welfare/scheduled-tribes-welfare/constitutional-provisions-for-development-of-scheduled-tribes"><span>Constitutional provi ...</span></a></li>
                                            </ul>
                                            <div class="panel-footer"><a class="btn btn-lg btn-block btn-success latestItems_success" href="http://vikaspedia.in/@@latestItems?show=-1"><span>See More</span></a></div>
                                        </div>
                                    </div>

                                    <div class="col-md-4" id="rated_dashboard">
                                        <div class="panel panel-success">
                                            <div class="panel-heading mvp">
                                                <h4>Top Rated Pages</h4>
                                            </div>
                                            <ul class="list-group">
                                                <li class="list-group-item"><a href="http://vikaspedia.in/health/nutrition/global-nutrition-report-2015"><span>Global Nutrition Rep ...</span></a></li>
                                                <li class="list-group-item"><a href="http://vikaspedia.in/education/policies-and-schemes/scholarships/awards/national-bravery-awards"><span>National Bravery Awa ...</span></a></li>
                                                <li class="list-group-item"><a href="http://vikaspedia.in/energy/energy-conservation/energy-conservation-in-transport-sector/best-driving-practices-for-energy-conservation"><span>Best driving practic ...</span></a></li>
                                                <li class="list-group-item"><a href="http://vikaspedia.in/agriculture/crop-production/package-of-practices/tree-crops/calophyllum-inophyllum"><span>Calophyllum inophyll ...</span></a></li>
                                            </ul>
                                            <div class="panel-footer"><a class="btn btn-lg btn-block btn-success mvp_success" href="http://vikaspedia.in/getRatedDashboard"><span>See More</span></a></div>
                                        </div>
                                    </div>

                                    <div class="col-md-4" id="discussion_dashboard">
                                        <div class="panel panel-success">
                                            <div class="panel-heading ld">
                                                <h4>Latest Discussions</h4>
                                            </div>
                                            <ul class="list-group">
                                                <li class="list-group-item"><a href="http://vikaspedia.in/education/education-forum/quality-of-education/464254732"><span>Learning models of C ...</span></a></li>
                                                <li class="list-group-item"><a href="http://vikaspedia.in/e-governance/e-governance-forum/common-service-centres-csc-programme/427866413"><span>BC for KIOSK Banking ...</span></a></li>
                                                <li class="list-group-item"><a href="http://vikaspedia.in/agriculture/agricultural-forum/crop-production/722677067"><span>Tissue Culture G 9 B ...</span></a></li>
                                                <li class="list-group-item"><a href="http://vikaspedia.in/social-welfare/social-welfare-forum/solutions-to-social-issues-experiences/276907885"><span>Children of labourer ...</span></a></li>
                                            </ul>
                                            <div class="panel-footer"><a class="btn btn-lg btn-block btn-success ld_success" href="http://vikaspedia.in/getDiscussionsForDashboard"><span>See More</span></a></div>
                                        </div>
                                    </div>


                                    <div class="col-md-4" id="schemes_dashboard">
                                        <div class="panel panel-success">
                                            <div class="panel-heading schemes">
                                                <h4>Schemes For You</h4>
                                            </div>
                                            <ul class="list-group">
                                                <li class="list-group-item"><a href="http://vikaspedia.in/social-welfare/financial-inclusion/pradhan-mantri-mudra-yojana">Pradhan Mantri Mudra Yojana (PMMY) </a></li>
                                                <li class="list-group-item"><a href="http://vikaspedia.in/social-welfare/rural-poverty-alleviation-1/pradhan-mantri-khanij-kshetra-kalyan-yojana">Pradhan Mantri Khanij Kshetra Kalyan Yojana </a></li>
                                            </ul>
                                            <div class="panel-footer"><a class="btn btn-lg btn-block btn-success schems_success" target="_Blank" href="http://vikaspedia.in/schemes-for-you"><span>See More </span></a></div>
                                        </div>
                                    </div>

                                </div>
                                <%--<aside style="">
                                    <section class="NewsTab">
                                        <ul class="News_Events_Tab">
                                            <li class="active"><a href="#news">News</a></li>
                                            <li><a href="#events">Events</a></li>
                                        </ul>
                                        <div class="News_tab_container">
                                            <div style="display: block;" class="News_tab_content" id="news">
                                            </div>
                                            <div style="display: none;" class="News_tab_content" id="events">
                                            </div>
                                        </div>
                                    </section>
                                </aside>--%>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="viewlet-below-content-body">
                    <div class="visualClear">
                        <!-- -->
                    </div>
                    <div class="documentActions">
                    </div>
                </div>
            </div>
        </div>
        <div id="viewlet-below-content">
            <div class="RatingViewlet">
            </div>
        </div>
    </div>
</asp:Content>
