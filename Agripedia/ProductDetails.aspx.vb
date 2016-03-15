
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration


Public Class ProductDetails
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

        Dim cropname As String = ""
        If (Request.QueryString("cropname") IsNot Nothing) Then
            cropname = Request.QueryString("cropname")
            Display(cropname)
        End If

    End Sub

    Protected Sub Display(ByVal cropname As String)
        Dim constr As String = ConfigurationManager.ConnectionStrings("conStr").ConnectionString
        Dim uCommd As String = "select * from CropDetails where Crop_name='Chilli'"
        Using con As New SqlConnection(constr)
            Using cmdObj As New SqlClient.SqlCommand(uCommd, con)
                con.Open()

                'cmdObj.Parameters.Add("@crop", SqlDbType.NChar, 20).Value = cropname

                Using readerObj As SqlClient.SqlDataReader = cmdObj.ExecuteReader
                    readerObj.Read()
                    'This will loop through all returned records 
                    Label1.Text = readerObj("Crop_name").ToString
                    Label2.Text = readerObj("Variety_Name").ToString
                    Label3.Text = readerObj("Institution").ToString
                    Label4.Text = readerObj("Recom_Ecology").ToString
                    Label5.Text = readerObj("Maturity").ToString
                    Label6.Text = readerObj("Seed_Rate").ToString
                    Label7.Text = readerObj("Morph_Charac").ToString
                    Label8.Text = readerObj("Average_Yield").ToString
                    Label9.Text = readerObj("Fertilizer_Dosage").ToString
                    Label10.Text = readerObj("Spacing").ToString
                    Label11.Text = readerObj("Reac_Diseases").ToString
                    Label12.Text = readerObj("Reac_Pests").ToString
                End Using

            End Using
            con.Close()
        End Using

    End Sub
End Class