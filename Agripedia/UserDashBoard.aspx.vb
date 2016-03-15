Public Class UserDashBoard
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If (HttpContext.Current.Session Is Nothing) Then
            MsgBox("Session Does not Exists")
        End If

        'Check if there exists a session variabel called LoggedIn if not create it 
        If (Session("LoggedIn") Is Nothing) Then
            Session("LoggedIn") = "False"
        Else
            'if doesn't exists, redirect to login page
            If (Session("LoggedIn").ToString.Equals("False")) Then
                Response.Redirect("LoginPage.aspx")
            End If
        End If

        Dim Tstate As String = Session("LoggedIn").ToString
        Page.ClientScript.RegisterStartupScript([GetType](), "hideLogTab", "hideLogTab('" & Tstate & "');", True)

    End Sub

End Class