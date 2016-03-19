Public Class Dashboard
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If (HttpContext.Current.Session Is Nothing) Then
            MsgBox("Session Does not Exists")
        End If

        If (Session("LoggedIn") Is Nothing) Then
            Session("LoggedIn") = "False"
        Else
            If (Session("LoggedIn").ToString.Equals("False")) Then
                Response.Redirect("LoginPage.aspx")
            End If
        End If
        Dim aCookie As HttpCookie = HttpContext.Current.Request.Cookies("guid")
        userlb.Text = aCookie("userid")
        Dim Tstate As String = Session("LoggedIn").ToString
        Page.ClientScript.RegisterStartupScript([GetType](), "hideLogTab", "hideLogTab('" & Tstate & "');", True)
    End Sub

End Class