<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/LoggedIn.Master" CodeBehind="Receipt.aspx.vb" Inherits="Agripedia.Receipt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="placeholder" runat="server">
    <form runat="server">
        <div class="container" style="margin-top: 1%">
            <div class="row">
                <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3">
                    <div class="alert alert-success " role="alert">
                        <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                        <asp:Label runat="server" ID="alert" Text="Your order has been successfully placed. A reciept has been sent to your email Id" />
                    </div>
                    <div class="panel panel-success">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="text-center">
                                        <asp:Label runat="server" ID="Name" Text=""></asp:Label>
                                        <br />
                                        <br />
                                        Order Will be delivered to following address<br />
                                        <br />
                                        <asp:Label runat="server" ID="Address" Text=""></asp:Label>

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
