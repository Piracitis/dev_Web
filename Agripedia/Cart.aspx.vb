
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration

Public Class Cart
    Inherits System.Web.UI.Page

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
        Dim subtotal As Integer = 0, price As Integer = 40
        Dim dt As New DataTable()
        dt.Columns.AddRange(New DataColumn(3) {New DataColumn("ItemName"), New DataColumn("Unitprice"), New DataColumn("quantity"), New DataColumn("Subtotal")})
        subtotal = text * price

        dt.Rows.Add("Carrot", price, text, subtotal)
        ViewState("dt") = dt
        CartDesc.DataSource = dt
        CartDesc.DataBind()

    End Sub


    Protected Sub quantity_TextChanged(sender As Object, e As EventArgs)
        For Each row As GridViewRow In CartDesc.Rows
            If (row.RowType.Equals(DataControlRowType.DataRow)) Then
                Dim txt As TextBox = row.FindControl("quantity")
                BindGrid(CInt(txt.Text))
            End If
        Next

    End Sub
End Class