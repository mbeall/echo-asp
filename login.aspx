<%@ Page Title="" Language="C#" MasterPageFile="~/template.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head_title" Runat="Server">Login
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="page_title" Runat="Server">Login
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="entry_title" Runat="Server">Login
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="entry_content" Runat="Server">
  <form role="form" action="profile.aspx" method="post" runat="server">
    <div class="row">
    <div class="col-md-3">
  <div class="form-group">
  <asp:Login ID="Login1" runat="server" DisplayRememberMe="False"></asp:Login>
    </div>
       </div><!-- .col-md-3-->
    </div>
  <!-- .row -->
    </form>
</asp:Content>

