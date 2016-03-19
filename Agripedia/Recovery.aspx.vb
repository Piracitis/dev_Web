Imports System.Data.SqlClient

Public Class Recovery
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If (HttpContext.Current.Session Is Nothing) Then
            MsgBox("Session Does not Exists")
        End If

        If (Session("LoggedIn") Is Nothing) Then
            Session("LoggedIn") = "False"
        Else
            If (Session("LoggedIn").ToString.Equals("True")) Then
                Dim meta As HtmlMeta = New HtmlMeta()

                meta.HttpEquiv = "Refresh"
                meta.Content = "3;url=UserDashboard.aspx"
                Me.Page.Controls.Add(meta)
                alert.Text = "You have already been logged in. Please logout first. Redirecting to Dashboard in 3 seconds"
            End If
        End If

        Dim Tstate As String = Session("LoggedIn").ToString
        Page.ClientScript.RegisterStartupScript([GetType](), "hideLogTab", "hideLogTab('" & Tstate & "');", True)
    End Sub

    Protected Sub recover_submit_Click(sender As Object, e As EventArgs)
        Dim text As String = Validation()
        Dim client As MailSendSMTP = New MailSendSMTP

        If (text.Equals("")) Then
            client.SendEmail("sundaresh2912@gmail.com", "", Request, "recover")
            text = "Check Your email id. Recovery options have been sent"
        End If
        alert.Text = text
    End Sub


    Private Function Validation() As String
        Try

            Dim email_id = email.Value
            Dim alertText As String = ""
            Dim constr As String = ConfigurationManager.ConnectionStrings("conStr").ConnectionString
            Using con As New SqlConnection(constr)

                Dim uCommd As String = "Select email_id from KisanEnglish.dbo.userData where email_id=@email"

                Dim cmd2 As SqlCommand = New SqlCommand(uCommd, con)
                con.Open()
                cmd2.Parameters.Add("email", SqlDbType.NChar, 20).Value = email_id

                Dim returnValue As String = cmd2.ExecuteReader.ToString
                If (returnValue Is Nothing) Then
                    alertText = "Email ID doesn't exists.<br> Please enter registered email-id"
                    Return alertText
                End If

                Return alertText
            End Using
        Catch ex As SqlException
            Return " "
        Finally

        End Try
    End Function
End Class