<%@ Page Title="" Language="C#" MasterPageFile="~/template.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head_title" Runat="Server">Profile
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="page_title" Runat="Server">Profile
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="entry_title" Runat="Server">Profile
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="entry_content" Runat="Server">
  <form id="form1" runat="server">
    <asp:Repeater ID="Repeater1" runat="server">
      <ItemTemplate>
        <h2><%# Eval("mod_login_name") %></h2>
        <p><strong>First Name</strong>: <%# Eval("get_mod_first") %></p>
        <p><strong>Last Name</strong>: <%# Eval("get_mod_last") %></p>
        <p><strong>Email</strong>: <%# Eval("get_mod_email") %></p>
      </ItemTemplate>
    </asp:Repeater>

  <p>
    <input type="hidden" name="profile" value="$moderator->mod_id_PK">
    <input class="btn btn-default" type="submit"  value="Edit Profile" name="edit-profile" />
  </p>
  </form>
</asp:Content>

