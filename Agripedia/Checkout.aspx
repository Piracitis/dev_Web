<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/LoggedIn.Master" CodeBehind="Checkout.aspx.vb" Inherits="Agripedia.Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="placeholder" runat="server">
    <form class="form-horizontal" method="post" runat="server">
        <div class="container-fluid">
            <div class="container">
                <div class="col-lg-6 col-md-9 col-lg-offset-3">
                    <div class="alert alert-danger alert-dismissible" role="alert">
                                <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                                <asp:Label runat ="server" id = "alert" Text = "" />
                            </div>

                    <div class="text-capitalize">
                                <br />
                                Currently we only support COD, Cash on Delivery
                                <br /> We apologize for the inconvinience caused. <br /> 
                            </div>
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
                                <div class="col-md-6 col-xs-10">
                                    <strong>First Name:</strong>
                                    <input type="text" name="first_name" id="first" runat="server" class="form-control" value="" />
                                </div>
                                <div class="span1"></div>
                                <div class="col-md-4 col-xs-10">
                                    <strong>Last Name:</strong>
                                    <input type="text" name="last_name" id="last" runat="server" class="form-control" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-10"><strong>Address:</strong></div>
                                <div class="col-md-10">
                                    <input type="text" name="address" id="address" runat="server"  class="form-control" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-10"><strong>City:</strong></div>
                                <div class="col-md-10">
                                    <input type="text" name="city" id="city" runat="server"   class="form-control" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-10"><strong>State:</strong></div>
                                <div class="col-md-10">
                                    <input type="text" name="state" id="state" runat="server"  class="form-control" value="" />
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-10"><strong>Email Address:</strong></div>
                                <div class="col-md-10">
                                    <input type="text" name="email" id ="email" runat="server"  class="form-control" value="" />
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
