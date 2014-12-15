using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ticket : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      Label lbl_tkt_created = fv_create_ticket.FindControl("tkt_created") as Label;
      lbl_tkt_created.Text = DateTime.Now.ToString("g");
    }
    protected void fv_create_ticket_success( object sender, FormViewInsertedEventArgs e ) {
      if ( IsValid ) {
        p_success.Visible = true;
      }
    }
}
