Public Class Receipt
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("check") = "false"
        Name.Text = Session("first").ToString + "  " + Session("last").ToString

        Address.Text = Session("add").ToString + " ,  " + Session("citys").ToString + " ," + Session("states").ToString
    End Sub

End Class