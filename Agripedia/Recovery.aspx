<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/LoggedIn.Master" CodeBehind="Recovery.aspx.vb" Inherits="Agripedia.Recovery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="placeholder" runat="server">
    <div class="container">

        <div class="row">
            <div class="col-lg-6 col-lg-offset-3" style ="display : none">
                    <button type="button" class="close" data-dismiss="alert">
                        <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                    </button>
                    <asp:label runat ="server" id = "alertText" Text = ""/>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3">
                <div class="alert-placeholder"></div>
                <div class="panel panel-success">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="text-center">
                                    <h2><b>Recover Account</b></h2>
                                </div>
                                <form id="register-form" action="Process.aspx" method="post" role="form" autocomplete="off">
                                    <div class="form-group">
                                        <label for="email">Email Address</label>
                                        <input name="email" id="email" tabindex="1" class="form-control" placeholder="Email Address" value="" autocomplete="off" required="" type="email" />
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-12 col-xs-12">
                                                <input name="recover-submit" id="recover-submit" tabindex="2" class="form-control btn btn-success" value="Recover Account" type="submit" />
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
