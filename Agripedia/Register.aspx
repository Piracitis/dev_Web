<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/LoggedIn.Master" CodeBehind="Register.aspx.vb" Inherits="Agripedia.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="placeholder" runat="server">
    <div class="container">
        <div class="row">
            <div class="alertBox" style ="display : none">
                    <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>You have successfully registered and can now login.
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-9 col-lg-offset-3">
                <div class="alert-placeholder"></div>
                <div class="panel panel-success">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="text-center">
                                    <h2><b>Register</b></h2>
                                </div>
                                <form id="register-form" action="process.aspx" method="post" role="form">
                                    <div class="form-group has-feedback">
                                        <label for="username">Username</label>
                                        <span class="form-control-feedback input-validator-feedback"></span>
                                        <input id="username" class="form-control validate-input" placeholder="Username" value="" autocomplete="off" type="text" />
                                    </div>
                                    <div class="form-group has-feedback">
                                        <label for="email">Email Address</label>
                                        <span class="form-control-feedback input-validator-feedback"></span>
                                        <input id="email" class="form-control validate-input" placeholder="Email Address" value="" autocomplete="off" type="text" />
                                    </div>
                                    <div class="form-group">
                                        <label for="password">Password</label>
                                        <input id="password" class="form-control" placeholder="Password" autocomplete="off" type="password" />
                                    </div>
                                    <div class="form-group">
                                        <label for="confirm-password">Confirm Password</label>
                                        <input name="confirm-password" id="confirm-password" class="form-control" placeholder="Confirm Password" autocomplete="off" type="password" />
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                <a href="login" class="form-control btn btn-primary">Log In</a>
                                            </div>
                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                <input name="register-submit" id="register-submit" class="form-control btn btn-success" value="Register" type="submit" />
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
