<%@ Page Title="" Language="C#" MasterPageFile="~/template.master" AutoEventWireup="true" CodeFile="edit-profile.aspx.cs" Inherits="edit_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head_title" Runat="Server">Edit Profile
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="page_title" Runat="Server">Edit Profile
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="entry_title" Runat="Server">Edit Profile
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="entry_content" Runat="Server">

<Form id="Form1" runat="server">
  <div class="col-md-6">
    <div class="form-group">
      <asp:ValidationSummary ID="profile_Validation_Summary" runat="server" CssClass="alert alert-danger" DisplayMode="List" />
      <asp:objectdatasource id="ods_profile" runat="server" oldvaluesparameterformatstring="original_{0}" selectmethod="get_moderator" typename="TicketDBTableAdapters.moderatorsTableAdapter">
      <selectparameters>
        <asp:sessionparameter name="mod_id" sessionfield="mod_id" type="Int32" />
      </selectparameters>
    </asp:objectdatasource>
  <asp:FormView ID="profile_Form_View" runat="server" DataKeyNames="mod_id_PK" DataSourceID="ods_profile" BorderStyle="None">
        <EditItemTemplate>
          <br />
           <asp:TextBox ID="mod_id_PK" runat="server" visible ="false" Text='<%# Eval("mod_id_PK") %>' controlstyle-cssclass="form-control" /> 
          <br />
          Password:<asp:TextBox ID="mod_pass" runat="server" CssClass="form-control"></asp:TextBox>
          <br />
          First Name:<asp:TextBox ID="mod_first" runat="server" CssClass="form-control" Text='<%# Eval("mod_first") %>'></asp:TextBox>
          <br />
          Last Name:<asp:TextBox ID="mod_last" runat="server" CssClass="form-control" Text='<%# Eval("mod_last") %>'></asp:TextBox>
          <br />
          Email:<asp:RequiredFieldValidator ID="email_required_field_validator" runat="server" ErrorMessage="Email is a Required Field" Text="*" ControlToValidate="Email1"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="email_edit_validator" runat="server" ErrorMessage="Please make sure your email is in the correct format. Ex.someone@xxx.xxx" ValidationExpression='\b[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}\b' ControlToValidate ="Email1" Visible="True" Text="*"></asp:RegularExpressionValidator>
          <asp:TextBox ID="Email1" runat="server" CssClass="form-control" Text='<%# Eval("mod_email") %>'></asp:TextBox>
          <br />
         
</EditItemTemplate>
   
    
          </asp:FormView>
      <div class="col-md-6">
      <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ods_profile">
      <ItemTemplate>
          <asp:TextBox ID="mod_id_PK" runat="server" visible ="false" Text='<%# Eval("mod_id_PK") %>' controlstyle-cssclass="form-control" /> 
          Username:
          <br />
          <asp:label id="mod_login_name" runat="server" text='<%# Eval("mod_login_name") %>' Font-Size="X-Large" controlstyle-cssclass="form-control" CssClass="text-muted"/>
          <br />
          <br />
          Password:<asp:TextBox ID="mod_pass" runat="server" CssClass="form-control"></asp:TextBox>
          <br /> 
          First Name:<asp:TextBox ID="mod_first" runat="server" CssClass="form-control" Text='<%# Eval("mod_first") %>'></asp:TextBox>
          <br />
          Last Name:<asp:TextBox ID="mod_last" runat="server" CssClass="form-control" Text='<%# Eval("mod_last") %>'></asp:TextBox>
          <br />
          Email:<asp:TextBox ID="Email1" runat="server" CssClass="form-control" Text='<%# Eval("mod_email") %>'></asp:TextBox><asp:RequiredFieldValidator ID="email_required_field_validator" runat="server" ErrorMessage="Email is a Required Field" Text="*" ControlToValidate="Email1"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="email_edit_validator" runat="server" ErrorMessage="Please make sure your email is in the correct format. Ex.someone@xxx.xxx" ValidationExpression='\b[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}\b' ControlToValidate ="Email1" Visible="True" Text="*"></asp:RegularExpressionValidator>
      </ItemTemplate>
      </asp:Repeater>
        <br />

        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" class="btn btn-primary"  />
            &nbsp;
        <asp:LinkButton ID="UndoChanges" runat="server" CausesValidation="False" CommandName="UndoChanges" Text="Undo Changes" class="btn btn-primary"  PostBackUrl="~/admin/edit-profile.aspx" />
    </div>
      
          </div>
    
    </div>
  <p><asp:Label ID="change_submit" runat="server" /></p> 
</form>
</asp:Content>

