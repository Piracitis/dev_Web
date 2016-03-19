Imports System.Data.SqlClient

Public Class Receipt
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        Name.Text = Session("first").ToString + "  " + Session("last").ToString

        Address.Text = Session("add").ToString + " ,  " + Session("citys").ToString + " ," + Session("states").ToString

        Dim id As Integer = CInt(Math.Ceiling(Rnd() * 10000)) + 1
        CopyTable(id)
        Session.RemoveAll()
        Session("LoggedIn") = "True"
    End Sub


    Private Sub CopyTable(ByVal id As Integer)
        Try
            Dim items As String = "", quantities As String = ""
            Dim constr As String = ConfigurationManager.ConnectionStrings("conStr").ConnectionString
            Using con As New SqlConnection(constr)

                Dim uCommd As String = "Select * from Cart"

                Dim cmd2 As SqlCommand = New SqlCommand(uCommd, con)
                con.Open()


                Dim read As SqlDataReader = cmd2.ExecuteReader()

                While (read.Read())
                    items += read("cropname").ToString()
                    quantities += read("quantity").ToString()


                End While
                cmd2.CommandText = "Delete from Cart"
                con.Open()
                cmd2.ExecuteNonQuery()

                con.Close()

            End Using
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub
End Class