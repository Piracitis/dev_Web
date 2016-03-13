<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/LoggedIn.Master" CodeBehind="Contactus.aspx.vb" Inherits="Agripedia.Contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="placeholder" runat="server">
    <div class="container" style ="margin-top : 1%">
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<div class="alert-placeholder"></div>
					<div class="panel panel-default">
						<div class="panel-body">
							<form action="process.aspx" method="post" role="form" autocomplete="off">
								<div class="row">
									<div class="col-lg-12">
										<div class="text-center"><h2><b>Contact Us</b></h2></div>
										<div class="form-group">
											<label for="c-name">Name</label>
											<div class="required-field-block">
												<input name="c-name" id="c-name" class="form-control" placeholder="Name" autocomplete="off" value="" type="text"/>
												<div class="required-icon">
													<div class="text">*</div>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="c-email">Email Address</label>
											<input name="c-email" id="c-email" class="form-control" placeholder="Email Address" autocomplete="off" value="" type="email"/>
										</div>
										<div class="form-group">
											<label for="c-reason">Reason <span class="text-danger">*</span></label>
											<select name="c-reason" id="c-reason" class="form-control">
												<option value="general">General</option>
												<option value="business">Business Enquiry</option>
												<option value="site_bug">Report A Bug</option>
												<option value="recover_account">Recover Account</option>
												<option value="suggest_a_feature">Suggest A Feature</option>
																								<option value="other">Other</option>
											</select>
										</div>
										<div class="form-group">
												<label for="c-message">Message</label>
												<div class="required-field-block">
													<textarea name="c-message" id="c-message" cols="71" rows="7" class="form-control" placeholder="Message"></textarea>
												<div class="required-icon">
													<div class="text">*</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-12">
										<div class="pull-left">
											<div style="position: relative;" class="icheckbox_square-green"><input style="position: absolute; opacity: 0;" name="c-response" id="c-response" class="smartBox form-control" type="checkbox"><ins style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;" class="iCheck-helper"></ins></div>
											<label class="" for="c-response">I would like a response</label>
										</div>
										<div class="pull-right">
											<input name="c-submit" id="c-submit" class="form-control btn btn-info" value="Submit" type="submit"/>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-md-3"></div>
			</div>
		</div>
</asp:Content>
