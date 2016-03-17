
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration

Public Class Cart
    Inherits System.Web.UI.Page

    Dim rowindex As Integer = 0
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If (HttpContext.Current.Session Is Nothing) Then
            MsgBox("Session Does not Exists")
        End If

        If (Session("LoggedIn") Is Nothing) Then
            Session("LoggedIn") = "False"
        End If

        Dim Tstate As String = Session("LoggedIn").ToString
        Page.ClientScript.RegisterStartupScript([GetType](), "hideLogTab", "hideLogTab('" & Tstate & "');", True)

        If Not Me.IsPostBack Then

            Me.BindGrid(1)
        End If
    End Sub

    Protected Sub BindGrid(ByVal text As Integer)
        Dim subtotal As Integer = 0, totals As Integer = 0, price As Integer = 40
        Dim dt As New DataTable()
        dt.Columns.AddRange(New DataColumn(3) {New DataColumn("ItemName"), New DataColumn("Unitprice"), New DataColumn("quantity"), New DataColumn("Subtotal")})
        Dim aCookie As HttpCookie = HttpContext.Current.Request.Cookies("guid")
        Dim value As String = aCookie.Value

        Dim constr As String = ConfigurationManager.ConnectionStrings("conStr").ConnectionString
        Dim cCommd As String = "Select * from anonyCart where cookie=@cookie"
        Using con As New SqlConnection(constr)
            Dim cmdObj2 As New SqlClient.SqlCommand(cCommd, con)

            con.Open()
            cmdObj2.Parameters.Add("@cookie", SqlDbType.NChar, 100).Value = value
            Using readerObj As SqlClient.SqlDataReader = cmdObj2.ExecuteReader

                While (readerObj.Read)
                    price = CInt(readerObj("price"))
                    Dim quant As Integer = CInt(readerObj("quantity"))
                    subtotal = price * quant
                    dt.Rows.Add(readerObj("cropname"), price, quant, subtotal)
                    totals += subtotal
                End While
            End Using

            ViewState("dt") = dt
            CartDesc.DataSource = dt
            CartDesc.DataBind()
            con.Close()

            total.Text = "Total" + totals.ToString()


        End Using



    End Sub


    Protected Sub quantity_TextChanged(sender As Object, e As EventArgs)
        For Each row As GridViewRow In CartDesc.Rows
            If (row.RowType.Equals(DataControlRowType.DataRow)) Then
                Dim txt As TextBox = row.FindControl("quantity")
                Dim name As String = CartDesc.Rows(rowindex).Cells(0).ToString

                BindGrid(txt.Text)
                Try
                    Dim constr As String = ConfigurationManager.ConnectionStrings("conStr").ConnectionString
                    Dim update As String = "Update anonyCart set quantity= @quant where cropname = @crop"
                    Using con As New SqlConnection(constr)
                        Dim cmdObj As New SqlClient.SqlCommand(update, con)
                        cmdObj.Parameters.Add("crop", SqlDbType.NChar, 20).Value = name
                        cmdObj.Parameters.Add("quant", SqlDbType.Int).Value = CInt(txt.Text)
                        con.Open()
                        cmdObj.ExecuteScalar()

                    End Using

                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            End If
        Next

    End Sub

    Protected Sub CartDesc_RowDataBound(sender As Object, e As GridViewRowEventArgs)
        For Each row As GridViewRow In CartDesc.Rows
            If (row.RowType.Equals(DataControlRowType.DataRow)) Then
                Dim txt As TextBox = row.FindControl("quantity")
                rowindex = e.Row.RowIndex
            End If
        Next

    End Sub
End Class