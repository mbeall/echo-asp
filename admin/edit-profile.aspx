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
      <asp:objectdatasource id="ods_profile" runat="server" oldvaluesparameterformatstring="original_{0}" selectmethod="get_moderator" typename="TicketDBTableAdapters.moderatorsTableAdapter" UpdateMethod="update_moderator">
      <selectparameters>
        <asp:sessionparameter name="mod_id" sessionfield="mod_id" type="Int32" />
      </selectparameters>
          <UpdateParameters>
              <asp:Parameter Name="mod_login_name" Type="String" />
              <asp:Parameter Name="mod_pass" Type="String" />
              <asp:Parameter Name="mod_email" Type="String" />
              <asp:Parameter Name="mod_first" Type="String" />
              <asp:Parameter Name="mod_last" Type="String" />
              <asp:Parameter Name="Original_mod_id_PK" Type="Int32" />
          </UpdateParameters>
    </asp:objectdatasource>
  <asp:FormView ID="profile_Form_View" runat="server" DataKeyNames="mod_id_PK" DataSourceID="ods_profile" BorderStyle="None" DefaultMode="Edit">
        <EditItemTemplate>
          <br />
            UserName:
           <asp:TextBox ID="mod_login_nameTextBox" runat="server" CssClass="form-control" Text='<%# Bind("mod_login_name") %>' ReadOnly="True" />
          <br />
            Password: <asp:TextBox ID="mod_passTextBox" runat="server"  CssClass="form-control" Text='<%# Bind("mod_pass") %>'></asp:TextBox>
          <br />
            First Name: <asp:TextBox ID="mod_firstTextBox" runat="server"  CssClass="form-control" Text='<%# Bind("mod_first") %>'></asp:TextBox>
          <br />
            Last Name:
          <asp:TextBox ID="mod_lastTextBox" runat="server"  CssClass="form-control" Text='<%# Bind("mod_last") %>'></asp:TextBox>
            <br />
            Email:
            <asp:TextBox ID="Email1" runat="server"  CssClass="form-control" Text='<%# Bind("mod_email") %>' /><asp:RequiredFieldValidator ID="email_required_field_validator" runat="server" ErrorMessage="Email is a Required Field" Text="*" ControlToValidate="Email1"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="email_edit_validator" runat="server" ErrorMessage="Please make sure your email is in the correct format. Ex.someone@xxx.xxx" ValidationExpression='\b[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}\b' ControlToValidate ="Email1" Visible="True" Text="*"></asp:RegularExpressionValidator>
          <br />

            <asp:LinkButton ID="Done" runat="server" Text="Done" PostBackUrl="~/index.aspx" CssClass="btn btn-primary"> </asp:LinkButton>
          &nbsp;<asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" class="btn btn-default"/>
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" class="btn btn-default"/>

</EditItemTemplate>


          <InsertItemTemplate>
              mod_login_name:
              <asp:TextBox ID="mod_login_nameTextBox" runat="server" CssClass="form-control" Text='<%# Bind("mod_login_name") %>' ReadOnly="True" />
              <br />
              mod_pass:
              <asp:TextBox ID="mod_passTextBox" runat="server" CssClass="form-control" Text='<%# Bind("mod_pass") %>' />
              <br />
              mod_email:
              <asp:TextBox ID="Email1" runat="server" CssClass="form-control" Text='<%# Bind("mod_email") %>' /><asp:RequiredFieldValidator ID="email_required_field_validator" runat="server" ErrorMessage="Email is a Required Field" Text="*" ControlToValidate="Email1"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="email_edit_validator" runat="server" ErrorMessage="Please make sure your email is in the correct format. Ex.someone@xxx.xxx" ValidationExpression='\b[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}\b' ControlToValidate ="Email1" Visible="True" Text="*"></asp:RegularExpressionValidator>
              <br />
              mod_first:
              <asp:TextBox ID="mod_firstTextBox" runat="server" CssClass="form-control" Text='<%# Bind("mod_first") %>' />
              <br />
              mod_last:
              <asp:TextBox ID="mod_lastTextBox" runat="server" CssClass="form-control" Text='<%# Bind("mod_last") %>' />
              <br />
              <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" class="btn btn-primary"/>
              &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" class="btn btn-primary"/>
        </InsertItemTemplate>
        <ItemTemplate>
            <br />
            UserName:
            <asp:Label ID="mod_login_nameLabel" runat="server" CssClass="form-control" Text='<%# Bind("mod_login_name") %>' ReadOnly="True" />
            <br />
            Password:
            <asp:Label ID="mod_passLabel" runat="server" CssClass="form-control" Text='<%# Bind("mod_pass") %>' />
            <br />
            First Name:
            <asp:Label ID="mod_firstLabel" runat="server" CssClass="form-control" Text='<%# Bind("mod_first") %>' />
            <br />
            Last Name:
            <asp:Label ID="mod_lastLabel" runat="server" CssClass="form-control" Text='<%# Bind("mod_last") %>' />
            <br />
            Email:
            <asp:Label ID="Email1" runat="server" CssClass="form-control"  Text='<%# Bind("mod_email") %>' /><asp:RequiredFieldValidator ID="email_required_field_validator" runat="server" ErrorMessage="Email is a Required Field" Text="*" ControlToValidate="Email1"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="email_edit_validator" runat="server" ErrorMessage="Please make sure your email is in the correct format. Ex.someone@xxx.xxx" ValidationExpression='\b[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}\b' ControlToValidate ="Email1" Visible="True" Text="*"></asp:RegularExpressionValidator>
            <br />
        </ItemTemplate>


          </asp:FormView>
      <div class="col-md-6">
        <br />

            &nbsp;
        </div>

          </div>

    </div>
  <p><asp:Label ID="change_submit" runat="server" /></p>
</form>
</asp:Content>


