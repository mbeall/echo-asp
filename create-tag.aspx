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
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="tag_id_PK" DataSourceID="ods_tags" GroupItemCount="3">
        <AlternatingItemTemplate>
            <td runat="server" style="">
                <asp:Label ID="tag_id_PKLabel1" runat="server" hidden='<%# Eval("tag_id_PK") %>' 
                       Text='<%# Eval("tag_name") %>' 
                       forcolor='<%# Eval("tag_color") %>'
                       backcolor='<%# Eval("tag_bg") %>'/>/>
              <%--  <br />tag_name:
                <asp:Label ID="tag_nameLabel" runat="server" Text='<%# Eval("tag_name") %>' />
                <br />tag_color:
                <asp:Label ID="tag_colorLabel" runat="server" Text='<%# Eval("tag_color") %>' />
                <br />tag_bg:
                <asp:Label ID="tag_bgLabel" runat="server" Text='<%# Eval("tag_bg") %>' />
                <br />--%>
                   </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="">tag_id_PK:
                <asp:Label ID="tag_id_PKLabel2" runat="server" Text='<%# Eval("tag_id_PK") %>' />
                <br />tag_name:
                <asp:TextBox ID="tag_nameTextBox1" runat="server" Text='<%# Bind("tag_name") %>' />
                <br />tag_color:
                <asp:TextBox ID="tag_colorTextBox1" runat="server" Text='<%# Bind("tag_color") %>' />
                <br />tag_bg:
                <asp:TextBox ID="tag_bgTextBox1" runat="server" Text='<%# Bind("tag_bg") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <br />
                <asp:Button ID="CancelButton1" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /></td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
<td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server"></td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">tag_name:
                <asp:TextBox ID="tag_nameTextBox2" runat="server" Text='<%# Bind("tag_name") %>' />
                <br />tag_color:
                <asp:TextBox ID="tag_colorTextBox2" runat="server" Text='<%# Bind("tag_color") %>' />
                <br />tag_bg:
                <asp:TextBox ID="tag_bgTextBox2" runat="server" Text='<%# Bind("tag_bg") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /></td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="">tag_id_PK:
                <asp:Label ID="tag_id_PKLabel3" runat="server" Text='<%# Eval("tag_id_PK") %>' />
                <br />tag_name:
                <asp:Label ID="tag_nameLabel3" runat="server" Text='<%# Eval("tag_name") %>' />
                <br />tag_color:
                <asp:Label ID="tag_colorLabel3" runat="server" Text='<%# Eval("tag_color") %>' />
                <br />tag_bg:
                <asp:Label ID="tag_bgLabel3" runat="server" Text='<%# Eval("tag_bg") %>' />
                <br /></td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="">tag_id_PK:
                <asp:Label ID="tag_id_PKLabel4" runat="server" Text='<%# Eval("tag_id_PK") %>' />
                <br />tag_name:
                <asp:Label ID="tag_nameLabel4" runat="server" Text='<%# Eval("tag_name") %>' />
                <br />tag_color:
                <asp:Label ID="tag_colorLabel4" runat="server" Text='<%# Eval("tag_color") %>' />
                <br />tag_bg:
                <asp:Label ID="tag_bgLabel4" runat="server" Text='<%# Eval("tag_bg") %>' />
                <br /></td>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="ods_tags" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="TicketDBTableAdapters.tagsTableAdapter"></asp:ObjectDataSource>
        </div><!--.col-md-6-->
    <%--<?php
    $tags = get_tags();
    foreach ($tags as $tag) {
      echo '<span class="label" style="color:'.get_tag_color($tag).';background:'.get_tag_bg($tag).';">'.get_tag_name($tag).'</span> ';
    }
  ?>--%>
</div><%--<?php

}
else {
  echo '<div class="col-xs-12"><h2> You need to be logged in to create a tag.</h2></div>';
} ?>--%>
</Form>
</asp:Content>

