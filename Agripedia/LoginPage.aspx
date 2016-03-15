<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/LoggedIn.Master" CodeBehind="LoginPage.aspx.vb" Inherits="Agripedia.LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="placeholder" runat="server">
    <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" EnablePartialRendering="true" runat="server" EnablePageMethods="true"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server"
            UpdateMode="Conditional">
            <ContentTemplate>
                <div class="container" style="margin-top: 1%">
                    <div class="row">
                        <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3">
                            <div class="alert alert-danger alert-dismissible" role="alert">
                                <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                                <asp:Label runat ="server" id = "alert" Text = "dsfsdfa" />
                            </div>
                            <div class="panel panel-success">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="text-center">
                                                <h2><b>Log In</b></h2>
                                            </div>
                                            <%--<form id="login-form" action ="javascript:process()" method="post" role="form">--%>
                                            <div class="form-group">
                                                <label for="username">Username</label>
                                                <input runat="server" name="username" id="username" class="form-control" placeholder="Username" value="" autocomplete="off" type="text" />
                                            </div>
                                            <div class="form-group">
                                                <label for="password">Password</label>
                                                <input runat="server" name="password" id="password" class="form-control" placeholder="Password" autocomplete="off" type="password" />
                                            </div>

                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                        <a href="register.aspx" tabindex="6" class="form-control btn btn-primary">Register</a>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                        <asp:Button name="login-submit" ID="loginButton" TabIndex="4" class="form-control btn btn-success" runat="server" Text="Log In" OnClick="loginButton_Click" />
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
                                            <%--</form>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3">
                            <div class="panel panel-default dropshadow">
                                <div class="panel-body">
                                    <div>
                                        <div class="text-center">
                                            <h4>Create An Account</h4>
                                        </div>
                                        <div>
                                            Creating an account will allow you access to wide range of features.<br />
                                            You can:
                                <ol>
                                    <li>Create a forum and discuss with fellow farmers</li>
                                    <li>Access to chat system</li>
                                    <li></li>
                                    <li>Access to shopping portal</li>
                                    <li>And more</li>
                                </ol>
                                            <br />
                                            It's Absolutely Free
                                <br />
                                            Click <a href="register" title="Register Here">here</a> to create your account now
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <script>
        function changeAlert(string) {
            if (string == "InvalidUser") {
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
