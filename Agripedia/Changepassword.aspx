<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/LoggedIn.Master" CodeBehind="ChangePassword.aspx.vb" Inherits="Agripedia.ChangePassword1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
         function hideLogTab(string) {
             alert("Alert Tag with state " + string)
            if (string == "True") {
                document.getElementById("logUser").style.display = "block";
                document.getElementById("guestUser").style.display = "none";
            }
            else if (string == "False") {
                document.getElementById("logUser").style.display = "none";
                document.getElementById("guestUser").style.display = "block";
            }

            else
                alert("Vb Code passed invalid string As " + string);
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="placeholder" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-lg-offset-3">
                <div class="alert-placeholder"></div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-3">
                <div class="row">
                    <div class="col-lg-12 col-md-6 col-sm-12 col-xs-12">
                        <div class="panel dropshadow" id="collapseMenu">
                            <div class="panel-body panel-heading menu-header" data-toggle="collapse" data-parent="#collapseMenu" href="#menu">
                                <div class="text-center">
                                    <span class="text-primary">Menu					</span>
                                </div>
                            </div>
                            <div id="menu" class="list-group panel-collapse collapse in">
                                <a class="list-group-item visible-xs" href="#">
                                    <div>
                                        <strong>New Poll</strong>
                                    </div>
                                    <div>Create a new post</div>
                                </a>
                                <a class="list-group-item active" href="MyAccount.aspx">
                                    <div>
                                        <strong>Dashboard</strong>
                                    </div>
                                    <div>View the dashboard</div>
                                </a>
                                <a class="list-group-item" href="#">
                                    <div>
                                        <strong>Unread Posts</strong>
                                    </div>
                                    <div>View your unread posts</div>
                                </a>
                                <a class="list-group-item" href="#">
                                    <div>
                                        <strong>Recent Replies</strong>
                                    </div>
                                    <div>View recent replies to your posts</div>
                                </a>
                                <a class="list-group-item" href="MyAccount.aspx">
                                    <div>
                                        <strong>My Account</strong>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-lg-6">
					<form id="change-password-form" action="#" method="post" role="form" autocomplete="off">
						<div class="row">
							<div class="col-lg-8 col-md-8">
								<div class="panel panel-default">
									<div class="panel-body">
										<h3 class="sub-header">New Password</h3>
										<div class="form-group">
											<label for="current-password">Current Password</label>
											<input name="current-password" class="form-control" id="current-password" placeholder="Current Password" value="" type="password"/>
										</div>
										<div class="form-group">
											<label for="new-password">New Password</label>
											<input name="new-password" class="form-control" id="new-password" placeholder="New Password" value="" type="password"/>
										</div>
										<div class="form-group">
											<label for="confirm-new-password">Confirm Password</label>
											<input name="confirm-new-password" class="form-control" id="confirm-new-password" placeholder="Confirm Password" value="" type="password"/>
										</div>
										<span class="help-block">We'll send you an email whenever your settings have been changed.</span>
										<div class="form-group">
											<input name="submit" class="btn btn-default" value="Change Password" type="submit"/>
										</div>
										<input class="hide" name="token" id="token" value="fba67a31e3365ad5afcea20742b3c3c1" type="hidden"/>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
        </div>
    </div>
</asp:Content>
