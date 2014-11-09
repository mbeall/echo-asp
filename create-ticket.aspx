<%@ Page Title="" Language="C#" MasterPageFile="~/template.master" AutoEventWireup="true" CodeFile="create-ticket.aspx.cs" Inherits="create_ticket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head_title" Runat="Server">Create Ticket
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="page_title" Runat="Server">Create Ticket
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="entry_title" Runat="Server">Create Ticket
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="entry_content" Runat="Server">
<%--<form class="col-xs-6" action="create-ticket.php" method="post" name="create_ticket_moderator" id="create_ticket_moderator">
  <input type="hidden" name="tkt_id_PK" value="">

  <div class="form-group">
    <label for="tkt_name">Ticket Name</label>
    <input class="form-control" type="text" name="tkt_name" id="tkt_name" maxlength="45">
  </div>

  <?php if (is_logged_in()) { ?>

    <div class="form-group">
      <label for="tkt_priority">Ticket Priority</label>
      <select class="form-control" name="tkt_priority">
        <option value="high">High</option>
        <option value="normal" selected>Normal</option>
        <option value="low">Low</option>
      </select>
    </div>

  <?php } ?>

  <div class="form-group">
    <label for="tkt_desc">Description</label>
    <textarea class="form-control" name="tkt_desc"></textarea>
  </div>

  <p>
    <input class="btn btn-primary" type="submit" value="Submit">
    <a class="btn btn-default" href="index.php">Cancel</a>
  </p>
</form>--%>
</asp:Content>

