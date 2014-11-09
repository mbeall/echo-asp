<%@ Page Title="" Language="C#" MasterPageFile="~/template.master" AutoEventWireup="true" CodeFile="create-tag.aspx.cs" Inherits="create_tag" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head_title" Runat="Server">Create Tag
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="page_title" Runat="Server">Create Tag
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="entry_title" Runat="Server">Create Tag
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="entry_content" Runat="Server">
<%--<?php if (is_logged_in()) { ?>

<form class="col-md-6" action="create-tag.php" method="post" name="create_tag" id="create_tag">
  <div class="form-group">
    <label for="tag_name">Tag Name</label>
    <input class="form-control" type="text" name="tag_name" id="tag_name" maxlength="32">
  </div><!-- .form-group -->

  <div class="form-group">
    <label for="tag_color">Tag Color</label>

    <div class="input-group">
      <div class="input-group-addon">#</div>
      <input class="form-control" type="text" name="tag_color" id="tag_color" pattern="[a-fA-F0-9]"  maxlength="6" value="ffffff">
    </div><!-- .input-group -->
  </div><!-- .form-group -->

  <div class="form-group">
    <label for="tag_bg">Tag Background</label>

    <div class="input-group">
      <div class="input-group-addon">#</div>
      <input class="form-control" type="text" name="tag_bg" id="tag_bg" pattern="[a-fA-F0-9]"  maxlength="6" value="777777">
    </div><!-- .input-group -->
  </div><!-- .form-group -->

  <p>
    <input class="btn btn-primary" type="submit" value="Submit">
    <a class="btn btn-default" href="index.php">Cancel</a>
  </p>
</form>

<div class="col-md-6">
  <?php
    $tags = get_tags();
    foreach ($tags as $tag) {
      echo '<span class="label" style="color:'.get_tag_color($tag).';background:'.get_tag_bg($tag).';">'.get_tag_name($tag).'</span> ';
    }
  ?>
</div><?php

}
else {
  echo '<div class="col-xs-12"><h2> You need to be logged in to create a tag.</h2></div>';
} ?>--%>
</asp:Content>

