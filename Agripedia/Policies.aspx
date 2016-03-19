<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/LoggedIn.Master" CodeBehind="Policies.aspx.vb" Inherits="Agripedia.Policies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="placeholder" runat="server">
    <form runat="server">
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
                        <h1 id="parent-fieldname-title" class="documentFirstHeading kssattr-atfieldname-title kssattr-templateId-kss_generic_macros kssattr-macro-title-field-view">Technology Mission on Cotton (TMC)
                        </h1>

                        <ol>
                            <li>The Govt. of India launched Technology Mission on Cotton in February 2000. The objective
                of TMC was as under:
                <ol type="a">
                    <li>To improve the yield and quality of cotton, particularly in respect of staple length,
                        micronnaire, strength, etc. through development of better cotton varieties as well
                        as through improved seeds, and integrated water, nutrient and pest management technologies.</li>
                    <li>To increase the income of the cotton growers by reducing the cost of cultivation
                        as well as by increasing the yield per hectare through proper transfer of technology
                        to the growers.</li>
                    <li>To improve the quality of processing of cotton, particularly in respect of trash,
                        contamination, etc. by improving the infrastructure in the market yards for cotton
                        and by modernizing the existing ginning &amp; pressing factories and setting up new
                        units.</li>
                </ol>
                            </li>
                            <li>TMC had four Mini Missions as under
                <ul>
                    <li>Mini Mission I: Cotton Research &amp; Technology Generation </li>
                    <li>Mini Mission II: Transfer of Technology &amp; Development </li>
                    <li>Mini Mission III: Development of Market Infrastructure </li>
                    <li>Mini Mission IV: Modernization / Setting up of new G&amp;P factories.</li>
                </ul>
                                For MM-III &amp; IV Ministry of Textiles was the nodal agency and The Cotton Corporation
                of India Ltd. (CCI) was the implementing agency. </li>
                            <li>Achievements
                <ol type="a">
                    <li>MM-III<br />
                        Under Mini Mission-III, there was a target of development of 250 market yards. TMC
                        sanctioned 250 market yards, however, only 246 market yards reported completion
                        and a subsidy of Rs.231.42 crores was released to these market yards. Thus, 98.4%
                        of the laid down target was achieved. The state-wise details of market yards sanctioned/
                        developed and subsidy released is as under:<br />

                        <table border="1" class="right" summary="">

                            <tr class="white">
                                <td colspan="4" align="center">
                                    <strong>STATE-WISE NUMBER OF APMCs SANCTIONED/COMPLETED AND PAID
                            
                            FOR DEVELOPMENT<br />
                                        UNDER TMC MINI MISSION III DURING 9TH, 10TH &amp;
                           
                            11TH PLANS</strong></td>
                            </tr>
                            <tr class="white">


                                <td colspan="4">Rupees in crore
                                </td>
                            </tr>
                            <tr>
                                <th rowspan="2">State
                                </th>
                                <th colspan="3">Markets Yards
                                </th>
                            </tr>
                            <tr>
                                <th>Sanctioned
                                </th>
                                <th>Completed
                                </th>
                                <th>Subsidy Released
                                </th>
                            </tr>
                            <tr>
                                <td>Diu (U.T.)
                                </td>
                                <td>-
                                </td>
                                <td>-
                                </td>
                                <td>-
                                </td>
                            </tr>
                            <tr>
                                <td>Punjab
                                </td>
                                <td>19
                                </td>
                                <td>19
                                </td>
                                <td>22.70
                                </td>
                            </tr>
                            <tr>
                                <td>Haryana
                                </td>
                                <td>20
                                </td>
                                <td>20
                                </td>
                                <td>19.93
                                </td>
                            </tr>
                            <tr>
                                <td>Rajasthan
                                </td>
                                <td>14
                                </td>
                                <td>14
                                </td>
                                <td>10.57
                                </td>
                            </tr>
                            <tr>
                                <td>Madhya Pradesh
                                </td>
                                <td>28
                                </td>
                                <td>28
                                </td>
                                <td>28.17
                                </td>
                            </tr>
                            <tr>
                                <td>Gujarat
                                </td>
                                <td>45
                                </td>
                                <td>42
                                </td>
                                <td>39.47
                                </td>
                            </tr>
                            <tr>
                                <td>Andhra Pradesh
                                </td>
                                <td>48
                                </td>
                                <td>48
                                </td>
                                <td>42.87
                                </td>
                            </tr>
                            <tr>
                                <td>Karnataka
                                </td>
                                <td>13
                                </td>
                                <td>13
                                </td>
                                <td>9.75
                                </td>
                            </tr>
                            <tr>
                                <td>Tamil Nadu
                                </td>
                                <td>4
                                </td>
                                <td>4
                                </td>
                                <td>4.17
                                </td>
                            </tr>
                            <tr>
                                <td>Orissa
                                </td>
                                <td>9
                                </td>
                                <td>9
                                </td>
                                <td>6.47
                                </td>
                            </tr>
                            <tr>
                                <td>Maharashtra
                                </td>
                                <td>50
                                </td>
                                <td>49
                                </td>
                                <td>49.32
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Total</strong>
                                </td>
                                <td>
                                    <strong>250</strong>
                                </td>
                                <td>
                                    <strong>246</strong>
                                </td>
                                <td>
                                    <strong>231.42</strong>
                                </td>
                            </tr>
                        </table>
                        With the development of the market yards, the trash contents in the kapas have
                        <br />
                        come down significantly. Further, the farmers are enlightened to bring their kapas
                        <br />
                        in the APMCs for sale due to better infrastructure facilities. </li>
                    <li>MM-IV
                        <br />
                        Under Mini Mission-IV, there was a target of modernization of 1000 G&amp;P units. Against
                        the said target, 1011 G&amp;P units were sanctioned, however, only 859 G&amp;P units reported
                        completion of their projects. GOI subsidy of Rs.184.75 crores was released to these
                        beneficiaries. Thus, 85.9% of the laid down target was achieved. The state-wise
                        details of G&amp;P units sanctioned for modernization / completed their projects are
                        as under:                        
                        <table border="1" class="right" summary="">
                            <tr class="white">
                                <td colspan="4" align="center">
                                    <strong>STATE-WISE NUMBER OF G&amp;P UNITS SANCTIONED/COMPLETED AND
                           
                            PAID FOR 
                                        <br />
                                        MODERNIZATION UNDER TMC MINI MISSION- IV DURING 9TH, 10TH &amp; 11TH PLANS </strong>
                                </td>
                            </tr>
                            <tr class="white">
                                <td colspan="4">Rupees in crore
                                </td>
                            </tr>
                            <tr>
                                <th rowspan="2">State
                                </th>
                                <th colspan="3">G &amp; P Factories
                                </th>
                            </tr>
                            <tr>
                                <th>Sanctioned Projects
                                </th>
                                <th>Completed Projects
                                </th>
                                <th>GOI Share Released
                                </th>
                            </tr>
                            <tr>
                                <td>Diu (U.T.)
                                </td>
                                <td>1
                                </td>
                                <td>1
                                </td>
                                <td>0.27
                                </td>
                            </tr>
                            <tr>
                                <td>Punjab
                                </td>
                                <td>19
                                </td>
                                <td>11
                                </td>
                                <td>2.18
                                </td>
                            </tr>
                            <tr>
                                <td>Haryana
                                </td>
                                <td>7
                                </td>
                                <td>5
                                </td>
                                <td>1.32
                                </td>
                            </tr>
                            <tr>
                                <td>Rajasthan
                                </td>
                                <td>2
                                </td>
                                <td>0
                                </td>
                                <td>0.00
                                </td>
                            </tr>
                            <tr>
                                <td>Madhya Pradesh
                                </td>
                                <td>53
                                </td>
                                <td>46
                                </td>
                                <td>9.69
                                </td>
                            </tr>
                            <tr>
                                <td>Gujarat
                                </td>
                                <td>557
                                </td>
                                <td>506
                                </td>
                                <td>106.97
                                </td>
                            </tr>
                            <tr>
                                <td>Andhra Pradesh
                                </td>
                                <td>34
                                </td>
                                <td>22
                                </td>
                                <td>4.99
                                </td>
                            </tr>
                            <tr>
                                <td>Karnataka
                                </td>
                                <td>15
                                </td>
                                <td>13
                                </td>
                                <td>2.66
                                </td>
                            </tr>
                            <tr>
                                <td>Tamil Nadu
                                </td>
                                <td>2
                                </td>
                                <td>1
                                </td>
                                <td>0.31
                                </td>
                            </tr>
                            <tr>
                                <td>Orissa
                                </td>
                                <td>8
                                </td>
                                <td>6
                                </td>
                                <td>1.21
                                </td>
                            </tr>
                            <tr>
                                <td>Maharashtra
                                </td>
                                <td>313
                                </td>
                                <td>248
                                </td>
                                <td>55.15
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Total</strong>
                                </td>
                                <td>1011
                                </td>
                                <td>
                                    <strong>859</strong>
                                </td>
                                <td>184.74
                                </td>
                            </tr>
                        </table>
                        With the modernization of G&amp;P factories, trash contents in the pressed cotton have
                        reduced significantly. It has come down to 1.5% as against 3% to 4.8% prior to modernization.
                        As a result of the same the domestic spinning industry is able to get better processed
                        and contamination free cotton. Further, the Indian cotton is accepted world over
                        at par with the cotton of other exporting countries.<br />
                    </li>
                </ol>
                                <p><strong>The Mini Mission III &amp; IV of TMC closed on 31.12.2010</strong></p>
                            </li>
                        </ol>
                    </div>


                    <p>
                        For more details on such schemes
                                    <br />
                        References :  http://agricoop.nic.in/programmescheme.html
                    </p>
                    <br />
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
