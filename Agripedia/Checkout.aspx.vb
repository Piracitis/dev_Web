Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Net.Mail
Imports System.Net

Public Class Checkout
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (HttpContext.Current.Session Is Nothing) Then
            MsgBox("Session Does not Exists")
        End If

        If (Session("LoggedIn") Is Nothing) Then
            Session("LoggedIn") = "False"
        Else
            If (Session("LoggedIn").ToString.Equals("False")) Then
                Dim meta As HtmlMeta = New HtmlMeta()
                Session("check") = "True"
                meta.HttpEquiv = "Refresh"
                meta.Content = "5;url=LoginPage.aspx"
                Me.Page.Controls.Add(meta)
                alert.Text = "You are not a registered user. Please Register or log in to purchase. Redirecting to Login/Register page in 5 seconds"
            End If
        End If

        Dim Tstate As String = Session("LoggedIn").ToString
        Page.ClientScript.RegisterStartupScript([GetType](), "hideLogTab", "hideLogTab('" & Tstate & "');", True)
    End Sub

    Private Function Validation() As String
        Try

            Dim firstname As String = first.Value.ToString
            Dim lastname As String = last.Value.ToString
            Dim add As String = address.Value.ToString
            Dim states As String = state.Value.ToString
            Dim citys As String = city.Value.ToString
            Dim emails As String = email.Value.ToString
            Dim alertText As String = ""

            Dim constr As String = ConfigurationManager.ConnectionStrings("conStr").ConnectionString
            Using con As New SqlConnection(constr)

                Dim uCommd As String = "Insert into address values (@user,@first,@last,@add,@email,@citys,@states)"

                Dim cmd2 As SqlCommand = New SqlCommand(uCommd, con)
                con.Open()
                cmd2.Parameters.Add("user", SqlDbType.NChar, 10).Value = "sd"
                cmd2.Parameters.Add("first", SqlDbType.NChar, 10).Value = firstname
                cmd2.Parameters.Add("last", SqlDbType.NChar, 10).Value = lastname
                cmd2.Parameters.Add("add", SqlDbType.NChar, 10).Value = add
                cmd2.Parameters.Add("email", SqlDbType.NChar, 10).Value = email
                cmd2.Parameters.Add("citys", SqlDbType.NChar, 10).Value = citys
                cmd2.Parameters.Add("states", SqlDbType.NChar, 10).Value = states


                Session("first") = first.ToString
                Session("last") = last.ToString
                Session("add") = add.ToString
                Session("states") = states.ToString
                Session("citys") = citys.ToString
                Session("email") = email.ToString

                cmd2.ExecuteScalar()

                Return alertText = "Your order has been placed. It will be delivered in 5 working days"
            End Using
        Catch ex As SqlException
            Return " "
        Finally

        End Try




    End Function

    Protected Sub CancelOrderButton_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub PaymentButton_Click(sender As Object, e As EventArgs)
        Dim text As String = Validation()
        Dim client As MailSendSMTP = New MailSendSMTP

        If (text.Equals("")) Then
            client.SendEmail(Session("email").ToString, "", Request, "Order Placed")
        End If
        alert.Text = text
        Response.Redirect("Reciept.aspx")
    End Sub
End Class