<%@ Page Title="" Language="C#" MasterPageFile="~/template.master" AutoEventWireup="true" CodeFile="edit-ticket.aspx.cs" Inherits="edit_ticket" %>

<asp:content ID="Content1" ContentPlaceHolderID="head_title" Runat="Server">Edit Ticket
</asp:content>
<asp:content ID="Content2" ContentPlaceHolderID="page_title" Runat="Server">Edit Ticket
</asp:content>
<asp:content ID="Content3" ContentPlaceHolderID="entry_title" Runat="Server">Edit Ticket
</asp:content>
<asp:content ID="Content4" ContentPlaceHolderID="entry_content" Runat="Server">
  <form id="Form1" runat="server">
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
        <asp:sessionparameter name="mod_id_FK" sessionfield="mod_id" type="Int32" />
        <asp:parameter name="Original_tkt_id_PK" type="Int32" />
      </updateparameters>
    </asp:objectdatasource>
    <asp:formview id="frm_edit_ticket" runat="server" datakeynames="tkt_id_PK" datasourceid="ods_edit_ticket" defaultmode="Edit">
      <edititemtemplate>
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
        
        <asp:label id="mod_id_FK" runat="server" text='<%# Session["mod_id"] %>' visible="False" />
        <br />

        <asp:linkbutton id="UpdateButton" runat="server" causesvalidation="True" commandname="Update" text="Update" cssclass="btn btn-primary" />
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
        
        <asp:label id="mod_id_FK" runat="server" text='<%# Session["mod_id"] %>' visible="False" />
        <br />

        <asp:linkbutton id="UpdateButton" runat="server" causesvalidation="True" commandname="Update" text="Update" cssclass="btn btn-primary" />
        &nbsp;<asp:linkbutton id="UpdateCancelButton" runat="server" causesvalidation="False" commandname="Cancel" text="Cancel" cssclass="btn btn-default" />
      </itemtemplate>
      
    </asp:formview>
  </form>
</asp:content>
