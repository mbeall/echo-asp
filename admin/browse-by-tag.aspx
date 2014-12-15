<%@ Page Title="" Language="C#" MasterPageFile="~/template.master" AutoEventWireup="true" CodeFile="browse-by-tag.aspx.cs" Inherits="browsebytag" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head_title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="page_title" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="entry_title" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="entry_content" Runat="Server">
    <form id="Form1" runat="server">
       <div class="row">
        <div class="form-inline">
        <div class="form-group">
        <asp:TextBox ID="search_TextBox1" runat="server" CssClass="form-control" TextMode="Search" ToolTip="Search" MaxLength="45"></asp:TextBox>
         </div>
           <div class="form-group">
         <asp:DropDownList ID="tag_nameDropDown1" CssClass="form-control" runat="server" DataSourceID="ods_tags" DataTextField="tag_name" DataValueField="tag_id_PK">
          </asp:DropDownList>
            <asp:ObjectDataSource ID="ods_tags" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="TicketDBTableAdapters.tagsTableAdapter">
            </asp:ObjectDataSource>
         </div>
         <div class="form-group">
         <asp:DropDownList ID="priority_DropDown1" runat="server" CssClass="form-control">
            <asp:ListItem>Low</asp:ListItem>
            <asp:ListItem>Normal</asp:ListItem>
            <asp:ListItem>High</asp:ListItem>
          </asp:DropDownList>
         </div>
         <div class="form-group">
          <asp:DropDownList ID="status_DropDown1" runat="server" CssClass="form-control">
            <asp:ListItem>Open</asp:ListItem>
            <asp:ListItem>Closed</asp:ListItem>
            <asp:ListItem>Review</asp:ListItem>
          </asp:DropDownList>
          </div>
            <asp:Button ID="filter_button" runat="server" Text="Filter" class="btn btn-primary" />
               </div><!-- .form-inline -->
           <asp:Repeater ID="results_repeater" runat="server" DataSourceID="sds_count">
               <ItemTemplate>
                   <asp:Label ID="results_label" runat="server" Text='<%# String.Format("{0} results", Eval("count")) %>' Font-Size="Small" style="float:right;"></asp:Label>
               </ItemTemplate>
           </asp:Repeater>
           <br />
           <br />
           <br />
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ods_get_tkt_bytags">
            <ItemTemplate>
              <asp:HyperLink ID="tkt_nameHyperlink" runat="server" controlstyle-cssClass="entry-header h1" Text='<%# Eval("tkt_name") %>' NavigateUrl='<%# Eval("tkt_id_PK","~/admin/ticket.aspx?tkt_id={0}")%>'> </asp:HyperLink>
              <br />
              <asp:Label ID="tkt_details" runat="server" Text='<%# Eval("tkt_desc") %>'></asp:Label><br />
              <%--<asp:Label ID="tkt_created" runat="server" Text='<%# Eval("tkt_created") %>'></asp:Label>--%>
              <br />
              <br />
              <br />
            </ItemTemplate>
            </asp:Repeater>
            <asp:ObjectDataSource ID="ods_get_tkt_bytags" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="get_tickets_by_tag" TypeName="TicketDBTableAdapters.the_ticketsTableAdapter" OnSelecting="ods_get_tkt_bytags_Selecting">
              <SelectParameters>
                <asp:ControlParameter ControlID="search_TextBox1" DefaultValue="%" Name="text" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="priority_DropDown1" DefaultValue="" Name="tkt_priority" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="status_DropDown1" Name="tkt_status" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="tag_nameDropDown1"  Name="tag_id" PropertyName="SelectedValue" Type="Int32" />
              </SelectParameters>
            </asp:ObjectDataSource>
           <asp:SqlDataSource ID="sds_count" runat="server" ConnectionString="<%$ ConnectionStrings:TicketDBConnectionString %>" SelectCommand="SELECT COUNT(*) AS [count]
  FROM [TicketDB].[dbo].[tickets]
    LEFT JOIN ticket_tags ON tkt_id_PK = tkt_id_FK
  WHERE ( (tkt_name LIKE '%' + ISNULL(@text,'%') + '%') OR (tkt_desc LIKE '%' + ISNULL(@text,'%') + '%') )
    AND (tkt_priority LIKE '%' + ISNULL(@tkt_priority,'%') + '%')
    AND (tkt_status LIKE '%' + ISNULL(@tkt_status,'open') + '%')
    AND (tag_id_FK = @tag_id)">
               <SelectParameters>
                   <asp:ControlParameter ControlID="search_TextBox1" DefaultValue="%" Name="text" PropertyName="Text" />
                   <asp:ControlParameter ControlID="priority_DropDown1" Name="tkt_priority" PropertyName="SelectedValue" />
                   <asp:ControlParameter ControlID="status_DropDown1" Name="tkt_status" PropertyName="SelectedValue" />
                   <asp:ControlParameter ControlID="tag_nameDropDown1" Name="tag_id" PropertyName="SelectedValue" />
               </SelectParameters>
           </asp:SqlDataSource>
          </div>
        </div><!---Row--->



         </form>
</asp:Content>