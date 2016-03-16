Public Class Logout
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Session.RemoveAll()
        Session("LoggedIn") = "False"

        Response.Redirect("LoginPage.aspx?q=True")
    End Sub

End Class