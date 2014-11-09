<%@ Page Title="" Language="C#" MasterPageFile="~/template.master" AutoEventWireup="true" CodeFile="edit-profile.aspx.cs" Inherits="edit_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head_title" Runat="Server">Edit Profile
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="page_title" Runat="Server">Edit Profile
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="entry_title" Runat="Server">Edit Profile
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="entry_content" Runat="Server">
<%--<form role="form" action="edit-profile.php" method="post">
  <input type="hidden" value="<?php echo $mod_id_PK; ?>">
  <div class="form-group">
    <label for="mod_login_name">Username</label>
    <p class="text-muted" id="mod_login_name"><?php echo $mod_login_name; ?></p>
  </div>
  <div class="form-group">
    <label for="mod_pass">Password</label>
    <input type="password" class="form-control" id="mod_pass" name="mod_pass">
  </div>
  <div class="form-group">
    <label for="mod_first">First Name</label>
    <input type="text" class="form-control" id="mod_first" name="mod_first" value="<?php echo $mod_first; ?>">
  </div>
  <div class="form-group">
    <label for="mod_last">Last Name</label>
    <input type="text" class="form-control" id="mod_last" name="mod_last" value="<?php echo $mod_last; ?>">
  </div>
  <div class="form-group">
    <label for="mod_email">Email address</label>
    <input type="email" class="form-control" id="mod_email" name="mod_email" value="<?php echo $mod_email; ?>" required>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
  <button type="reset" class="btn btn-default">Reset</button>
</form>--%>
</asp:Content>

