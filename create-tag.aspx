<%@ Page Title="" Language="C#" MasterPageFile="~/template.master" AutoEventWireup="true" CodeFile="create-tag.aspx.cs" Inherits="create_tag" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head_title" Runat="Server">Create Tag
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="page_title" Runat="Server">Create Tag
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="entry_title" Runat="Server">Create Tag
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="entry_content" Runat="Server">
    <%--<?php if (is_logged_in()) { ?>--%>

<Form runat="server">
  <div class="col-md-6" runat="server" id="create_tag_form">
   <div class="form-group">
     <asp:Label ID="tag_name_label" runat="server" Text="Tag Name">Tag Name</asp:Label>
     <asp:TextBox ID="tag_name" cssclass="form-control" runat="server" MaxLength="32"></asp:TextBox>
  </div><!-- .form-group -->

  <div class="form-group">
     <asp:Label ID="tag_color_label" runat="server" Text="Tag Color"></asp:Label>
     <div class="input-group">
      <div class="input-group-addon">#</div>
        <asp:TextBox ID="tag_color" runat="server" CssClass="form-control" pattern="[a-fA-F0-9]"  maxlength="6" value="ffffff"></asp:TextBox>
    </div><!-- .input-group -->
  </div><!-- .form-group -->
 
  <div class="form-group">
      <asp:Label ID="tag_bg_label" runat="server" Text="Tag Background"></asp:Label>

    <div class="input-group">
      <div class="input-group-addon">#</div>
        <asp:TextBox ID="tag_bg" runat="server" CssClass="form-control" pattern="[a-fA-F0-9]"  maxlength="6" value="777777"></asp:TextBox>
    </div><!-- .input-group -->
  </div><!-- .form-group -->

  <p>
      <asp:Button ID="submit" runat="server" Text="Submit" CssClass="btn btn-primary"/>
      <a class="btn btn-default" href="index.php">Cancel</a>
 </p>
</div>
    <div class="col-md-6">
      <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ods_tags">
        <ItemTemplate runat="server">
        <asp:Label runat="server" style = "forecolor:'<%#  DataBinder.Eval(Container.DataItem, "tag_color"); backcolor:DataBinder.Eval(Container.DataItem, "tag_bg") %>"
        Text = '<%#DataBinder.Eval(Container.DataItem, "tag_name") %>' />
        </ItemTemplate>
      </asp:Repeater>
      <asp:ObjectDataSource ID="ods_tags" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="TicketDBTableAdapters.tagsTableAdapter"></asp:ObjectDataSource>
    </div><!--.col-md-6-->
    <%--<?php
    $tags = get_tags();
    foreach ($tags as $tag) {
      echo '<span class="label" style="color:'.get_tag_color($tag).';background:'.get_tag_bg($tag).';">'.get_tag_name($tag).'</span> ';
    }
  ?>--%>
<%--<?php

}
else {
  echo '<div class="col-xs-12"><h2> You need to be logged in to create a tag.</h2></div>';
} ?>--%>
</Form>
</asp:Content>

