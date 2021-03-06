﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/LoggedIn.Master" CodeBehind="MarketInformation.aspx.vb" Inherits="Agripedia.MarketInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="placeholder" runat="server">
    <form runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="container-fluid">
                    <div class="container">
                        <div class="row" style="margin-top: 3%">
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
                                <h3 class="text-info text-left"></h3>
                                <h1 id="parent-fieldname-title" class="documentFirstHeading kssattr-atfieldname-title kssattr-templateId-kss_generic_macros kssattr-macro-title-field-view">Minimum Support Price
                                </h1>
                                <p>
                                    &nbsp &nbsp &nbsp &nbsp Minimum Support Price (MSP) is a form of market intervention by the Government of India to insure agricultural producers against any sharp fall in farm prices. The minimum support prices are announced by the Government of India at the beginning of the sowing season for certain crops on the basis of the recommendations of the Commission for Agricultural Costs and Prices (CACP). MSP is price fixed by Government of India to protect the producer - farmers - against excessive fall in price during bumper production years. The minimum support prices are a guarantee price for their produce from the Government. The major objectives are to support the farmers from distress sales and to procure food grains for public distribution. In case the market price for the commodity falls below the announced minimum price due to bumper production and glut in the market, government agencies purchase the entire quantity offered by the farmers at the announced minimum price.
		
                                </p>
                                <br />
                                <br />
                                <h3 class="text-info text-left"></h3>
                                <h3>Crops for which MSP is announced
                                </h3>

                                <p>
                                    Minimum support prices are currently announced for 25 commodities. They are as follows.
		
                                </p>
                                <div style="margin-left: 3.5%">
                                    <ul>
                                        <li>&nbspCereals (7) - paddy, wheat, barley, jowar, bajra, maize and ragi		</li>
                                        <li>Pulses (5) - gram, arhar/tur, moong, urad and lentil				</li>
                                        <li>Oilseeds (8) - groundnut, rapeseed/mustard, toria, soyabean, sunflower seed, sesamum, safflower seed and nigerseed				</li>
                                        <li>Copra				</li>
                                        <li>Raw cotton				</li>
                                        <li>Raw jute				</li>
                                        <li>Sugarcane				</li>
                                        <li>Virginia flu cured (VFC) tobacco				</li>
                                    </ul>
                                </div>
                                <br />
                                <br />
                                <nav class="navbar navbar-default" role="navigation">
                                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                        <ul class="nav navbar-nav">
                                            <li class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Sort By<strong class="caret"></strong></a>
                                                <asp:ListBox class="dropdown-menu" ID="lstBox_sort" runat="server" OnSelectedIndexChanged="Page_Load">

                                                    <asp:ListItem Value="0">Price</asp:ListItem>
                                                    <asp:ListItem Value="1">Name</asp:ListItem>
                                                </asp:ListBox>
                                            </li>
                                        </ul>

                                        <ul class="nav navbar-nav navbar-right">
                                            <li class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Select Year<strong class="caret"></strong></a>
                                                <asp:ListBox class="dropdown-menu" ID="lstBox_year" runat="server">


                                                    <asp:ListItem Value="0">2015-16</asp:ListItem>
                                                    <asp:ListItem Value="1">2014-15</asp:ListItem>
                                                    <asp:ListItem Value="3">2013-14</asp:ListItem>



                                                </asp:ListBox>
                                            </li>
                                            <%--<li>
                                                <a href="#">Link</a>
                                            </li>
                                            <li class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
                                                <ul class="dropdown-menu">
                                                    <li>
                                                        <a onclick = " " href = "#">Action</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Another action</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Something else here</a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li>
                                                        <a href="#">Separated link</a>
                                                    </li>
                                                </ul>
                                            </li>--%>
                                        </ul>
                                    </div>

                                </nav>

                                <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-striped" GridLines="None" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="Commodity" HeaderText="Commodity" />
                                        <asp:BoundField DataField="Variety" HeaderText="Varities" />

                                        <asp:BoundField DataField="MSP_2015" HeaderText="MSP 2014-15" />
                                        <asp:BoundField DataField="MSP_2016" HeaderText="MSP 2015-16" />
                                        <asp:BoundField DataField="Increase" HeaderText="Increase" />
                                    </Columns>
                                    <RowStyle CssClass="cursor-pointer" />

                                </asp:GridView>
                            </div>
                            <!--end pane-->
                        </div>

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
