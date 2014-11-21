<%@ Page Title="" Language="C#" MasterPageFile="~/template.master" AutoEventWireup="true" CodeFile="edit-profile.aspx.cs" Inherits="edit_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head_title" Runat="Server">Edit Profile
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="page_title" Runat="Server">Edit Profile
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="entry_title" Runat="Server">Edit Profile
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="entry_content" Runat="Server">
<form role="form" action="edit-profile.aspx" method="post">
  <input type="hidden" value='<%# Eval("mod_id_PK") %>'>
   <div class="row">
    <div class="col-md-3">
  <div class="form-group">
    <label for="mod_login_name">Username</label>
    <p class="text-muted" id="mod_login_name"></p>
  </div>
   </div><!-- .col-md-3-->
    </div><!-- .row -->
  <div class="row">
    <div class="col-md-3">
  <div class="form-group">
    <label for="mod_pass">Password</label>
    <input type="password" class="form-control" id="mod_pass" name="mod_pass">
  </div>
       </div><!-- .col-md-3-->
    </div><!-- .row -->
      <div class="row">
    <div class="col-md-3">
  <div class="form-group">
    <label for="mod_first">First Name</label>
    <input type="text" class="form-control" id="mod_first" name="mod_first" value="">
  </div>
       </div><!-- .col-md-3-->
    </div><!-- .row -->
      <div class="row">
    <div class="col-md-3">
  <div class="form-group">
    <label for="mod_last">Last Name</label>
    <input type="text" class="form-control" id="mod_last" name="mod_last" value="">
  </div>
       </div><!-- .col-md-3-->
    </div><!-- .row -->
      <div class="row">
    <div class="col-md-3">
  <div class="form-group">
    <label for="mod_email">Email address</label>
    <input type="email" class="form-control" id="mod_email" name="mod_email" value="" required>
  </div>
       </div><!-- .col-md-3-->
    </div><!-- .row -->
  <button type="submit" class="btn btn-primary">Submit</button>
  <button type="reset" class="btn btn-default">Undo Changes</button>
</form>
</asp:Content>

