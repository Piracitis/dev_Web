
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration

Public Class MarketInformation
    Inherits System.Web.UI.Page

    Dim dataAdapter As SqlDataAdapter

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load, lstBox_sort.SelectedIndexChanged


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


        If Not Me.IsPostBack Then
            Me.BindGrid()
        End If

    End Sub

    Private Sub BindGrid()
        Dim constr As String = ConfigurationManager.ConnectionStrings("conStr").ConnectionString
        Using con As New SqlConnection(constr)
            Dim prevYear As String = "MSP_2015", currYear As String = "MSP_2016"

            If (lstBox_year.SelectedIndex = 1) Then
                prevYear = "MSP_2014"
                currYear = "MSP_2015"

            ElseIf (lstBox_year.SelectedIndex = 2) Then
                prevYear = "MSP_2013"
                currYear = "MSP_2014"

            ElseIf (lstBox_year.SelectedIndex = 3) Then
                prevYear = "MSP_2012"
                currYear = "MSP_2013"
            Else
                prevYear = "MSP_2015"
                currYear = "MSP_2016"
            End If

            Dim commd As String = "Select Commodity, Variety, " + prevYear + ", " + currYear + " FROM MarketInfo"
            If (lstBox_sort.SelectedIndex = 0) Then
                commd = commd + "ORDER BY " + currYear
            ElseIf (lstBox_sort.SelectedIndex = 1) Then
                commd = commd + "ORDER BY Commodity "
            Else
                commd = commd
            End If
            Using cmd As New SqlCommand(commd)
                Using sda As New SqlDataAdapter()
                    cmd.Connection = con
                    sda.SelectCommand = cmd
                    Using dt As New DataTable()
                        sda.Fill(dt)
                        dt.Columns.Add("Increase")
                        Dim str As String = ""
                        For Each i As DataRow In dt.Rows
                            If (Not str.Equals("")) Then
                                If (i.Item("Commodity").Equals(str)) Then
                                    i.Item("Commodity") = ""
                                Else
                                    str = i.Item("Commodity")
                                End If
                            Else
                                str = i.Item("Commodity")
                            End If
                            i.Item("Increase") = CInt(i.Item(currYear)) - CInt(i.Item(prevYear))
                        Next
                        GridView1.DataSource = dt
                        GridView1.DataBind()
                        GridView1.HeaderRow.TableSection = TableRowSection.TableHeader
                        GridView1.UseAccessibleHeader = True

                    End Using
                End Using
            End Using
        End Using

    End Sub

End Class