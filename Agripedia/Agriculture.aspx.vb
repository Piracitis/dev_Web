Public Class Agriculture
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If (HttpContext.Current.Session Is Nothing) Then
            MsgBox("Session Does not Exists")
        End If

        If (Session("LoggedIn") Is Nothing) Then
            Session("LoggedIn") = "False"
        End If


        Dim Tstate As String = Session("LoggedIn").ToString
        Page.ClientScript.RegisterStartupScript([GetType](), "hideLogTab", "hideLogTab('" & Tstate & "');", True)
    End Sub

    Protected Sub ButtonClick(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim btn As Button = CType(sender, Button)
        Dim cropname As String = btn.ID.ToString()

        Response.Redirect("ProductDetails.aspx/?cropname=" + cropname)

    End Sub

End Class