using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class edit_ticket : System.Web.UI.Page {
  protected void Page_Load(object sender, EventArgs e) {
    if (Session["mod_id"] != null) {
      if (Session["tkt_id"] == null) {
        //User is logged in, but no ticket specified
        Response.Redirect("browse.aspx");
      }
    }
    else{
      //No one is logged in
      Response.Redirect("index.aspx");
    }
  }
}
