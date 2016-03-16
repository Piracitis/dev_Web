Public Class LoggedIn
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.Cookies("guid") Is Nothing Then
            Dim aCookie As New HttpCookie("guid")
            aCookie.Value = Guid.NewGuid().ToString()
            aCookie.Expires = DateTime.Now.AddYears(1)
            Response.Cookies.Add(aCookie)

        Else

            Dim aCookie As HttpCookie = HttpContext.Current.Request.Cookies("guid")
            aCookie.Expires = DateTime.Now.AddYears(1)
            Response.Cookies.Add(aCookie)

        End If
    End Sub

End Class