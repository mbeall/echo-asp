<%@ Page Title="" Language="C#" MasterPageFile="~/template.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head_title" Runat="Server">Login
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="page_title" Runat="Server">Login
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="entry_title" Runat="Server">Login
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="entry_content" Runat="Server">
<%-- 
  get_moderator
  get_moderator_login_name
  get_moderator_pass
  get_moderator_first
  get_moderator_last
  get_moderator_data--%>
<form role="form" action="profile.aspx" method="post">
  <div class="row">
    <div class="col-md-3">
  <div class="form-group">
    <label for="mod_login_name">Username</label>
    <input type="text" class="form-control" id="mod_login_name" name="mod_login_name" placeholder="Username">
  </div>
       </div><!-- .col-md-3-->
    </div><!-- .row -->
  <div class="row">
    <div class="col-md-3">
  <div class="form-group">
    <label for="mod_pass">Password</label>
    <input type="password" class="form-control" id="mod_pass" name="mod_pass" placeholder="Password">
  </div>
       </div><!-- .col-md-3-->
    </div><!-- .row -->
  <!--<asp:Login ID="Login" runat="server" OnAuthenticate="Login_Authenticate"></asp:Login>-->
  <button type="submit" value="Profile" name="profile" class="btn btn-primary">Login</button>
</form>
</asp:Content>

