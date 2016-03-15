<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/LoggedIn.Master" CodeBehind="Checkout.aspx.vb" Inherits="Agripedia.Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- <link href="checkoutStyle.css" rel="stylesheet" type="text/css" media="all" />--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="placeholder" runat="server">
    <form class="form-horizontal" method="post" runat="server">
        <div class="container-fluid">
            <div class="container">
                <div class="col-lg-6 col-md-9 col-lg-offset-3">
                    <!--SHIPPING METHOD-->
                    <div class="panel panel-info">
                        <div class="panel-heading">Address</div>
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-lg-12">
                                    <h4>Shipping Address</h4>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-10"><strong>Country:</strong></div>
                                <div class="col-md-10">
                                    <input type="text" class="form-control" name="country" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6 col-xs-10">
                                    <strong>First Name:</strong>
                                    <input type="text" name="first_name" class="form-control" value="" />
                                </div>
                                <div class="span1"></div>
                                <div class="col-md-4 col-xs-10">
                                    <strong>Last Name:</strong>
                                    <input type="text" name="last_name" class="form-control" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-10"><strong>Address:</strong></div>
                                <div class="col-md-10">
                                    <input type="text" name="address" class="form-control" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-10"><strong>City:</strong></div>
                                <div class="col-md-10">
                                    <input type="text" name="city" class="form-control" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-10"><strong>State:</strong></div>
                                <div class="col-md-10">
                                    <input type="text" name="state" class="form-control" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-10"><strong>Zip / Postal Code:</strong></div>
                                <div class="col-md-10">
                                    <input type="text" name="zip_code" class="form-control" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-10"><strong>Phone Number:</strong></div>
                                <div class="col-md-10">
                                    <input type="text" name="phone_number" class="form-control" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-10"><strong>Email Address:</strong></div>
                                <div class="col-md-10">
                                    <input type="text" name="email_address" class="form-control" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-offset-1 col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                        <asp:Button name="Payment" ID="PaymentButton" TabIndex="4" class="form-control btn btn-success" runat="server" Text="Proceed To Payment" OnClick ="PaymentButton_Click" />
                                    </div>
                                    <div class="col-lg-offset-1 col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                        <asp:Button name="CancelOrder" ID="CancelOrderButton" TabIndex="4" class="form-control btn btn-primary" runat="server" Text="CancelOrder" OnClick ="CancelOrderButton_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </form>

</asp:Content>
