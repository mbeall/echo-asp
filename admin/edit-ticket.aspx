<%@ Page Title="" Language="C#" MasterPageFile="~/template.master" AutoEventWireup="true" CodeFile="edit-ticket.aspx.cs" Inherits="edit_ticket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head_title" Runat="Server">Edit Ticket
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="page_title" Runat="Server">Edit Ticket
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="entry_title" Runat="Server">Edit Ticket
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="entry_content" Runat="Server">
  <form runat="server">
    <asp:ObjectDataSource ID="ods_edit_ticket" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="get_ticket" TypeName="TicketDBTableAdapters.ticketsTableAdapter" UpdateMethod="update_ticket">
      <SelectParameters>
        <asp:SessionParameter DefaultValue="" Name="tkt_id" SessionField="tkt_id" Type="Int32" />
      </SelectParameters>

      <UpdateParameters>
        <asp:Parameter Name="tkt_name" Type="String" />
        <asp:Parameter Name="tkt_desc" Type="String" />
        <asp:Parameter Name="tkt_created" Type="DateTime" />
        <asp:Parameter Name="tkt_priority" Type="String" />
        <asp:Parameter Name="tkt_status" Type="String" />
        <asp:Parameter Name="Original_tkt_id_PK" Type="Int32" />
      </UpdateParameters>
    </asp:ObjectDataSource>

    <asp:Repeater ID="rep_edit_ticket" runat="server" DataSourceID="ods_edit_ticket">
      <ItemTemplate>
        <div class="row">
          <div class="col-xs-6">
            <div class="form-group">
              <label for="tkt_id_PK">Ticket ID</label>
              <asp:Label ID="tkt_id_PK" runat="server" Text='<%# Bind("tkt_id_PK") %>' CssClass="form-control" ReadOnly="True" TextMode="Number" />
            </div>

            <div class="form-group">
              <label for="tkt_created">Created on</label>
              <asp:Label ID="tkt_created" runat="server" Text='<%# Bind("tkt_created") %>' cssclass="form-control" ReadOnly="True" TextMode="Number" />
            </div>

            <div class="form-group">
              <label for="tkt_name">Name</label>
              <asp:TextBox ID="tkt_name" runat="server" Text='<%# Bind("tkt_name") %>' CssClass="form-control" />
            </div>

            <div class="form-group">
              <label for="tkt_desc">Description</label>
              <asp:TextBox ID="tkt_desc" runat="server" Text='<%# Bind("tkt_desc") %>' TextMode="MultiLine" CssClass="form-control" />
            </div>

            <div class="form-group">
              <label for="tkt_priority">Priority</label>

              <asp:DropDownList ID="tkt_priority" runat="server" Text='<%# Bind("tkt_priority") %>'  cssclass="form-control">
                <asp:ListItem Value="high">High</asp:ListItem>
                <asp:ListItem Selected="True" Value="normal">Normal</asp:ListItem>
                <asp:ListItem Value="low">Low</asp:ListItem>
              </asp:DropDownList>
            </div>

            <div class="form-group">
              <label for="tkt_status">Status</label>

              <asp:DropDownList ID="tkt_status" runat="server" Text='<%# Bind("tkt_status") %>' cssclass="form-control">
                <asp:ListItem Selected="True" Value="open">Open</asp:ListItem>
                <asp:ListItem Value="closed">Closed</asp:ListItem>
                <asp:ListItem Value="review">Under Review</asp:ListItem>
              </asp:DropDownList>
            </div>

            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="btn btn-primary" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default" />
          </div><!-- .col-xs-6 -->
        </div><!-- .row -->
      </ItemTemplate>
    </asp:Repeater>
  </form>
</asp:Content>
