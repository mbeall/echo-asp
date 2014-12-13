<%@ Page Language="C#" AutoEventWireup="true" CodeFile="browse.aspx.cs" Inherits="browse" %>
<!DOCTYPE html>
<html lang="en-US">
<head id="Head1" runat="server">
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Browse Tickets | echo</title>
  <link rel="profile" href="http://gmpg.org/xfn/11" />
  <link rel="stylesheet" id="bootstrap" href="../css/bootstrap.min.css" type="text/css" media="all" />
  <link rel="stylesheet" id="open_sans" href="../css/open-sans.css" type="text/css" media="all" />
  <link rel="stylesheet" id="flint" href="../css/flint.css" type="text/css" media="all" />
  <link rel="stylesheet" id="canvas" href="../css/canvas.css" type="text/css" media="all" />
  <link rel="stylesheet" id="stylesheet" href="../style.css" type="text/css" media="all" />
</head>
<body>
  <form id="form1" runat="server">
  <div id="page" class="hfeed site">
    <nav class="navbar navbar-canvas navbar-top" role="navigation">
      <h1 class="screen-reader-text">Menu</h1>
      <div class="screen-reader-text skip-link"><a href="#content" title="Skip to content">Skip to content</a></div>
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-c410">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.aspx"><h1><tt>&lt;echo&gt;</tt></h1></a>
        </div><!-- .navbar-header -->

        <div class="collapse navbar-collapse navbar-c410">
          <ul id="menu-top" class="nav navbar-nav navbar-right">
            <li><a href="../about.aspx">About</a></li>
            <li><a href="../contact.aspx">Contact Us</a></li>
            <li><a href="browse.aspx">Browse</a></li>
            <li><a href="../create-ticket.aspx">Submit Ticket</a></li>
            <li><a href="../login.aspx">Login</a></li>
          </ul>
        </div><!-- .navbar-collapse -->
      </div><!-- .container -->
    </nav><!-- .navbar -->

    <div id="masthead" class="canvas site-header" role="banner">
      <div class="container">
        <div class="site-branding">
          <div class="clearfix"><p></p></div>
        </div><!-- .site-branding -->
      </div><!-- .container -->
    </div><!-- #masthead -->

    <div class="stripe">
      <div class="container">
        <p>Browse Tickets</p>
      </div><!-- .container -->
    </div><!-- .stripe -->

    <div id="primary" class="content-area container">
      <div id="content" class="site-content col-lg-12 col-md-12" role="main">
