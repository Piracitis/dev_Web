<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/LoggedIn.Master" CodeBehind="MyAccount.aspx.vb" Inherits="Agripedia.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="placeholder" runat="server">
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
                <form id="user-details-form" action="#" method="post" role="form" autocomplete="off">
                    <div class="row">
                        <div class="col-lg-8 col-md-8">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3>View Account - piracitis</h3>
                                    <div class="form-group">
                                        <label>Username</label>
                                        <p>piracitis</p>
                                    </div>
                                    <div class="form-group">
                                        <label>Email Address:</label>
                                        <span>sundaresh2912@gmail.com</span>
                                        <br/>
                                        <a href="ChangeEmail.aspx">Change Email</a>
                                    </div>
                                    <div class="form-group">
                                        <label>New Password</label>
                                        <br/>
                                        <a href="ChangePassword.aspx">Change Password</a>
                                    </div>
                                    <div class="form-group">
                                        <div style="position: relative;" class="icheckbox_square-green checked">
                                            <input style="position: absolute; opacity: 0;" class="smartBox form-control" name="receive-emails" id="receive-emails" checked="" type="checkbox"/>
                                            <ins style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;" class="iCheck-helper"></ins></div>
                                        <label class="" for="receive-emails">Receive emails about site updates</label>
                                    </div>
                                    <span class="help-block">We'll send you an email whenever your settings have been changed.</span>
                                    <div class="form-group">
                                        <input name="details-submit" class="btn btn-default" value="Update account" type="submit"/>
                                    </div>
                                    <input class="hide" name="token" id="token" value="9a34324acc55b02a5fd45a126cc61a60" type="hidden"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
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
