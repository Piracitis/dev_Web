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
                Dim aCookie As HttpCookie = HttpContext.Current.Request.Cookies("guid")

                aCookie("check") = "True"
                meta.HttpEquiv = "Refresh"
                meta.Content = "5;url=" + Request.Url.GetLeftPart(UriPartial.Authority) + "/LoginPage.aspx/?q=checkout"
                Me.Page.Controls.Add(meta)
                alert.Text = "You are not a registered user. Please Register or log in to purchase. Redirecting to Login/Register page in 5 seconds"
            End If
        End If

        Dim Tstate As String = Session("LoggedIn").ToString
        Page.ClientScript.RegisterStartupScript([GetType](), "hideLogTab", "hideLogTab('" & Tstate & "');", True)
    End Sub

    Private Function Validation() As String
        Try

            Dim firstname As String = first.Text.ToString()
            Dim lastname As String = last.Text.ToString()
            Dim add As String = address.Text.ToString()
            Dim states As String = state.Text.ToString()
            Dim citys As String = city.Text.ToString()
            Dim emails As String = email.Text.ToString()
            Dim alertText As String = ""
            Dim aCookie As HttpCookie = HttpContext.Current.Request.Cookies("guid")

            Dim constr As String = ConfigurationManager.ConnectionStrings("conStr").ConnectionString
            Using con As New SqlConnection(constr)

                Dim uCommd As String = "Insert into address values (@user,@first,@last,@add,@email,@citys,@states)"

                Dim cmd2 As SqlCommand = New SqlCommand(uCommd, con)
                con.Open()
                cmd2.Parameters.Add("user", SqlDbType.NChar, 15).Value = aCookie("userid")
                cmd2.Parameters.Add("first", SqlDbType.NChar, 30).Value = firstname
                cmd2.Parameters.Add("last", SqlDbType.NChar, 30).Value = lastname
                cmd2.Parameters.Add("add", SqlDbType.NChar, 30).Value = add
                cmd2.Parameters.Add("email", SqlDbType.NChar, 30).Value = emails
                cmd2.Parameters.Add("citys", SqlDbType.NChar, 30).Value = citys
                cmd2.Parameters.Add("states", SqlDbType.NChar, 30).Value = states



                Session("first") = firstname
                Session("last") = lastname
                Session("add") = add
                Session("states") = states
                Session("citys") = citys
                Session("email") = emails

                cmd2.ExecuteNonQuery()

                alertText = "Your order has been placed. It will be delivered to your location in 5 working days"
                Return alertText
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

        If (Not text.Equals("")) Then
            client.SendEmail(Session("email").ToString, "", Request, "Order Placed")
        End If
        alert.Text = text
        Response.Redirect("Receipt.aspx")
    End Sub
End Class