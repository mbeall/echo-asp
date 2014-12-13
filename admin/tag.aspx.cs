using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class tag : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
//if there is a query string value for tag Id then set the default property of the form view to updat...if not set the form veiw defaulty to insert
      if (String.IsNullOrEmpty(Request.QueryString["tag_id_pk"]) )
      {

      FormView1.DefaultMode = (FormViewMode.Insert); }
      else
      {
      FormView1.DefaultMode = (FormViewMode.Edit); }

      }
      }