<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/LoggedIn.Master" CodeBehind="ChangeEmail.aspx.vb" Inherits="Agripedia.ChangeEmail" %>

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
                <form id="change-email-form" action="#" method="post" role="form" autocomplete="off">
                    <div class="row">
                        <div class="col-lg-8 col-md-8">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3 class="sub-header">New Email</h3>
                                    <div class="form-group">
                                        <label for="email">New Email</label>
                                        <input name="email" class="form-control" id="email" placeholder="New Email" value="" type="email"/>
                                    </div>
                                    <div class="form-group">
                                        <label for="confirm-email">Confirm Email</label>
                                        <input name="confirm-email" class="form-control" id="confirm-email" placeholder="Confirm Email" value="" type="email"/>
                                    </div>
                                    <span class="help-block">We'll send you an email whenever your settings have been changed.</span>
                                    <div class="form-group">
                                        <input name="submit" class="btn btn-default" value="Change Email" type="submit"/>
                                    </div>
                                    <input class="hide" name="token" id="token" value="4ccd373afdcf363f13169a97256c0b34" type="hidden"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
