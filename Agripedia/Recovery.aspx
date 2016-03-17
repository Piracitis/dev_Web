<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/LoggedIn.Master" CodeBehind="Recovery.aspx.vb" Inherits="Agripedia.Recovery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="placeholder" runat="server">

    <form runat="server" autocomplete="off">
        <asp:ScriptManager ID="ScriptManager1" EnablePartialRendering="true" runat="server" EnablePageMethods="true"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">


            <ContentTemplate>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3">
                            <div class="alert alert-success " id="alertTag" role="alert">
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
                                        <label for="email">Email Address</label>
                                        <input name="email" runat="server" id="email" tabindex="1" class="form-control" placeholder="Email Address" value="" autocomplete="off" required="" type="email" />
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-12 col-xs-12">
                                                <asp:Button runat="server" ID="recover_submit" TabIndex="2" class="form-control btn btn-success" Text ="Recover Account"  OnClick="recover_submit_Click" />
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


</asp:Content>
