
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
        Try

            Dim subtotal As Integer = 0, totals As Integer = 0, price As Integer = 40, cartName As String = ""
            Dim dt As New DataTable()
            dt.Columns.AddRange(New DataColumn(3) {New DataColumn("ItemName"), New DataColumn("Unitprice"), New DataColumn("quantity"), New DataColumn("Subtotal")})
            Dim aCookie As HttpCookie = HttpContext.Current.Request.Cookies("guid")
            Dim value As String = aCookie.Value
            If (Not value.Length = 45) Then
                value = value.Substring(0, 46)
            End If
            Dim constr As String = ConfigurationManager.ConnectionStrings("conStr").ConnectionString
            Dim cCommd As String = ""
            Using con As New SqlConnection(constr)
                Dim cmdObj2 As New SqlClient.SqlCommand(cCommd, con)

                con.Open()

                If (Session("LoggedIn").ToString.Contains("True")) Then
                    cmdObj2.CommandText = "Select * from Cart where cookie=@cookie"
                Else
                    cmdObj2.CommandText = "Select * from anonyCart where cookie=@cookie"
                End If
                cmdObj2.Parameters.Add("@cookie", SqlDbType.NChar, 100).Value = value
                Using readerObj As SqlDataReader = cmdObj2.ExecuteReader
                    readerObj.Read()

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

                total.Text = "Total :  " + totals.ToString()
                aCookie("Total") = totals
            End Using

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub


    Protected Sub quantityChange(ByVal name As String, ByVal quant As Integer, ByVal type As String, ByRef gvr As GridViewRow)
        Try
            Dim constr As String = ConfigurationManager.ConnectionStrings("conStr").ConnectionString
            Dim update As String = "Update anonyCart set quantity=@quant where cropname=@crop"
            Using con As New SqlConnection(constr)
                Dim cmdObj As New SqlClient.SqlCommand(update, con)
                cmdObj.Parameters.Add("crop", SqlDbType.NChar, 20).Value = name

                If (type.Contains("incr")) Then
                    quant = quant + 1
                    cmdObj.Parameters.Add("quant", SqlDbType.Int).Value = quant
                Else
                    If (Not quant = 0) Then
                        quant = quant - 1
                        cmdObj.Parameters.Add("quant", SqlDbType.Int).Value = quant
                    End If
                End If
                con.Open()
                cmdObj.ExecuteScalar()
                con.Close()
                BindGrid(1)
            End Using

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub increase_Click(sender As Object, e As EventArgs)
        Dim btn As Button = CType(sender, Button)
        Dim gvr As GridViewRow = CType(btn.NamingContainer, GridViewRow)

        Dim i As Integer = CInt(CType(gvr.FindControl("quantity"), TextBox).Text)
        quantityChange(gvr.Cells(0).Text, i, "incr", gvr)
    End Sub

    Protected Sub decrease_Click(sender As Object, e As EventArgs)
        Dim btn As Button = CType(sender, Button)
        Dim gvr As GridViewRow = CType(btn.NamingContainer, GridViewRow)
        Dim i As Integer = CInt(CType(gvr.FindControl("quantity"), TextBox).Text)
        quantityChange(gvr.Cells(0).Text, i, "decr", gvr)

    End Sub
End Class