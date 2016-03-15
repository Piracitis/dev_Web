
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Public Class LoginPage
    Inherits System.Web.UI.Page
    Dim reader As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If (HttpContext.Current.Session Is Nothing) Then
            MsgBox("Session Does not Exists")

        End If

        If (Session("LoggedIn") Is Nothing) Then
            Session("LoggedIn") = "False"
        Else
            If (Session("LoggedIn").ToString.Equals("True")) Then
                Response.Redirect("UserDashBoard.aspx")
            End If
        End If

        Dim Tstate As String = Session("LoggedIn").ToString
        Page.ClientScript.RegisterStartupScript([GetType](), "hideLogTab", "hideLogTab('" & Tstate & "');", True)

    End Sub

    Protected Sub loginButton_Click(sender As Object, e As EventArgs)
        Dim alertText As String = ""
        If (username.Value.Length < 4) Then
            alertText = "Username must be atleast 4 characters length"
        End If

        If (password.Value.Length < 6) Then
            If (alertText.Equals("")) Then
                alertText = "Password must be atleast Of 6 characters In length"

            End If
            alertText += "<br>Password must be atleast Of 6 characters In length"
        End If

        If (alertText.Equals("")) Then
            Dim constr As String = ConfigurationManager.ConnectionStrings("conStr").ConnectionString
            Using con As New SqlConnection(constr)


                Dim userid As String = username.Value, passwd As String = password.Value

                Dim commd As String = "Select password from UserData where username = @userid "

                Dim cmd As SqlCommand = New SqlCommand(commd, con)
                con.Open()
                cmd.Parameters.Add("@userid", SqlDbType.NChar, 10).Value = userid

                Dim returnValue As String = CType(cmd.ExecuteScalar(), String)

                If (passwd.Equals(returnValue)) Then
                    MsgBox("Im True")
                    Session("LoggedIN") = True
                    con.Close()
                    Response.Redirect("UserDashBoard.aspx")
                Else
                    alertText = "Username or Password is invalid"
                    alert.Text = alertText
                End If

            End Using
        Else
            alert.Text = alertText
        End If
    End Sub
End Class