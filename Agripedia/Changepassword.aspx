﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/LoggedIn.Master" CodeBehind="Changepassword.aspx.vb" Inherits="Agripedia.Changepassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="placeholder" runat="server">
    <div class="container">
			<div class="row">
				<div class="col-lg-6 col-lg-offset-3">
			</div>
			</div>

			<div class="row">
				<div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3">
					<div class="alert-placeholder"></div>
					<div class="panel panel-success">
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-12">
									<div class="text-center"><h2><b>Recover Account</b></h2></div>
									<form id="register-form" action="http://phpoll.com/recover/process" method="post" role="form" autocomplete="off">
										<div class="form-group">
											<label for="new-password">New Password</label>
											<input name="new-password" id="new-password" tabindex="1" class="form-control" placeholder="New Password" autocomplete="off" required="" type="password">
										</div>
										<div class="form-group">
											<label for="confirm-new-password">Confirm Password</label>
											<input name="confirm-new-password" id="confirm-new-password" tabindex="2" class="form-control" placeholder="Confirm Password" autocomplete="off" required="" type="password">
										</div>
										<div class="form-group">
											<div class="row">
												<div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-12 col-xs-12">
													<input name="recover-submit" id="recover-submit" tabindex="3" class="form-control btn btn-success" value="Change Password" type="submit">
													<input class="hide" name="key" value="fce973f0338b4e5532fc126947962ea89821430638990e246b4e8e3a052f353f" type="hidden">
												</div>
											</div>
										</div>
										<input class="hide" name="token" id="token" value="cfd08ba8d647e2c91edb0896073fa29b" type="hidden">
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
	<div class="col-lg-12">
		<div class="text-center" style="margin-top:25px;">
		<script async="" src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
		<!-- phpoll - footer -->
		<ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-3482214419652965" data-ad-slot="9748433531" data-ad-format="auto"></ins>
		<script>
		(adsbygoogle = window.adsbygoogle || []).push({});
		</script>
		</div>
	</div>
</div>
		</div>
</asp:Content>