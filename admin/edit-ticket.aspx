<%@ Page Title="" Language="C#" MasterPageFile="~/template.master" AutoEventWireup="true" CodeFile="edit-ticket.aspx.cs" Inherits="edit_ticket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head_title" Runat="Server">Edit Ticket
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="page_title" Runat="Server">Edit Ticket
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="entry_title" Runat="Server">Edit Ticket
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="entry_content" Runat="Server">
<%--<?php
  if (!empty($tkt_id_PK) && is_logged_in()) {
    $ticket  = get_ticket($tkt_id_PK);
    $tags    = get_ticket_tags($ticket);
    $history = get_ticket_history($ticket);

    $tkt_name     = !empty($_POST['tkt_name'    ]) ? $_POST['tkt_name'    ] : get_ticket_name($ticket);
    $tkt_desc     = !empty($_POST['tkt_desc'    ]) ? $_POST['tkt_desc'    ] : get_ticket_desc($ticket);
    $tkt_priority = !empty($_POST['tkt_priority']) ? $_POST['tkt_priority'] : get_ticket_priority($ticket);
    $tkt_status   = !empty($_POST['tkt_status'  ]) ? $_POST['tkt_status'  ] : get_ticket_status($ticket);
    $updated      = !empty($_POST['updated'     ]) ? true                   : false;

    if(!empty($tkt_name) && !empty($tkt_desc) && !empty($tkt_priority) && !empty($tkt_status) && $updated == true) {
      update_ticket($tkt_id_PK, $_SESSION['mod_id_PK'], $tkt_name, $tkt_desc, $tkt_priority, $tkt_status);
    }
    ?>
    <form class="col-md-6" action="edit-ticket.php" method="post" name="edit_ticket_moderator" id="edit_ticket_moderator">
      <input type="hidden" name="tkt_id_PK" value="<?php echo $tkt_id_PK; ?>">

      <div class="form-group">
        <label for="tkt_name">Ticket Name</label>
        <input class="form-control" type="text" name="tkt_name" id="tkt_name" maxlength="45" value="<?php echo $tkt_name ?>">
      </div>

      <div class="form-group">
        <label for="tkt_priority">Ticket Priority</label>
        <select class="form-control" name="tkt_priority">
          <option value="high"<?php if ($tkt_priority == 'high') { echo ' selected'; } ?>>High</option>
          <option value="normal"<?php if ($tkt_priority == 'normal') { echo ' selected'; } ?>>Normal</option>
          <option value="low"<?php if ($tkt_priority == 'low') { echo ' selected'; } ?>>Low</option>
        </select>
      </div>

      <div class="form-group">
        <label for="tkt_status">Ticket Status</label>
        <select class="form-control" name="tkt_status">
          <option value="closed"<?php if ($tkt_status == 'closed') { echo ' selected'; } ?>>Closed</option>
          <option value="open"<?php if ($tkt_status == 'open') { echo ' selected'; } ?>>Open</option>
          <option value="review"<?php if ($tkt_status == 'review') { echo ' selected'; } ?>>Review</option>
        </select>
      </div>

      <div class="form-group">
        <label for="tkt_desc">Description</label>
        <textarea class="form-control" name="tkt_desc"><?php echo $tkt_desc ?></textarea>
      </div>

      <input type="hidden" name="tkt_tags" value="<?php foreach ($tags as $tag) { echo $tag->tag_id_PK . ','; } ?>">
      <input type="hidden" name="updated" value="1">

      <p>
        <input class="btn btn-primary" type="submit" value="Submit">
        <a class="btn btn-default" href="index.php">Cancel</a>
      </p>
    </form>
    <div class="col-md-6">
      <div class="ticket-tags">
        <h4>Tags</h4>
        <?php
        foreach ($tags as $tag) { ?>
          <div class="btn-group">
            <button type="button" class="btn btn-sm" style="color:<?php echo get_tag_color($tag); ?>;background:<?php echo get_tag_bg($tag); ?>;"><?php echo get_tag_name($tag); ?></button>
            <button type="button" class="btn btn-sm" style="color:<?php echo get_tag_color($tag); ?>;background:<?php echo get_tag_bg($tag); ?>;" data-toggle="dropdown"><span class="caret"></span></button>
            <ul class="dropdown-menu">
              <li><a href="edit-tag.php?tag_id_PK=<?php echo $tag->tag_id_PK; ?>">Edit <?php echo get_tag_name($tag); ?></a></li>
              <li><a href="#">Remove</a></li>
            </ul>
          </div>
        <?php }?>
        <button type="button" class="btn btn-sm btn-default">Add Tag</button>
      </div><!-- .ticket-tags -->
      <div class="ticket-tags">
        <h4>History</h4>
        <?php
        foreach ($history as $event) { ?>
          <p><?php echo $event->th_summary; ?></p>
        <?php }?>
      </div><!-- .ticket-history -->
    </div><!-- .col-md-6 --><?php
  }
  elseif (is_logged_in()) {
    ?>
    <p>Please select a ticket to edit.</p>
    <form class="col-xs-6" action="edit-ticket.php" method="post" name="select_ticket" id="select_ticket">
      <div class="form-group">
        <label class="sr-only" for="tkt_id_PK">Ticket</label>
        <select class="form-control" id="tkt_id_PK" name="tkt_id_PK">
          <option value="">All tickets</option>
          <?php
            $tickets = get_tickets();

            $output = '';

            foreach($tickets as $ticket) {
              $output .= '<option value="';
              $output .= $ticket->tkt_id_PK;
              $output .= '">';
              $output .= $ticket->tkt_name;
              $output .= '</option>';
            }

            echo $output;
          ?>
        </select>
      </div>

      <p>
        <input class="btn btn-primary" type="submit" value="Submit">
        <a class="btn btn-default" href="browse.php">Browse</a>
      </p>
    </form><?php
  }
  else {
    echo '<h2>You must be logged in to edit a tag. <a href="login.php">Please login first</a>.</h2>';
  }
  ?>--%>
</asp:Content>

