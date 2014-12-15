<%@ Page Title="" Language="C#" MasterPageFile="~/template.master" AutoEventWireup="true" CodeFile="ticket.aspx.cs" Inherits="ticket" %>

<asp:content ID="Content1" ContentPlaceHolderID="head_title" Runat="Server">Edit Ticket
</asp:content>
<asp:content ID="Content2" ContentPlaceHolderID="page_title" Runat="Server">Edit Ticket
</asp:content>
<asp:content ID="Content3" ContentPlaceHolderID="entry_title" Runat="Server">Edit Ticket
</asp:content>
<asp:content ID="Content4" ContentPlaceHolderID="entry_content" Runat="Server">
  <form id="frm_edit_ticket" runat="server">
  <div class="row">
    <asp:validationsummary id="vs_edit_ticket" runat="server" displaymode="List" cssclass="alert alert-danger" />
    <asp:panel id="p_success" runat="server" cssclass="alert alert-success" visible="false"><strong>Ticket saved.</strong></asp:panel>
    <asp:objectdatasource id="ods_edit_ticket" runat="server" oldvaluesparameterformatstring="original_{0}" selectmethod="get_ticket" typename="TicketDBTableAdapters.ticketsTableAdapter" updatemethod="Update">
      <selectparameters>
        <asp:querystringparameter name="tkt_id_PK" querystringfield="tkt_id" type="Int32" />
      </selectparameters>
      <updateparameters>
        <asp:parameter name="tkt_name" type="String" />
        <asp:parameter name="tkt_desc" type="String" />
        <asp:parameter name="tkt_created" type="DateTime" />
        <asp:parameter name="tkt_priority" type="String" />
        <asp:parameter name="tkt_status" type="String" />
        <asp:parameter name="Original_tkt_id_PK" type="Int32" />
      </updateparameters>
    </asp:objectdatasource>
    <asp:objectdatasource id="ods_edit_ticket_tags" runat="server" oldvaluesparameterformatstring="original_{0}" selectmethod="get_ticket_tags" typename="TicketDBTableAdapters.the_ticket_tagsTableAdapter" deletemethod="remove_ticket_tag">
      <deleteparameters>
        <asp:parameter name="tkt_id" type="Int32" />
        <asp:parameter name="tag_id" type="Int32" />
      </deleteparameters>
      <selectparameters>
        <asp:querystringparameter name="tkt_id" querystringfield="tkt_id" type="Int32" />
      </selectparameters>
    </asp:objectdatasource>
    <asp:objectdatasource id="ods_ticket_history" runat="server" oldvaluesparameterformatstring="original_{0}" selectmethod="get_ticket_history" typename="TicketDBTableAdapters.the_ticket_historyTableAdapter">
      <selectparameters>
        <asp:querystringparameter querystringfield="tkt_id" name="tkt_id" type="Int32"></asp:querystringparameter>
      </selectparameters>
    </asp:objectdatasource>
    <div class="col-xs-6">
    <asp:formview id="fv_edit_ticket" runat="server" datakeynames="tkt_id_PK" datasourceid="ods_edit_ticket" defaultmode="Edit" onitemupdated="fv_edit_ticket_success">
      <edititemtemplate>
        <div class="form-group">
        <label for="tkt_name">Name
        <asp:requiredfieldvalidator id="rfv_tkt_name" runat="server" text="*" errormessage="Ticket Name is required" controltovalidate="tkt_name"></asp:requiredfieldvalidator></label>
        <asp:textbox id="tkt_name" runat="server" text='<%# Bind("tkt_name") %>' cssclass="form-control" maxlength="32" />
        </div>

        <div class="form-group">
        <label for="tkt_created">Created on</label>
        <asp:label id="tkt_created" runat="server" text='<%# Bind("tkt_created") %>' cssclass="form-control" />
        </div>

        <div class="form-group">
        <label for="tkt_desc">Description
        <asp:requiredfieldvalidator id="rfv_tkt_desc" runat="server" text="*" errormessage="Ticket Description is required." controltovalidate="tkt_desc"></asp:requiredfieldvalidator></label>
        <asp:textbox id="tkt_desc" runat="server" text='<%# Bind("tkt_desc") %>' cssclass="form-control" textmode="MultiLine" />
        </div>

        <div class="form-group">
        <label for="tkt_priority">Priority</label>
        <asp:dropdownlist id="tkt_priority" runat="server" text='<%# Bind("tkt_priority") %>' cssclass="form-control">
                <asp:ListItem Value="high">High</asp:ListItem>
                <asp:ListItem Selected="True" Value="normal">Normal</asp:ListItem>
                <asp:ListItem Value="low">Low</asp:ListItem>
        </asp:dropdownlist>
        </div>

        <div class="form-group">
        <label for="tkt_status">Status</label>
        <asp:dropdownlist id="tkt_status" runat="server" text='<%# Bind("tkt_status") %>' cssclass="form-control">
                <asp:ListItem Selected="True" Value="open">Open</asp:ListItem>
                <asp:ListItem Value="closed">Closed</asp:ListItem>
                <asp:ListItem Value="review">Under Review</asp:ListItem>
        </asp:dropdownlist>
        </div>
        <br />

        <asp:linkbutton id="btn_update_ticket" runat="server" causesvalidation="True" commandname="Update" text="Update" cssclass="btn btn-primary" />
        &nbsp;<asp:linkbutton id="UpdateCancelButton" runat="server" causesvalidation="False" commandname="Cancel" text="Cancel" cssclass="btn btn-default" />
      </edititemtemplate>
      <itemtemplate>
        <div class="form-group">
        <label for="tkt_name">Name</label>
        <asp:textbox id="tkt_name" runat="server" text='<%# Bind("tkt_name") %>' cssclass="form-control" />
        </div>

        <div class="form-group">
        <label for="tkt_created">Created on</label>
        <asp:label id="tkt_created" runat="server" text='<%# Bind("tkt_created") %>' cssclass="form-control" />
        </div>

        <div class="form-group">
        <label for="tkt_desc">Description</label>
        <asp:textbox id="tkt_desc" runat="server" text='<%# Bind("tkt_desc") %>' cssclass="form-control" />
        </div>

        <div class="form-group">
        <label for="tkt_priority">Priority</label>
        <asp:dropdownlist id="tkt_priority" runat="server" text='<%# Bind("tkt_priority") %>' cssclass="form-control">
                <asp:ListItem Value="high">High</asp:ListItem>
                <asp:ListItem Selected="True" Value="normal">Normal</asp:ListItem>
                <asp:ListItem Value="low">Low</asp:ListItem>
        </asp:dropdownlist>
        </div>

        <div class="form-group">
        <label for="tkt_status">Status</label>
        <asp:dropdownlist id="tkt_status" runat="server" text='<%# Bind("tkt_status") %>' cssclass="form-control">
                <asp:ListItem Selected="True" Value="open">Open</asp:ListItem>
                <asp:ListItem Value="closed">Closed</asp:ListItem>
                <asp:ListItem Value="review">Under Review</asp:ListItem>
        </asp:dropdownlist>
        </div>
        <br />

        <asp:linkbutton id="UpdateButton" runat="server" causesvalidation="True" commandname="Update" text="Update" cssclass="btn btn-primary" />
        &nbsp;<asp:linkbutton id="UpdateCancelButton" runat="server" causesvalidation="False" commandname="Cancel" text="Cancel" cssclass="btn btn-default" />
      </itemtemplate>

    </asp:formview>
    </div><!-- .col-xs-6 -->
    <div class="col-xs-6">
      <asp:repeater id="rep_edit_ticket_tags" runat="server" datasourceid="ods_edit_ticket_tags">
        <itemtemplate>
        <div class="btn-group">
        <asp:button ID="tag_name" runat="server" Text='<%# Bind("tag_name") %>' BackColor='<%# System.Drawing.Color.FromName(Eval("tag_bg").ToString()) %>' ForeColor='<%# System.Drawing.Color.FromName(Eval("tag_color").ToString()) %>' CssClass="btn" usesubmitbehavior="False" />
          <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
            <span class="caret"></span>
            <span class="sr-only">Toggle Dropdown</span>
          </button>
          <ul class="dropdown-menu" role="menu">
            <li><asp:hyperlink id="hl_edit_tag" runat="server" navigateurl='<%# Eval("tag_id_FK","~/admin/tag.aspx?tag_id_PK={0}" ) %>'>Edit</asp:hyperlink></li>
            <li><asp:hyperlink id="hl_remove_tag" runat="server" navigateurl='<%# String.Format("http://www.business.colostate.edu/matthew.b.beall12/php/echo-php/remove-tag.php?tag_id={0}&tkt_id={1}", Eval("tag_id_FK"), Eval("tkt_id_FK") )%>'>Remove</asp:hyperlink></li>
          </ul>
        </div>
        </itemtemplate>
      </asp:repeater>
      <div class="clearfix" style="min-height:100px;"></div>
      <asp:gridview id="gv_ticket_history" runat="server" autogeneratecolumns="False" datakeynames="th_id_PK" datasourceid="ods_ticket_history" cssclass="table" borderstyle="None">
        <columns>
          <asp:boundfield datafield="th_modified" dataformatstring="{0:d}" headertext="Date" sortexpression="th_modified" />
          <asp:boundfield datafield="th_summary" headertext="Changes" sortexpression="th_summary" />
          <asp:templatefield headertext="User">
            <itemtemplate>
              <asp:hyperlink id="hl_mod_login_name" runat="server" text='<%# Bind("mod_login_name") %>' navigateurl='<%# String.Format("~/admin/profile.aspx?mod_id={0}",Eval("mod_id_FK")) %>'></asp:hyperlink>
            </itemtemplate>
          </asp:templatefield>
        </columns>
        <headerstyle borderstyle="None" />
        <rowstyle borderstyle="None" />
      </asp:gridview>
    </div>
    </div><!-- .row -->
  </form>
</asp:content>
