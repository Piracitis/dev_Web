Public Class HomePage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If (HttpContext.Current.Session Is Nothing) Then
            MsgBox("Session Does not Exists")
        End If

        'Check if there exists a session variabel called LoggedIn if not create it 
        If (Session("LoggedIn") Is Nothing) Then
            Session("LoggedIn") = "False"
        End If

        'Session variable exits, if false he has not logged in

        Dim Tstate As String = Session("LoggedIn").ToString
        Page.ClientScript.RegisterStartupScript([GetType](), "hideLogTab", "hideLogTab('" & Tstate & "');", True)
    End Sub
End Class