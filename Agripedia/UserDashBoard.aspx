<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/LoggedIn.Master" CodeBehind="UserDashBoard.aspx.vb" Inherits="Agripedia.UserDashBoard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="placeholder" runat="server">
    <div class="container">
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
                                        <strong>New Posts</strong>
                                    </div>
                                    <div>Create a new poll</div>
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
            <div class="col-lg-4">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        Unread Posts Since Last Visit					
                    </div>
                    <div class="panel-body">
                        <p>You currently have no unread posts</p>
                    </div>
                    <div class="panel-footer">
                        <a href="#">Refresh</a>
                        <p class="pull-right">
                            <a href="#"><i class="fa fa-chevron-left"></i></a>
                            <a href="#"><i class="fa fa-chevron-right"></i></a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="panel panel-danger">
                    <div class="panel-heading">
                        New Replies to your Post
                    </div>
                    <div class="panel-body">
                        <p>You currently have no new replies to your posts</p>
                    </div>
                    <div class="panel-footer">
                        <a href="#">Refresh</a>
                        <p class="pull-right">
                            <a href="#"><i class="fa fa-chevron-left"></i></a>
                            <a href="#"><i class="fa fa-chevron-right"></i></a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
