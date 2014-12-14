<%@ Page Title="" Language="C#" MasterPageFile="~/template.master" AutoEventWireup="true" CodeFile="edit-profile.aspx.cs" Inherits="edit_profile"   %>



<asp:Content ID="Content1" ContentPlaceHolderID="head_title" Runat="Server">Edit Profile
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="page_title" Runat="Server">Edit Profile
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="entry_title" Runat="Server">Edit Profile
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="entry_content" Runat="Server">
  <form role="form" action="edit-profile.aspx" method="post" id="frm_profile" runat="server">
    <asp:objectdatasource id="ods_profile" runat="server" oldvaluesparameterformatstring="original_{0}" selectmethod="get_moderator" typename="TicketDBTableAdapters.moderatorsTableAdapter">
      <selectparameters>
        <asp:sessionparameter name="mod_id" sessionfield="mod_id" type="Int32" />
      </selectparameters>
    </asp:objectdatasource>
    <div class="row">
      <div class="col-xs-6">
        <asp:repeater id="rep_profile" runat="server" datasourceid="ods_profile">
          <itemtemplate>
             <input type="hidden" value='<%# Eval("mod_id_PK") %>'>
   <div class="row">
    <div class="col-md-3">
  <div class="form-group">
    <label for="mod_login_name">Username: </label>
    <asp:label id="mod_login_name" runat="server" text='<%# Eval("mod_login_name") %>' Font-Size="X-Large" />
    <p class="text-muted" id="P1"></p>
  </div>
   </div><!-- .col-md-3-->
    </div><!-- .row -->
       <div class="row">
    <div class="col-md-6">
  <div class="form-group">
    <p><strong> Password</strong>: </p>
    <input type="password" class="form-control" id="mod_pass" name="mod_pass">
  </div>
       </div><!-- .col-md-6-->
    </div><!-- .row -->
               <div class="row">
    <div class="col-md-6">
  <div class="form-group">
     <p><strong> First Name</strong>: </p>
    <input type="text" class="form-control" id="Text1" name="mod_first" value="<%# Eval("mod_first") %>">
  </div>
       </div><!-- .col-md-6-->
    </div><!-- .row -->
         <div class="row">
    <div class="col-md-6">
  <div class="form-group">
    <p><strong> Last Name</strong>: </p>
    <input type="text" class="form-control" id="Text2" name="mod_first" value="<%# Eval("mod_last") %>">
  </div>
       </div><!-- .col-md-6-->
    </div><!-- .row -->
              <div class="row">
    <div class="col-md-12">
  <div class="form-group">
    <p><strong>Email</strong>: </p>
    <input type="email" class="form-control" id="Email1" name="mod_email" value="<%# Eval("mod_email") %>" pattern="\b[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}\b" title="Valid email address" required>
  </div>
       </div><!-- .col-md-12-->
    </div><!-- .row -->
          </itemtemplate>
        </asp:repeater>
      </div>
    </div><!-- .row -->
  <asp:button runat="server" text="Submit" ID="submit" OnClick="Unnamed1_Click" CssClass="btn btn-primary" ></asp:button>
  <asp:button runat="server" text="Undo Changes" ID="undo_changes" CssClass="btn btn-primary" PostBackUrl="~/admin/edit-profile.aspx"></asp:button>
    <p><asp:Label ID="change_submit" runat="server" /></p>
</form>
</asp:Content>

