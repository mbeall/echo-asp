<%@ Page Title="" Language="C#" MasterPageFile="~/template.master" AutoEventWireup="true" CodeFile="ticket.aspx.cs" Inherits="ticket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head_title" Runat="Server">Create Ticket
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="page_title" Runat="Server">Create Ticket
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="entry_title" Runat="Server">Create Ticket
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="entry_content" Runat="Server">

  <form id="ticket_moderator" class="col-xs-6" runat="server" name="ticket_moderator" >

      <asp:ValidationSummary ID="tkt_validationSummary" runat="server" CssClass="alert alert-danger" DisplayMode="List" />
    <asp:panel id="p_success" runat="server" cssclass="alert alert-success" visible="false"><strong>Ticket saved.</strong></asp:panel>
      <asp:FormView ID="fv_create_ticket" runat="server" DataKeyNames="tkt_id_PK" DataSourceID="ods_get_tickets" DefaultMode="Insert" oniteminserted="fv_create_ticket_success">
          <InsertItemTemplate>
              Ticket Name<asp:RequiredFieldValidator ID="tkt_namerequiredfield" runat="server" ErrorMessage="Please enter in a Ticket Name" Text="*" ControlToValidate="tkt_nameTextBox"></asp:RequiredFieldValidator>
              <asp:TextBox ID="tkt_nameTextBox" maxlength="32" ControlStyle-CssClass="form-control" runat="server" Text='<%# Bind("tkt_name") %>' />
              <br />
              Ticket Description<asp:RequiredFieldValidator ID="tkt_descRequiredField" runat="server" ErrorMessage="Please enter a description of the issue." Text="*" ControlToValidate="tkt_descTextBox"></asp:RequiredFieldValidator>
              <asp:TextBox ID="tkt_descTextBox" ControlStyle-CssClass="form-control" runat="server" Text='<%# Bind("tkt_desc") %>' textmode="MultiLine" />
              <br />
              <%--Date:<asp:RequiredFieldValidator ID="date_requiredfield" runat="server" ErrorMessage="Please enter today's date." Text="*" ControlToValidate="tkt_createdTextBox"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                   ControlToValidate="tkt_createdTextBox" ValidationExpression="^([1-9])|(0[1-9])|(1[0-2])\/(0[1-9]|[1-31])\/(19|20)\d\d$" Display="Dynamic" SetFocusOnError="true" ErrorMessage="Please enter the date as MM/DD/YY" text="*" ></asp:RegularExpressionValidator>
              <asp:TextBox ID="tkt_createdTextBox" runat="server" ControlStyle-CssClass="form-control" Text='<%# Bind("tkt_created") %>'  />--%>
              <asp:label id="tkt_created" runat="server" text='<%# Bind("tkt_created") %>' visible="false" style="height:0;" />
              <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Create" CssClass="btn btn-primary" />
              &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default"/>
          </InsertItemTemplate>
          <ItemTemplate>
              tkt_id_PK:
              <asp:Label ID="tkt_id_PKLabel" runat="server" Text='<%# Eval("tkt_id_PK") %>' Visible="false" />
              <br />
              tkt_name:
              <asp:Label ID="tkt_nameLabel" runat="server" Text='<%# Bind("tkt_name") %>' />
              <br />
              tkt_desc:
              <asp:Label ID="tkt_descLabel" runat="server" Text='<%# Bind("tkt_desc") %>' />
              <br />
              tkt_created:
              <asp:Label ID="tkt_createdLabel" runat="server" Text='<%# Bind("tkt_created") %>' />
              <br />
              tkt_priority:
              <asp:Label ID="tkt_priorityLabel" runat="server" Text='<%# Bind("tkt_priority") %>' Visible="false" />
              <br />
              tkt_status:
              <asp:Label ID="tkt_statusLabel" runat="server" Text='<%# Bind("tkt_status") %>' Visible="False"/>
              <br />
              <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
          </ItemTemplate>
      </asp:FormView>
      <asp:ObjectDataSource ID="ods_get_tickets" runat="server" InsertMethod="create_ticket" OldValuesParameterFormatString="original_{0}" SelectMethod="get_ticket" TypeName="TicketDBTableAdapters.ticketsTableAdapter">
          <InsertParameters>
              <asp:Parameter Name="tkt_name" Type="String" />
              <asp:Parameter Name="tkt_desc" Type="String" />
              <asp:Parameter Name="tkt_created" Type="DateTime"  DefaultValue="" />
              <asp:Parameter Name="tkt_priority" Type="String" DefaultValue="normal" />
              <asp:Parameter Name="tkt_status" Type="String" DefaultValue="open" />
          </InsertParameters>
          <SelectParameters>
              <asp:Parameter DefaultValue="" Name="tkt_id_PK" Type="Int32" />
          </SelectParameters>
      </asp:ObjectDataSource>
</form>
</asp:Content>


