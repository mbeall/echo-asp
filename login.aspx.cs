using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using TicketDBTableAdapters;

public partial class login : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
  {
  }
  protected void login_login_Authenticate(object sender, AuthenticateEventArgs e)
  {
    string login_name = login_login.UserName;
    string pass = login_login.Password;

    moderatorsTableAdapter mod_adapter = new moderatorsTableAdapter();
    using (mod_adapter)
    {
      TicketDB.moderatorsDataTable moderators = new TicketDB.moderatorsDataTable();
      moderators = mod_adapter.get_authenticated_moderator(login_name, pass);

      if (moderators.Rows.Count != 0)
      {

        int mod_id = Convert.ToInt32(moderators.Rows[0].ItemArray[0]);
        string mod_login_name = Convert.ToString(moderators.Rows[0].ItemArray[1]);

        Hashtable moderator = new Hashtable();
        moderator.Add("mod_id", mod_id);
        moderator.Add("mod_login_name", mod_login_name);

        Session.Add("Moderator", moderator);
        Session.Add("mod_id", mod_id);

        if (moderators.Rows.Count < 0)
        {
          Response.Redirect("~/admin/profile.aspx");
        }
        else
        if (Request.QueryString["ReturnURL"] != string.Empty)
        {
          FormsAuthentication.RedirectFromLoginPage(mod_login_name, false);
        }
        else
        {
          FormsAuthentication.SetAuthCookie(mod_login_name, false);
          Response.Redirect("~/index.aspx");
        }
      }
    }
  }
}