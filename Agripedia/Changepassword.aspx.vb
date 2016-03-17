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
        Dim cpasswd As String, npasswd As String, cnpasswd As String, alertText As String

        cpasswd = Password1.Value
        npasswd = Password1.Value
        cnpasswd = Password1.Value
        If (Not npasswd.Equals(cnpasswd)) Then
            alertText = "Enter same New password"
        End If

        Try
            Dim constr As String = ConfigurationManager.ConnectionStrings("conStr").ConnectionString
            Using con As New SqlConnection(constr)
                Dim aCookie As HttpCookie = HttpContext.Current.Request.Cookies("guid")
                Dim userid As String = aCookie("userid")
                Dim uCommd As String = "Select password from UserData where username = '@userid'"

                Dim cmd2 As SqlCommand = New SqlCommand(uCommd, con)
                con.Open()
                cmd2.Parameters.Add("userid", SqlDbType.NChar, 10).Value = userid

                Dim returnValue As String = CType(cmd2.ExecuteScalar, String)
                If (Not returnValue Is Nothing) Then
                    alertText = "Invalid Password"
                End If

                If (Not cpasswd.Equals(cpasswd)) Then
                    If (alertText.Equals("")) Then
                        alertText = "<br>Password doesnt match with database"
                    End If

                Else
                    con.Close()
                    cmd2.CommandText = "Update userdata set password = " + npasswd
                    con.Open()
                    cmd2.ExecuteScalar()
                    alertText = "Password Changed Successfully"
                    Page.ClientScript.RegisterStartupScript([GetType](), "changeAlert", "changeAlert('" & "valid" & "');", True)
                End If

                alert.Text = alertText


            End Using
        Catch ex As SqlException

        Finally

        End Try


    End Sub
End Class