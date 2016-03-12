<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Main.Master" CodeBehind="LoginPage.aspx.vb" Inherits="Agripedia.LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="placeholder" runat="server">
    <div class="container"  style ="margin-top : 1%">
        <div class="row">
            <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3">
                <div class="alert-placeholder"></div>
                <div class="panel panel-success">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="text-center">
                                    <h2><b>Log In</b></h2>
                                </div>
                                <form id="login-form" action="process.aspx" method="post" role="form">
                                    <div class="form-group">
                                        <label for="username">Username</label>
                                        <input name="username" id="username" class="form-control" placeholder="Username" value="" autocomplete="off" type="text"/>
                                    </div>
                                    <div class="form-group">
                                        <label for="password">Password</label>
                                        <input name="password" id="password"  class="form-control" placeholder="Password" autocomplete="off" type="password"/>
                                    </div>
                                    
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                <a href="register.aspx" tabindex="6" class="form-control btn btn-primary">Register</a>
                                            </div>
                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                <input name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-success" value="Log In" type="submit"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="text-center">
                                                    <a href="Recovery.aspx" class="form-control btn btn-link">Forgot Password?</a>
                                                </div>
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
