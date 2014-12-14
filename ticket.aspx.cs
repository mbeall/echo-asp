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
      priority.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      if (String.IsNullOrEmpty(Request.QueryString["tkt_id_pk"]))
      {

        //ticket_name.DefaultMode = (FormViewMode.Insert);
      }
      else
      {
       // description.DefaultMode = (FormViewMode.Edit);
        TextBox1.Text = "Thank you for submitting a ticket.";
      }
    }
}
