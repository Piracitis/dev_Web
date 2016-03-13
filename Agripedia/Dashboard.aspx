﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Main.Master" CodeBehind="Dashboard.aspx.vb" Inherits="Agripedia.Dashboard" %>

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
                                <a class="list-group-item visible-xs" href="http://phpoll.com/">
                                    <div>
                                        <strong>New Poll</strong>
                                    </div>
                                    <div>Create a new poll</div>
                                </a>
                                <a class="list-group-item" href="http://phpoll.com/dashboard/">
                                    <div>
                                        <strong>Dashboard</strong>
                                    </div>
                                    <div>View the dashboard</div>
                                </a>
                                <a class="list-group-item" href="http://phpoll.com/dashboard/active">
                                    <div>
                                        <strong>Active Polls</strong>
                                    </div>
                                    <div>View your active polls</div>
                                </a>
                                <a class="list-group-item" href="http://phpoll.com/dashboard/inactive">
                                    <div>
                                        <strong>In-active Polls</strong>
                                    </div>
                                    <div>View your in-active polls</div>
                                </a>
                                <a class="list-group-item active" href="http://phpoll.com/dashboard/account">
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
                <form id="user-details-form" action="http://phpoll.com/dashboard/account/process/general" method="post" role="form" autocomplete="off">
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
                                        <br>
                                        <a href="http://phpoll.com/dashboard/account/changeemail">Change Email</a>
                                    </div>
                                    <div class="form-group">
                                        <label>New Password</label>
                                        <br>
                                        <a href="http://phpoll.com/dashboard/account/changepassword">Change Password</a>
                                    </div>
                                    <div class="form-group">
                                        <div style="position: relative;" class="icheckbox_square-green checked">
                                            <input style="position: absolute; opacity: 0;" class="smartBox form-control" name="receive-emails" id="receive-emails" checked="" type="checkbox">
                                            <ins style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;" class="iCheck-helper"></ins></div>
                                        <label class="" for="receive-emails">Receive emails about site updates</label>
                                    </div>
                                    <span class="help-block">We'll send you an email whenever your settings have been changed.</span>
                                    <div class="form-group">
                                        <input name="details-submit" class="btn btn-default" value="Update account" type="submit">
                                    </div>
                                    <input class="hide" name="token" id="token" value="3e99ba27327851d1423177f936e45090" type="hidden">
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>