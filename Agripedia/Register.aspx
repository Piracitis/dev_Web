<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/LoggedIn.Master" CodeBehind="Register.aspx.vb" Inherits="Agripedia.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="placeholder" runat="server">
    <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" EnablePartialRendering="true" runat="server" EnablePageMethods="true"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">


            <ContentTemplate>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3">
                            <div class="alert alert-danger alert-dismissible" id="alertTag" role="alert">
                                <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                                <asp:Label runat="server" ID="alert" Text="" />
                            </div>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <div class="container">
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
                                    <div class="form-group has-feedback">
                                        <label for="username">Username</label>
                                        <span class="form-control-feedback input-validator-feedback"></span>
                                        <input id="username" runat="server" class="form-control validate-input" placeholder="Username" value="" autocomplete="off" type="text" />
                                    </div>
                                    <div class="form-group has-feedback">
                                        <label for="email">Email Address</label>
                                        <span class="form-control-feedback input-validator-feedback"></span>
                                        <input id="email" runat="server" class="form-control validate-input" placeholder="Email Address" value="" autocomplete="off" type="text" />
                                    </div>
                                    <div class="form-group">
                                        <label for="password">Password</label>
                                        <input id="password" runat="server" class="form-control" placeholder="Password" autocomplete="off" type="password" />
                                    </div>
                                    <div class="form-group">
                                        <label for="confirm-password">Confirm Password</label>
                                        <input name="confirm-password" runat="server" id="confirm_password" class="form-control" placeholder="Confirm Password" autocomplete="off" type="password" />
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                <asp:Button name="LogIn" id="LogInButton" TabIndex="4" class="form-control btn btn-primary" runat="server" Text="Log In" OnClick ="LogInButton_Click" />
                                            </div>
                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                <asp:Button name="register-submit" ID="RegisterButton" TabIndex="4" class="form-control btn btn-success" runat="server" Text="Register" OnClick="RegisterButton_Click" />
                                            </div>
                                        </div>
                                    </div>
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
                                    You can :
                                <ol>
                                    <li>Create and pariticipate in our discussion forum</li>
                                    <li>Access to chat system</li>
                                    <li>Get notification of articles and posts added</li>
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
    </form>
        <script>
        function changeAlert(string) {
            document.getElementById("alertTag").style.display = "block";
            if (alert == "invalid")
                document.getElementById("alertTag").attributes.class = "alert alert-danger"
            else
                document.getElementById("alertTag").attributes.class = "alert alert-success"
        }
    </script>

</asp:Content>
