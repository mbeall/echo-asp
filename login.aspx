<%@ Page Title="" Language="C#" MasterPageFile="~/template.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:content ID="Content1" ContentPlaceHolderID="head_title" Runat="Server">Login
</asp:content>
<asp:content ID="Content2" ContentPlaceHolderID="page_title" Runat="Server">Login
</asp:content>
<asp:content ID="Content3" ContentPlaceHolderID="entry_title" Runat="Server">Login
</asp:content>
<asp:content ID="Content4" ContentPlaceHolderID="entry_content" Runat="Server">
  <form id="frm_login" runat="server">
    <div class="row">
      <div class="col-xs-6">
        <asp:login id="login_login" runat="server" displayrememberme="False" failuretext="Invalid credentials." onauthenticate="login_login_Authenticate"></asp:login>
      </div>
    </div><!-- .row -->
  </form>
</asp:content>

