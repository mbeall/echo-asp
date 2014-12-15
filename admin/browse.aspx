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
       <div class="form-inline">
        <div class="form-group">
        <asp:TextBox ID="search_TextBox" runat="server" CssClass="form-control" TextMode="Search" ToolTip="Search"></asp:TextBox>
         </div>
          <asp:hyperlink ID="browse_bytagButton" class="btn btn-default" runat="server" Text="Browse By Tags" navigateurl="~/admin/browse-by-tag.aspx" />
         <div class="form-group">
         <asp:DropDownList ID="priority_DropDown" runat="server" CssClass="form-control">
            <asp:ListItem>Low</asp:ListItem>
            <asp:ListItem>Normal</asp:ListItem>
            <asp:ListItem>High</asp:ListItem>
          </asp:DropDownList>
         </div>
         <div class="form-group">
          <asp:DropDownList ID="status_DropDown" runat="server" CssClass="form-control">
            <asp:ListItem>Open</asp:ListItem>
            <asp:ListItem>Closed</asp:ListItem>
            <asp:ListItem>Review</asp:ListItem>
          </asp:DropDownList>
          </div>
          <asp:Button ID="filter_button" runat="server" Text="Filter" class="btn btn-primary" />
          </div>
            <asp:Repeater ID="results_Repeater2" DataSourceID="sds_count" runat="server">
           <ItemTemplate>
               <asp:Label ID="results_label" runat="server" CssClass="small-text muted" style="float:right;" Text='<%# String.Format("{0} results", Eval("count")) %>' Font-Size="Small"></asp:Label>
           </ItemTemplate>
        </asp:Repeater>
        </div>



        <br />
        <br />

        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ods_get_tickets">
        <ItemTemplate>
          <asp:HyperLink ID="tkt_nameHyperlink" runat="server" ControlStyle-CssClass="entry-header h1" Text='<%# Eval("tkt_name") %>' NavigateUrl='<%# Eval("tkt_id_PK","~/admin/ticket.aspx?tkt_id={0}")%>'> </asp:HyperLink>
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
         <asp:sqlDataSource ID="sds_count" runat="server" ConnectionString="<%$ ConnectionStrings:TicketDBConnectionString %>" SelectCommand="SELECT COUNT(*) AS [count]
  FROM [TicketDB].[dbo].[tickets]
  WHERE ( (tkt_name LIKE '%' + ISNULL(@text,'%') + '%') OR (tkt_desc LIKE '%' + ISNULL(@text,'%') + '%') )
    AND (tkt_priority LIKE '%' + ISNULL(@tkt_priority,'%') + '%')
    AND (tkt_status LIKE '%' + ISNULL(@tkt_status,'open') + '%')">
             <SelectParameters>
                 <asp:ControlParameter ControlID="search_TextBox" Name="text" PropertyName="Text" />
                 <asp:ControlParameter ControlID="priority_DropDown" Name="tkt_priority" PropertyName="SelectedValue" />
                 <asp:ControlParameter ControlID="status_DropDown" Name="tkt_status" PropertyName="SelectedValue" />
             </SelectParameters>
       </asp:sqlDataSource>
         </form>
</asp:Content>

