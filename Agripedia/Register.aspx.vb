Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Net.Mail
Imports System.Net


Public Class Register
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If (HttpContext.Current.Session Is Nothing) Then
            MsgBox("Session Does not Exists")
        End If

        'Check if there exists a session variabel called LoggedIn if not create it 
        If (Session("LoggedIn") Is Nothing) Then
            Session("LoggedIn") = "False"
        Else
            'If already loggedIn , redirect to dashboard
            If (Session("LoggedIn").ToString.Equals("True")) Then
                Response.Redirect("Dashboard.aspx")
            End If
        End If

        Dim Tstate As String = Session("LoggedIn").ToString
        Page.ClientScript.RegisterStartupScript([GetType](), "hideLogTab", "hideLogTab('" & Tstate & "');", True)
    End Sub



    Private Function Validation() As String
        Try

            Dim userid As String = username.Value, passwd As String = password.Value, confirm_passwd As String = confirm_password.Value, email_id = email.Value
            Dim alertText As String = ""
            Dim constr As String = ConfigurationManager.ConnectionStrings("conStr").ConnectionString
            Using con As New SqlConnection(constr)

                Dim uCommd As String = "Select username from UserData where username = '@userid'"

                Dim cmd2 As SqlCommand = New SqlCommand(uCommd, con)
                con.Open()
                cmd2.Parameters.Add("userid", SqlDbType.NChar, 10).Value = userid

                Dim returnValue As String = CType(cmd2.ExecuteScalar, String)
                If (Not returnValue Is Nothing) Then
                    alertText = "Username already exists please select another user name"
                    Return alertText
                End If

                If (Not passwd.Equals(confirm_passwd)) Then
                    If (alertText.Equals("")) Then
                        alertText = "<br>Password doesnt match. Please enter same password"
                    Else

                        alertText += "<br>Password doesnt match. Please enter same password"
                    End If
                    Return alertText
                Else
                End If
                Dim SessionId As String = Session.SessionID.ToString()
                Dim reg_date As String = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")

                Dim addCommd As String = "Insert into UserData(username,password,session_id,login_time,email_id) values (@userid, @passwd, @session, @reg_date, @email)"

                Dim cmd1 As SqlCommand = New SqlCommand(addCommd, con)


                cmd1.Parameters.Add("@userid", SqlDbType.NChar, 10).Value = userid
                cmd1.Parameters.Add("@passwd", SqlDbType.NChar, 10).Value = passwd
                cmd1.Parameters.Add("@session", SqlDbType.VarChar, 10).Value = SessionId

                cmd1.Parameters.Add("@reg_date", SqlDbType.DateTime, 10).Value = reg_date
                cmd1.Parameters.Add("@email", SqlDbType.NChar, 20).Value = email_id

                returnValue = cmd1.ExecuteScalar()
                If (Not returnValue Is Nothing) Then
                    alertText = "Server Error : Enter Again"
                End If

                Return alertText
            End Using
        Catch ex As SqlException
            Return " "
        Finally

        End Try




    End Function

    Protected Sub RegisterButton_Click(sender As Object, e As EventArgs)
        Dim text As String = Validation()
        Dim client As MailSendSMTP = New MailSendSMTP

        If (text.Equals("")) Then
            client.SendEmail("sundaresh2912@gmail.com", username.Value, Request, "newuser")
            text = "A verification link has been sent to your email. Please confirm your email id"
        End If
        alert.Text = text
    End Sub

    Protected Sub LogInButton_Click(sender As Object, e As EventArgs)
        Response.Redirect("LoginPage.aspx")
    End Sub
End Class