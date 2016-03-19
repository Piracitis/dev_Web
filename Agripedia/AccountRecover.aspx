<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AccountRecover.aspx.vb" Inherits="Agripedia.AccountRecover" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/MainPage.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/MainStyle.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
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
        <div class="container" style="margin-top: 3%">
            <div class="row">
                <div class="col-lg-6 col-lg-offset-3">
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
                                                <asp:Button name="Change-submit" ID="ChangePass" TabIndex="4" class="form-control btn btn-success" runat="server" Text="Change Password" OnClick="ChangePass_Click" />
                                            </div>
                                        </div>
                                    </div>
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
</body>
</html>
