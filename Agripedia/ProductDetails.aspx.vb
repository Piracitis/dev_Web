
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
            item_display.Src = "images/" + cropname + ".jpg"
            Display(cropname)
            Session("cropname") = cropname
        Else
            Dim path As String = HttpContext.Current.Request.Url.AbsolutePath
            Dim url As String = path.Substring(path.IndexOf("aspx") + 4)
            If (url.Contains("aspx")) Then
                Response.Redirect(url)
            End If
        End If

    End Sub

    Protected Sub Display(ByVal cropname As String)
        Dim constr As String = ConfigurationManager.ConnectionStrings("conStr").ConnectionString
        Dim uCommd As String = "select * from CropDetails where Crop_name=@crop", cCommd As String = "select * from CropPrice where Crop_name=@crop"
        Using con As New SqlConnection(constr)
            Dim cmdObj As New SqlClient.SqlCommand(uCommd, con)
            Dim obj2 As New SqlClient.SqlCommand(cCommd, con)
            con.Open()

            cmdObj.Parameters.Add("@crop", SqlDbType.NChar, 20).Value = cropname
            obj2.Parameters.Add("@crop", SqlDbType.NChar, 20).Value = cropname

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

            Using reader As SqlClient.SqlDataReader = obj2.ExecuteReader
                reader.Read()

                product_title.Text = reader("Crop_name").ToString
                price.Text = reader("Price").ToString
                shortDesc.Text = reader("Description").ToString


            End Using


            con.Close()

        End Using

    End Sub


    Protected Sub cart_Click(sender As Object, e As EventArgs)
        Try
            Dim aCookie As HttpCookie = HttpContext.Current.Request.Cookies("guid")
            aCookie.Item("Cart") = "True"
            Dim cropname As String = ""
            If (Request.QueryString("cropname") IsNot Nothing) Then
                cropname = Request.QueryString("cropname")
            End If
            Dim prices As Integer = 50
            Dim constr As String = ConfigurationManager.ConnectionStrings("conStr").ConnectionString
            Dim cCommd As String = "Select cropname from anonyCart where cropname=@crop"
            Dim uCommd As String = "Insert into anonyCart values (@crop,@quantity,@cookie,@price)"
            Dim update As String = "Update anonyCart set quantity= quantity + 1 where cropname=@crop"
            Dim news As String = "Select Price from CropPrice where crop_name=@crop"
            Dim con As New SqlConnection(constr)
            Dim insert As New SqlClient.SqlCommand(uCommd, con), getValues As New SqlClient.SqlCommand(cCommd, con), updateQuer As New SqlClient.SqlCommand(update, con), getPrice As New SqlClient.SqlCommand(news, con)

            con.Open()
            getValues.Parameters.Add("@crop", SqlDbType.NChar, 20).Value = cropname
            updateQuer.Parameters.Add("@crop", SqlDbType.NChar, 20).Value = cropname
            Dim obj2 As SqlDataReader = getValues.ExecuteReader()
            If (obj2.Read()) Then
                con.Close()
                con.Open()
                updateQuer.ExecuteScalar()
                MsgBox("update")

            Else
                MsgBox("insert")
                con.Close()
                con.Open()
                getPrice.Parameters.Add("@crop", SqlDbType.NChar, 20).Value = cropname
                Dim obj As SqlDataReader = getPrice.ExecuteReader()
                obj.Read()
                prices = CInt(obj("Price"))

                con.Close()
                con.Open()

                insert.Parameters.Add("@crop", SqlDbType.NChar, 20).Value = cropname
                insert.Parameters.Add("@quantity", SqlDbType.Int).Value = 1
                insert.Parameters.Add("@cookie", SqlDbType.NChar, 50).Value = aCookie.Value
                insert.Parameters.Add("@price", SqlDbType.NChar, 50).Value = prices
                insert.ExecuteScalar()
            End If

            con.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub

    Protected Sub wishlist_Click(sender As Object, e As EventArgs)
        If (Not Session("LoggedIn") = "True") Then

        End If
    End Sub
End Class