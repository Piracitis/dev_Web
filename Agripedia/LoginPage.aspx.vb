
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration


Public Class LoginPage
    Inherits System.Web.UI.Page
    Dim reader As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If (Request.QueryString("q") IsNot Nothing) Then
            Dim state As String = Request.QueryString("q")
            If (state.Equals("True")) Then
                Session("LoggedIn") = "False"
                Page.ClientScript.RegisterStartupScript([GetType](), "hideLogTab", "hideLogTab('" & "False" & "');", True)
            End If
        End If
        'Check if there exists a session variabel called LoggedIn if not create it 
        If (Session("LoggedIn") Is Nothing) Then
            Session("LoggedIn") = "False"
        Else
            'If logged in, redirect to userdashboard
            If (Session("LoggedIn").ToString.Equals("True")) Then
                If (Session("check") = "true") Then
                    Response.Redirect(Request.Url.GetLeftPart(UriPartial.Authority) + "/Checkout.aspx")
                Else
                    Response.Redirect(Request.Url.GetLeftPart(UriPartial.Authority) + "/UserDashBoard.aspx")
                End If
            End If
        End If



        Dim Tstate As String = Session("LoggedIn").ToString
            Page.ClientScript.RegisterStartupScript([GetType](), "hideLogTab", "hideLogTab('" & Tstate & "');", True)

    End Sub




    Protected Sub loginButton_Click(sender As Object, e As EventArgs)

        Dim userid As String = username.Value, passwd As String = password.Value
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




                Dim commd As String = "Select password from UserData where username = @userid "
                Dim cmd As SqlCommand = New SqlCommand(commd, con)
                con.Open()
                cmd.Parameters.Add("@userid", SqlDbType.NChar, 10).Value = userid

                Dim returnValue As String = CType(cmd.ExecuteScalar(), String)

                If (Not passwd.Equals(returnValue)) Then
                    Session("LoggedIn") = "True"

                    con.Close()
                    Session("username") = username

                    Dim aCookie As HttpCookie = HttpContext.Current.Request.Cookies("guid")
                    aCookie("userid") = userid

                    If (Session("check") = "true") Then
                        Response.Redirect(Request.Url.GetLeftPart(UriPartial.Authority) + "/Checkout.aspx")
                    Else
                        Response.Redirect(Request.Url.GetLeftPart(UriPartial.Authority) + "/UserDashBoard.aspx")
                    End If


                Else
                    alertText = "Username or Password is invalid"
                    alert.Text = alertText
                End If

            End Using
        Else
            alert.Text = alertText
        End If



        'Dim ex As MailSendSMTP = New MailSendSMTP()
        'ex.

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Response.Redirect("Recovery.aspx")
    End Sub
End Class