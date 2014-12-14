using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class template : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
      HyperLink1.Text = "Login";
      HyperLink1.NavigateUrl = "~/login.aspx";
      if (HttpContext.Current.User.Identity.IsAuthenticated)
      {
      HyperLink1.Text = "Welcome, Logout";
      HyperLink1.NavigateUrl = "~/logout.aspx";
      }
    }
}
