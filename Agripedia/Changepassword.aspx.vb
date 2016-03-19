Imports System.Data.SqlClient

Public Class ChangePassword1
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

        Dim Tstate As String = Session("LoggedIn").ToString
        Page.ClientScript.RegisterStartupScript([GetType](), "hideLogTab", "hideLogTab('" & Tstate & "');", True)
    End Sub

    Protected Sub submit_Click(sender As Object, e As EventArgs)
        Dim cpasswd As String, npasswd As String, cnpasswd As String, alertText As String = ""

        cpasswd = Password1.Value
        npasswd = Password2.Value
        cnpasswd = Password3.Value
        If (Not npasswd.Equals(cnpasswd)) Then
            alertText = "Enter same New password"
        Else
            Try
                Dim constr As String = ConfigurationManager.ConnectionStrings("conStr").ConnectionString
                Using con As New SqlConnection(constr)
                    Dim aCookie As HttpCookie = HttpContext.Current.Request.Cookies("guid")
                    Dim userid As String = aCookie("userid")
                    Dim uCommd As String = "Select password from UserData where username=@userid"

                    Dim cmd2 As SqlCommand = New SqlCommand(uCommd, con)
                    con.Open()
                    cmd2.Parameters.Add("userid", SqlDbType.NChar, 15).Value = userid

                    Dim reader As SqlDataReader = cmd2.ExecuteReader()
                    reader.Read()
                    Dim returnValue As String = reader("password").ToString()
                    If (returnValue Is Nothing) Then
                        alertText = "Invalid Password"
                    End If

                    If (Not cpasswd.Equals(cpasswd)) Then
                        If (alertText.Equals("")) Then
                            alertText = "<br>Password doesnt match with database"
                        End If

                    Else
                        con.Close()
                        cmd2.CommandText = "Update userdata set password=@pass"
                        cmd2.Parameters.Add("pass", SqlDbType.NChar, 20).Value = npasswd
                        con.Open()
                        cmd2.ExecuteScalar()
                        alertText = "Password Changed Successfully"
                        con.Close()
                    End If
                    alert.Text = alertText
                    If (alertText.Contains("Successfully")) Then
                        Dim client As MailSendSMTP = New MailSendSMTP
                        client.SendEmail(aCookie("emailid").ToString, "", Request, "password changed")
                    End If
                    Page.ClientScript.RegisterStartupScript([GetType](), "changeAlert", "changeAlert('" & "valid" & "');", True)


                End Using
            Catch ex As SqlException

            Finally

            End Try
        End If




    End Sub
End Class