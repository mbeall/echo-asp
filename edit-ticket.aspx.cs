using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class edit_ticket : System.Web.UI.Page
{
  private static ObjectDataSource edb = new ObjectDataSource("TicketDBTableAdapters.ticketsTableAdapter","get_ticket");

  public int tkt_id_PK;
  public string tkt_name;
  public string tkt_desc;
  public string tkt_created;

    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
}