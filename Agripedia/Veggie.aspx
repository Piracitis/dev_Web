<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Veggie.aspx.vb" Inherits="Agripedia.Veggie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/Veggie.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/current_style.css" rel="stylesheet" type="text/css" media="all" />		
    <link href="css/crop_pages.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/Veggie2.css" rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <section id="featured">
             <div class="row">
	<div class="col-sm-12">
		<div class="sectionTitle">
			<h2>
				Featured vegetable offerings</h2>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-sm-3 resource">
		<div style="height: 202px;" class="resourceContent">
			<div class="resourceTitle">
				Seeds</div>
			<div class="resourceInfo">
				<p>
					Varioius Vegetables seeds and information regarding it</p>
			</div>
		</div>
		<a class="learnMoreBtn" href="VegetableDetails.aspx" title="Learn more">Learn more</a></div>
	<div class="col-sm-3 resource">
		<div style="height: 202px;" class="resourceContent">
			<div class="resourceTitle">
				Crop protection</div>
			<div class="resourceInfo">
				<p>
					Produce high-quality crops using crop protection methods</p>
			</div>
		</div>
		<a class="learnMoreBtn" href="CropProtection" title="Learn more">Learn more</a></div>
	<div class="col-sm-3 resource">
		<div style="height: 202px;" class="resourceContent">
			<div class="resourceTitle">
				Where to buy</div>
			<div class="resourceInfo">
				<p>
					Find an authorized&nbsp; Vegetable Seeds distributor in your area or contact customer service for additional information.</p>
			</div>
		</div>
		<a class="learnMoreBtn" href="where_to_buy.aspx" title="Learn more">Find a distributor</a></div>
</div>
<p>
	&nbsp;</p>
			</section>
    </form>
</body>
</html>
