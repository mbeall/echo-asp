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

  protected void fv_edit_profile_success( object sender, FormViewUpdatedEventArgs e ) {
    if ( IsValid ) {
      p_success.Visible = true;
    }
  }

}


