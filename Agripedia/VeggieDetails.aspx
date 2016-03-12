<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="VeggieDetails.aspx.vb" Inherits="Agripedia.VeggieDetails" %>

<!DOCTYPE html>
<html xmlns="http:/www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/Veggie.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/current_style.css" rel="stylesheet" type="text/css" media="all" />		
    <link href="css/crop_pages.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/Veggie2.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
    <form id="form1" runat="server">
    <<div class="page-content">

    <div>
        <div class="row">
            <div class="col-sm-12">
                <div>
                    <h1 class="pageTitle">
                        Vegetable growing</h1>
                </div>
            </div>
        </div>
        <section id="detailHeroImage">
				<div class="row">
					<div class="col-sm-12">
						<div class="heroTitle">A variety of vegetables</div>
						<div class="heroContainer">
							<img class="hidden-xs" alt="Vegetables Hero" src="images/detail-hero.jpg">
						</div>
					</div>
					<div class="col-sm-8 col-sm-push-1">
						<p>We leverage our production knowledge and deep pool of genetic capabilities to develop innovative solutions that enhance productivity and improve farm profitability now and well into the future.
                        <br><br>
                        Select a vegetable crop below to view available varieties.
                        </p>
						<a href="vegetables" title="Go back" class="learnMoreBtn">Go back</a>
					</div>
					<div class="clearfix"></div>
				</div>
			</section>
        <hr>
        <section id="detailResources">
				<div class="row">
					<div class="col-sm-12">
						<div class="sectionTitle"><h2>Vegetable resources</h2></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-3 resource">
						<a title="Bean" href="bean.html"><img alt="Bean" src="images/beans.jpg"></a>
						<div class="resourceTitle">Bean</div>
						<a title="Learn more" class="learnMoreBtn" href="bean.html">Learn more</a>
					</div>
					<div class="col-sm-3 resource">
						<a title="Broccoli" href="broccoli/broccoli.aspx"><img alt="Broccoli" src="images/broccoli.jpg"></a>
						<div class="resourceTitle">Broccoli</div>
						<a title="Learn more" class="learnMoreBtn" href="broccoli/broccoli.aspx">Learn more</a>
					</div>
					<div class="col-sm-3 resource">
						<a title="Cabbage" href="cabbage/cabbage.aspx"><img alt="Cabbage" src="images/cabbage.jpg"></a>
						<div class="resourceTitle">Cabbage</div>
						<a title="Learn more" class="learnMoreBtn" href="cabbage/cabbage.aspx">Learn more</a>
					</div>
					<div class="col-sm-3 resource">
						<a title="Cauliflower" href="cauliflower/cauliflower.aspx"><img alt="Cauliflower" src="images/cauliflower.jpg"></a>
						<div class="resourceTitle">Cauliflower</div>
						<a title="Learn more" class="learnMoreBtn" href="cauliflower/cauliflower.aspx">Learn more</a>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-3 resource">
						<a title="Celery" href="celery/celery.aspx"><img alt="Celery" src="images/celery.jpg"></a>
						<div class="resourceTitle">Celery</div>
						<a title="Learn more" class="learnMoreBtn" href="celery/celery.aspx">Learn more</a>
					</div>
					<div class="col-sm-3 resource">
						<a title="Cucumber" href="cucumber/cucumber.aspx"><img alt="Cucumber" src="images/cucumber.jpg"></a>
						<div class="resourceTitle">Cucumber</div>
						<a title="Learn more" class="learnMoreBtn" href="cucumber/cucumber.aspx">Learn more</a>
					</div>
					<div class="col-sm-3 resource">
						<a title="Greenhouse" href="agh/agh.aspx"><img alt="Greenhouse" src="images/greenhouse.jpg"></a>
						<div class="resourceTitle">Greenhouse</div>
						<a title="Learn more" class="learnMoreBtn" href="agh/agh.aspx">Learn more</a>
					</div>
					<div class="col-sm-3 resource">
						<a title="Leafy" href="leafy/leafy.aspx"><img alt="Leafy" src="images/leafy.jpg"></a>
						<div class="resourceTitle">Leafy</div>
						<a title="Learn more" class="learnMoreBtn" href="leafy/leafy.aspx">Learn more</a>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-3 resource">
						<a title="Melon" href="melon.aspx"><img alt="Melon" src="images/melon.jpg"></a>
						<div class="resourceTitle">Melon</div>
						<a title="Learn more" class="learnMoreBtn" href="melon/melon.aspx">Learn more</a>
					</div>
					<div class="col-sm-3 resource">
						<a title="Pepper" href="pepper.html"><img alt="Pepper" src="images/pepper.jpg"></a>
						<div class="resourceTitle">Pepper</div>
						<a title="Learn more" class="learnMoreBtn" href="pepper.html">Learn more</a>
					</div>
					<div class="col-sm-3 resource">
						<a title="Spinach" href="spinach.aspx"><img alt="Spinach" src="images/spinach.jpg"></a>
						<div class="resourceTitle">Spinach</div>
						<a title="Learn more" class="learnMoreBtn" href="spinach/spinach.aspx">Learn more</a>
					</div>
					<div class="col-sm-3 resource">
						<a title="Squash" href="squash.aspx"><img alt="Squash" src="images/squash.jpg"></a>
						<div class="resourceTitle">Squash</div>
						<a title="Learn more" class="learnMoreBtn" href="squash/squash.aspx">Learn more</a>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-3 resource">
						<a title="Sweet Corn" href="sweet_corn.html"><img alt="Sweet Corn" src="images/corn.jpg"></a>
						<div class="resourceTitle">Sweet Corn</div>
						<a title="Learn more" class="learnMoreBtn" href="sweet_corn.html">Learn more</a>
					</div>
					<div class="col-sm-3 resource">
						<a title="Tomato" href="tomato.html"><img alt="Tomato" src="images/tomatoes.jpg"></a>
						<div class="resourceTitle">Tomato</div>
						<a title="Learn more" class="learnMoreBtn" href="tomato.html">Learn more</a>
					</div>
					<div class="col-sm-3 resource">
						<a title="Watermelon" href="wwatermelon.aspx"><img alt="Watermelon" src="images/watermelon.jpg"></a>
						<div class="resourceTitle">Watermelon</div>
						<a title="Learn more" class="learnMoreBtn" href="watermelon/watermelon.aspx">Learn more</a>
					</div>
					<div class="col-sm-3 resource">
						<a title="Zucchini" href="zucchini/zucchini.aspx"><img alt="Zucchini" src="images/zuchinni.jpg"></a>
						<div class="resourceTitle">Zucchini</div>
						<a title="Learn more" class="learnMoreBtn" href="zucchini/zucchini.aspx">Learn more</a>
					</div>
				</div>
			</section>
    </div>

        </div>
    </form>
</body>
</html>
