using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class edit_profile : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
  {
  }
}
  /*
       *
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        Using aAdapter As New LoginInfoTableAdapter

      'Check if username already exists

      Dim aTable As LoginInfoDataTable = aAdapter.GetDataByUName(UserName.Text)

      'If it does
      If aTable.Rows.Count > 0 Then
        'display error message
        ErrorMessage.Text = "Choose another User Name"
      Else
        'else, create a new user record
        aAdapter.Insert(UserName.Text, Password.Text, FullName.Text, "User")
        'redirect  to sign in page
        Response.Redirect("~/SignIn.aspx")
      End If
    End Using
      string name = TxtName.Text; // Scrub user data

      string connString = ConfigurationManager.ConnectionStrings["yourconnstringInWebConfig"].ConnectionString;
      SqlConnection conn = null;
      try
      {
        conn = new SqlConnection(connString);
        conn.Open();

        using (SqlCommand cmd = new SqlCommand())
        {
          cmd.Conn = conn;
          cmd.CommandType = CommandType.Text;
          cmd.CommandText = "INSERT INTO dummyTable(name) Values (@var)";
          cmd.Parameters.AddWithValue("@var", name);
          int rowsAffected = cmd.ExecuteNonQuery();
          if (rowsAffected == 1)
          {
           "Your changes have been submitted."
          }
          else
          {
            //Error notification
          }
        }
      }
      catch (Exception ex)
      {
        //log error 
        //display friendly error to user
      }
      finally
      {
        if (conn != null)
        {
          //cleanup connection i.e close 
        }
      }
    }*/
 
