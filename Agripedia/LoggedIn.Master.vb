Imports System.Net
Imports System.Net.Mail

Public Class LoggedIn
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.Cookies("guid") Is Nothing Then
            Dim aCookie As New HttpCookie("guid")
            aCookie.Value = Guid.NewGuid().ToString()
            aCookie.Expires = DateTime.Now.AddYears(1)
            Response.Cookies.Add(aCookie)

        Else

            Dim aCookie As HttpCookie = HttpContext.Current.Request.Cookies("guid")
            aCookie.Expires = DateTime.Now.AddYears(1)
            Response.Cookies.Add(aCookie)

        End If
    End Sub

End Class



Public Class MailSendSMTP

    Public Shared Sub SendEmail(ByVal reciever As String, ByVal username As String, ByVal ur As HttpRequest, ByVal state As String)
        Dim value As Integer = Int((50000 * Rnd()) + 1)




        Using mm As New MailMessage("dummypira@gmail.com", reciever)
            mm.Subject = "Agripedia. Welcome Aboard"
            If (state = "recover") Then
                mm.Body = "You have requested for a new password <br> <br>" +
                "Please follow the below url to reset your password <br> <br>" +
                ur.Url.GetLeftPart(UriPartial.Authority) +
                "/AccountRecovery.aspx"
            End If

            If (state = "newuser") Then
                mm.Body =
                "AgriPedia : One Stop for Agriculture Guide <br><br> " +
                "Welcome Aboard!<br><br>" +
                "Hello " + username + "! You have successfully registered for an account at Agripedia. Your information is : <br> <br>" +
                "Username : " + username + "<br><br>" +
                "Email : " + reciever + "  You need to confirm your email address before you can continue <br> <br> " +
                "Confirm my Email address : " + ur.Url.GetLeftPart(UriPartial.Authority) +
                "/LoginPage.aspx"

            End If

            If (state = "orderplaced") Then
                mm.Body =
                "AgriPedia : One Stop for Agriculture Guide <br><br> " +
                "Congratulations<br><br>" +
                "Your order has been successfully placed <br> <br>"


            End If



            mm.IsBodyHtml = True
            Dim smtp As New SmtpClient()
            smtp.Host = "smtp.gmail.com"
            smtp.EnableSsl = True
            Dim NetworkCred As New NetworkCredential("dummypira@gmail.com", "agripedia1995")
            smtp.UseDefaultCredentials = True
            smtp.Credentials = NetworkCred
            smtp.Port = 25
            Try
                MsgBox("starting to send mail")
                smtp.Send(mm)
                MsgBox("email was sent successfully!")
            Catch ep As Exception
                MsgBox("unsuccessful" + ep.Message)
            End Try

        End Using
    End Sub

End Class