<%--        <div class="row">
          <form class="form-inline" role="form" method="post" action="browse.php">
            <div class="form-group">
              <label class="sr-only" for="_search">Keyword search</label>
              <input type="text" class="form-control" id="_search" name="_search" placeholder="Search" value="<?php echo $_search; ?>">
            </div><!-- .form-group -->

            <div class="form-group">
              <label class="sr-only" for="_tag_id_PK">Tag</label>
              <select class="form-control" id="_tag_id_PK" name="_tag_id_PK">
                <option value="">All tags</option>
                <?php
                  $tags = get_tags();

                  $output = '';

                  foreach($tags as $tag) {
                    $output .= '<option value="';
                    $output .= $tag->tag_id_PK;
                    $output .= '"';
                    $output .= $_tag_id == $tag->tag_id_PK ? 'selected' : '';
                    $output .= '>';
                    $output .= $tag->tag_name;
                    $output .= '</option>';
                  }

                  echo $output;
                ?>
              </select>
            </div><!-- .form-group -->

            <div class="form-group">
              <label class="sr-only" for="_priority">Priority</label>
              <select class="form-control" id="_priority" name="_priority">
                <option value=""><span class="text-muted">Priority</span></option>
                <?php
                  $priorities = array('high', 'normal', 'low');

                  $output = '';

                  foreach($priorities as $priority) {
                    $output .= '<option value="';
                    $output .= $priority;
                    $output .= '"';
                    $output .= $_priority == $priority ? 'selected' : '';
                    $output .= '>';
                    $output .= $priority;
                    $output .= '</option>';
                  }

                  echo $output;
                ?>
              </select>
            </div><!-- .form-group -->

            <div class="form-group">
              <label class="sr-only" for="_status">Status</label>
              <select class="form-control" id="_status" name="_status">
                <?php
                  $stati = array('open', 'closed', 'review');

                  $output = '';

                  foreach($stati as $status) {
                    $output .= '<option value="';
                    $output .= $status;
                    $output .= '"';
                    $output .= $_status == $status ? 'selected' : '';
                    $output .= '>';
                    $output .= $status;
                    $output .= '</option>';
                  }

                  echo $output;
                ?>
              </select>
            </div><!-- .form-group -->

            <button type="submit" class="btn btn-primary">Filter</button>
          </form>
        </div><!-- .row -->

        <?php
          if (!empty($_tag_id))
            $tickets = get_tickets($filter, true);
          else
            $tickets = get_tickets($filter);
          echo '<p class="small text-muted" style="float:right;">' . count($tickets) . ' results</p>';

          foreach ($tickets as $ticket) {
            $name     = get_ticket_name(     $ticket );
            $desc     = get_ticket_desc(     $ticket );
            $status   = get_ticket_status(   $ticket );
            $priority = get_ticket_priority( $ticket );
            $tags     = get_ticket_tags(     $ticket );

            $class = "ticket ticket-$status ticket-$priority hentry col-xs-12";
          ?>
            <div class="row">
              <article class="<?php echo $class; ?>">
                <header class="entry-header">
                  <h1 class="entry-title"><?php echo $name; ?></h1>
                  <?php
                    if (is_logged_in()) {
                      echo '<a class="btn btn-default btn-sm btn-edit" href="edit-ticket.php?tkt_id_PK='.$ticket->tkt_id_PK.'">Edit Ticket</a>';
                    }
                  ?>
                </header><!-- .entry-header -->

                <div class="entry-content">
                  <p><?php echo $desc; ?></p>
                </div><!-- .entry-content -->

                <footer class="entry-meta">
                  <p>
                    <?php
                      if ($status == 'closed') { echo "<em>Closed</em>. "; }
                      elseif ($status == 'review') { echo "<em>Under review</em>. "; }

                      if (!empty($tags)) {
                        echo 'Tags: ';
                        foreach ($tags as $tag) {
                          $name  = get_tag_name(  $tag);
                          $color = get_tag_color( $tag);
                          $bg    = get_tag_bg(    $tag);

                          $style = "background:$bg;color:$color";
                          ?>

                          <span class="label" style="<?php echo $style; ?>"><?php echo $name ?></span> <?php
                        }
                      }
                    ?>
                  </p>
                </footer>
              </article>
            </div><!-- .row --><?php
          } ?>--%>
        <div class="col-md-2">
        <asp:TextBox ID="search_TextBox" runat="server" CssClass="form-control" TextMode="Search" Text="Search"></asp:TextBox>

        </div>
         <asp:Button ID="filter_button" runat="server" Text="Filter" class="btn btn-primary" /><asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
      </div><!-- #content -->
     
    </div><!-- #primary -->
  </div><!-- #page -->

  <footer id="colophon" class="site-footer" role="contentinfo">
    <div class="site-info container">
      <div id="footer-left" class="col-lg-7 col-md-6 col-sm-5">
        <p>&copy; 2014 c410echo.</p>
      </div>

      <div id ="credits" class="col-lg-5 col-md-6 col-sm-7">
        <p>Developed by <a href="http://mattbeall.me">Matt Beall</a>, Crystal Carr, and Hannah Turner</p>
      </div>
    </div><!-- .site-info -->
  </footer><!-- #colophon -->

  <script type="text/javascript" src="../js/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="../js/jquery-migrate-1.2.1.min.js"></script>
  <script type="text/javascript" src="../js/bootstrap.min.js"></script>
  </form>
</body>
</html>

