Option Strict On

Imports TicketDB
Imports TicketDBTableAdapters

Partial Class SignIn
    Inherits System.Web.UI.Page

  Protected Sub Login1_Authenticate(sender As Object, e As AuthenticateEventArgs) Handles Login1.Authenticate
    Using aAdapter As New moderatorsTableAdapter

      Dim aTable As moderatorsDataTable

    

      aTable = aAdapter.GetDataByCredentials(Login1.UserName, Login1.Password)

     

      If aTable.Rows.Count = 1 Then

        

        Dim intPK As Integer = Convert.ToInt32((aTable.Rows(0).Item("mod_id_pk")))
        Dim strFirstName As String = aTable.Rows(0).Item("mod_first").ToString
        Dim strLastName As String = aTable.Rows(0).Item("mod_last").ToString

        

        Dim VisitorInfo As New Hashtable

        

        With VisitorInfo
          .Add("mod_id_pk", intPK)
          .Add("mod_first", strFirstName)
          .Add("mod_last", strLastName)
        End With

       

        Session.Add("Visitor", VisitorInfo)


        If Request.QueryString("ReturnURL") <> String.Empty Then
          

          FormsAuthentication.RedirectFromLoginPage(strFirstName, False)
        Else
          
          FormsAuthentication.SetAuthCookie(strFirstName, False)
          Response.Redirect("profile.aspx")
        End If
      End If
    End Using
  End Sub
End Class
