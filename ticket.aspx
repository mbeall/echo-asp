<%@ Page Title="" Language="C#" MasterPageFile="~/template.master" AutoEventWireup="true" CodeFile="ticket.aspx.cs" Inherits="ticket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head_title" Runat="Server">Create Ticket
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="page_title" Runat="Server">Create Ticket
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="entry_title" Runat="Server">Create Ticket
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="entry_content" Runat="Server">

  <form id="ticket_moderator" class="col-xs-6" runat="server" name="ticket_moderator" >
  <input type="hidden" name="tkt_id_PK" value="">

  <div class="form-group" runat="server" id="ticket_name">
    <asp:Label ID="tkt_name_lb" runat="server" Text="Ticket Name"></asp:Label>
    <!--<label for="tkt_name">Ticket Name</label>-->
    <input class="form-control" type="text" name="tkt_name" id="tkt_name" maxlength="45">
  </div>

    <div class="form-group" runat="server" id="priority">
      <asp:Label ID="tkt_priority" runat="server" Text="Ticket Priority"></asp:Label>
      <!--<label for="tkt_priority">Ticket Priority</label>-->
      <select class="form-control" name="tkt_priority">
        <option value="high">High</option>
        <option value="normal" selected>Normal</option>
        <option value="low">Low</option>
      </select>
    </div>


  <div class="form-group" runat="server" id="description">
    <asp:Label ID="tkt_desc" runat="server" Text="Description"></asp:Label>
    <!--<label for="tkt_desc">Description</label>-->
    <textarea class="form-control" name="tkt_desc"></textarea>
  </div>

  <p>
    <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click"  />
    <asp:LinkButton ID="LinkButton1" runat="server" Text="Cancel" PostBackUrl="~/index.aspx">Cancel</asp:LinkButton>
    <asp:TextBox ID="Confirmation" runat="server" Visible ="false" ></asp:TextBox>
  </p>
</form>
</asp:Content>

