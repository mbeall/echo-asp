<%@ Page Title="" Language="C#" MasterPageFile="~/template.master" AutoEventWireup="true" CodeFile="browse.aspx.cs" Inherits="admin_browse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head_title" Runat="Server">Browse Tickets
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="page_title" Runat="Server">Browse Tickets
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="entry_title" Runat="Server">Browse Tickets
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="entry_content" Runat="Server">
<form runat="server">
       <div class="row">
        <div class="col-md-2">
        <asp:TextBox ID="search_TextBox" runat="server" CssClass="form-control" TextMode="Search" ToolTip="Search"></asp:TextBox>
         </div>
         <div class="col-md-2">
         <asp:DropDownList ID="priority_DropDown" runat="server" CssClass="form-control">
            <asp:ListItem>Low</asp:ListItem>
            <asp:ListItem>Normal</asp:ListItem>
            <asp:ListItem>High</asp:ListItem>
          </asp:DropDownList>
         </div>
         <div class="col-md-2">
          <asp:DropDownList ID="status_DropDown" runat="server" CssClass="form-control">
            <asp:ListItem>Open</asp:ListItem>
            <asp:ListItem>Closed</asp:ListItem>
            <asp:ListItem>Review</asp:ListItem>
          </asp:DropDownList>
          </div>
          <div class="col-md-1">
            <asp:Button ID="filter_button" runat="server" Text="Filter" class="btn btn-primary" />
          </div>
        </div><!---Row--->

        <br />
        <br />

        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ods_get_tickets">
        <ItemTemplate>
          <asp:HyperLink ID="tkt_nameHyperlink" runat="server" Text='<%# Eval("tkt_name") %>' NavigateUrl='<%# Eval("tkt_id_PK","~/admin/edit-ticket.aspx?tkt_id={0}")%>'> </asp:HyperLink>
         <br />
          <asp:Label ID="tkt_details" runat="server" Text='<%# Eval("tkt_desc") %>'></asp:Label><br />
         <%-- <asp:Label ID="tag_nameLabel" runat="server" Text='<%# Eval("tag_name") %>'></asp:Label>--%>
          <br />
          <br />
          <br />
        </ItemTemplate>

        </asp:Repeater>

  <asp:ObjectDataSource ID="ods_get_tickets" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="get_tickets" TypeName="TicketDBTableAdapters.the_ticketsTableAdapter">
    <SelectParameters>
      <asp:ControlParameter ControlID="search_TextBox" Name="text" PropertyName="Text" Type="String" DefaultValue="%" />
      <asp:ControlParameter ControlID="priority_DropDown" Name="tkt_priority" PropertyName="Text" Type="String" DefaultValue="" />
      <asp:ControlParameter ControlID="status_DropDown" Name="tkt_status" PropertyName="Text" Type="String" />
    </SelectParameters>
        </asp:ObjectDataSource>
         </form>
</asp:Content>

