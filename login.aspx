<%@ Page Title="" Language="C#" MasterPageFile="~/template.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head_title" Runat="Server">Login
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="page_title" Runat="Server">Login
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="entry_title" Runat="Server">Login
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="entry_content" Runat="Server">
<form role="form" action="login.php" method="post">
  <div class="form-group">
    <label for="mod_login_name">Username</label>
    <input type="text" class="form-control" id="mod_login_name" name="mod_login_name" placeholder="Username">
  </div>
  <div class="form-group">
    <label for="mod_pass">Password</label>
    <input type="password" class="form-control" id="mod_pass" name="mod_pass" placeholder="Password">
  </div>
  <button type="submit" class="btn btn-primary">Login</button>
  <a class="btn btn-default" href="register.php">Register</a>
</form>
</asp:Content>

