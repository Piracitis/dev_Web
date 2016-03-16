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
    <div class="container">
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
                                <form id="Form1" autocomplete="off" runat="server">
                                    <div class="form-group">
                                        <label for="new-password">New Password</label>
                                        <input name="new-password" id="new-password" tabindex="1" class="form-control" placeholder="New Password" autocomplete="off" required="" type="password" />
                                    </div>
                                    <div class="form-group">
                                        <label for="confirm-new-password">Confirm Password</label>
                                        <input name="confirm-new-password" id="confirm-new-password" tabindex="2" class="form-control" placeholder="Confirm Password" autocomplete="off" required="" type="password" />
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-12 col-xs-12">
                                                <asp:Button name="recover-submit" runat="server" OnClick = "Button1_Click"  id="Button1" tabindex="3" class="form-control btn btn-success" value="Change Password" type="submit" />
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
</body>
</html>
