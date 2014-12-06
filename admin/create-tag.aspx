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
     <asp:RequiredFieldValidator ID="tag_name_validator" runat="server" ErrorMessage="Just kidding it's really this one" ControlToValidate="tag_name">
     </asp:RequiredFieldValidator>
  </div><!-- .form-group -->

  <div class="form-group">
     <asp:Label ID="tag_color_label" runat="server" Text="Tag Color"></asp:Label>
     <div class="input-group">
      <div class="input-group-addon">#</div>
        <asp:TextBox ID="tag_color" runat="server" CssClass="form-control" maxlength="6" Text="ffffff" ValidationExpression="[a-fA-F0-9]"></asp:TextBox>
       <asp:RegularExpressionValidator ID="tag_color_validator" runat="server" ErrorMessage="It's this one" ControlToValidate="tag_color"></asp:RegularExpressionValidator>
    </div><!-- .input-group -->
  </div><!-- .form-group -->
 
  <div class="form-group">
      <asp:Label ID="tag_bg_label" runat="server" Text="Tag Background"></asp:Label>

    <div class="input-group">
      <div class="input-group-addon">#</div>
        <asp:TextBox ID="tag_bg" runat="server" CssClass="form-control"  maxlength="6" Text="777777"></asp:TextBox>
        <asp:RegularExpressionValidator ID="tag_bg_validator" runat="server" ErrorMessage="No It's this one" ValidationExpression="[a-fA-F0-9]" ControlToValidate="tag_bg"></asp:RegularExpressionValidator>

    </div><!-- .input-group -->
  </div><!-- .form-group -->

  <p>
      <asp:Button ID="submit" runat="server" Text="Submit" CssClass="btn btn-primary"/>
      <a class="btn btn-default" href="index.php">Cancel</a>
 </p>
</div>
    <div class="col-md-6">
      <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ods_tags">
      <ItemTemplate>
        <asp:Label ID="tag_name" runat="server" Text='<%# Eval("tag_name") %>' BackColor='<%# System.Drawing.Color.FromName(Eval("tag_bg").ToString()) %>' ForeColor='<%# System.Drawing.Color.FromName(Eval("tag_color").ToString()) %>' CssClass="label"></asp:Label>
      </ItemTemplate>
      </asp:Repeater>
      <asp:ObjectDataSource ID="ods_tags" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="TicketDBTableAdapters.tagsTableAdapter"></asp:ObjectDataSource>
    </div>
  <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
    <!--.col-md-6-->
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

