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
    <label for="tkt_name">Ticket Name</label>
    <input class="form-control" type="text" name="tkt_name" id="tkt_name" maxlength="45">
  </div>

    <div class="form-group" runat="server" id="priority">
      <label for="tkt_priority">Ticket Priority</label>
      <select class="form-control" name="tkt_priority">
        <option value="high">High</option>
        <option value="normal" selected>Normal</option>
        <option value="low">Low</option>
      </select>
    </div>


  <div class="form-group" runat="server" id="description">
    <label for="tkt_desc">Description</label>
    <textarea class="form-control" name="tkt_desc"></textarea>
  </div>

  <p>
    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
    <asp:LinkButton ID="LinkButton1" runat="server" Text="Cancel" PostBackUrl="~/index.aspx">Cancel</asp:LinkButton>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
  </p>
</form>
</asp:Content>

