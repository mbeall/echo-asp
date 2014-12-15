<%@ Page Title="" Language="C#" MasterPageFile="~/template.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<asp:content ID="Content1" ContentPlaceHolderID="head_title" Runat="Server">Profile
</asp:content>
<asp:content ID="Content2" ContentPlaceHolderID="page_title" Runat="Server">Profile
</asp:content>
<asp:content ID="Content3" ContentPlaceHolderID="entry_title" Runat="Server">Profile
</asp:content>
<asp:content ID="Content4" ContentPlaceHolderID="entry_content" Runat="Server">
  <form id="frm_profile" runat="server">
    <asp:objectdatasource id="ods_profile" runat="server" oldvaluesparameterformatstring="original_{0}" selectmethod="get_moderator" typename="TicketDBTableAdapters.moderatorsTableAdapter">
      <selectparameters>
        <asp:querystringparameter name="mod_id" querystringfield="mod_id" type="Int32" />
      </selectparameters>
    </asp:objectdatasource>
    <div class="row">
      <div class="col-xs-6">
        <asp:repeater id="rep_profile" runat="server" datasourceid="ods_profile">
          <itemtemplate>
            <h2><asp:label id="mod_login_name" runat="server" text='<%# Eval("mod_login_name") %>' /></h2>
            <p><strong>Name</strong>: <asp:label id="mod_first" runat="server" text='<%# Eval("mod_first") %>' /> <asp:label id="mod_last" runat="server" text='<%# Eval("mod_last") %>' /></p>
            <p><strong>Email</strong>: <asp:label id="mod_email" runat="server" text='<%# Eval("mod_email") %>' /></p>
          </itemtemplate>
        </asp:repeater>
      </div>
    </div><!-- .row -->
  </form>
</asp:content>

