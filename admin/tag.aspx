<%@ Page Title="" Language="C#" MasterPageFile="~/template.master" AutoEventWireup="true" CodeFile="tag.aspx.cs" Inherits="tag" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head_title" Runat="Server">Create/Edit Tag
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="page_title" Runat="Server">Create/Edit Tag
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="entry_title" Runat="Server">Create/Edit Tag
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="entry_content" Runat="Server">
    <%--<?php if (is_logged_in()) { ?>--%>

<Form runat="server">
    <div class="col-md-6">
        <div class="form-group">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="alert alert-danger" DisplayMode="List" />

    <asp:panel id="p_success" runat="server" cssclass="alert alert-success" visible="false"><strong>Tag saved.</strong></asp:panel>
    <asp:FormView ID="fv_tag" runat="server" DataKeyNames="tag_id_PK" DataSourceID="ods_create_tags" BorderStyle="None" onitemupdated="fv_tag_updated">
        <EditItemTemplate>
            <br />
           Tag Name:<asp:RequiredFieldValidator ID="tag_name_EditValidator1" runat="server" ErrorMessage="Tag Name is a Required Field" ControlToValidate="tag_nameTextBox" Visible="True" Text="*"></asp:RequiredFieldValidator>
            <asp:TextBox ID="tag_nameTextBox" runat="server" Text='<%# Bind("tag_name") %>' ControlStyle-CssClass="form-control" />

            <br />
            Tag Color:<asp:RequiredFieldValidator ID="tag_colorRequiredValidator1" runat="server" ErrorMessage="Tag  Color is a Required Field" Text="*" ControlToValidate="tag_colorTextBox"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="tag_color_EditValidator1" runat="server" ErrorMessage="Please make sure your input is in the correct format. Ex.#000000" ValidationExpression='^#+([a-fA-F0-9]){6}' ControlToValidate ="tag_colorTextBox" Visible="True" Text="*"></asp:RegularExpressionValidator>
            <asp:TextBox ID="tag_colorTextBox" runat="server" Text='<%# Bind("tag_color") %>' ControlStyle-CssClass="form-control" />

            <br />
            Tag Background:<asp:RequiredFieldValidator ID="tag_bgRequiredValidator1" runat="server" ErrorMessage="Tag Background is a Required Field" Text="*" ControlToValidate="tag_bgTextbox"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="tag_bg_EditValidator1" runat="server" ErrorMessage="Please make sure your input is in the correct format. Ex.#ffffff" ValidationExpression='^#+([a-fA-F0-9]){6}' ControlToValidate ="tag_bgTextBox" Visible="True" Text="*"></asp:RegularExpressionValidator>
            <asp:TextBox ID="tag_bgTextBox" runat="server" Text='<%# Bind("tag_bg") %>' ControlStyle-CssClass="form-control"/>

            <br />
            <div></div>
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" class="btn btn-primary" PostBackUrl="tag.aspx"  />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" class="btn btn-primary" PostBackUrl="tag.aspx" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Tag Name:<asp:RequiredFieldValidator ID="tag_name_InsertValidator1" runat="server" ErrorMessage="Tag Name is a Required Field" Text="*" Visible="true" ControlToValidate="tag_nameTextBox"></asp:RequiredFieldValidator>
            <asp:TextBox ID="tag_nameTextBox" runat="server" Text='<%# Bind("tag_name") %>'  ControlStyle-CssClass="form-control"/>
            <br />
            Tag Color:<asp:RequiredFieldValidator ID="tag_colorRequiredFieldValidator" runat="server" ErrorMessage="Tag Color is a Required Field" Text="*" ControlToValidate="tag_colorTextBox"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="tag_color_InsertValidator1" runat="server" ErrorMessage="Please make sure your input is in the correct format. Ex.#000000" ValidationExpression='^#+([a-fA-F0-9]){6}' ControlToValidate="tag_colorTextBox" Visible="True" Text="*"></asp:RegularExpressionValidator>
            <asp:TextBox ID="tag_colorTextBox" runat="server" Text='<%# Bind("tag_color") %>' ControlStyle-CssClass="form-control"/>

            <br />
            Tag Background:<asp:RequiredFieldValidator ID="tag_bgRequiredFieldValidator" runat="server" ErrorMessage="Tag Background is a Rquired Field" Text="*" ControlToValidate="tag_bgTextBox"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="tag_bg_InsertValidator1" runat="server" ErrorMessage="Please make sure your input is in the correct format. Ex. #ffffff" ValidationExpression='^#+([a-fA-F0-9]){6}' ControlToValidate="tag_bgTextBox" Visible="True" Text="*"></asp:RegularExpressionValidator>
            <asp:TextBox ID="tag_bgTextBox" runat="server" Text='<%# Bind("tag_bg") %>' ControlStyle-CssClass="form-control"/>

            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" class="btn btn-primary"/>
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" class="btn btn-primary"/>
        </InsertItemTemplate>
        <ItemTemplate>
            <br />
            Tag Name:
            <asp:Label ID="tag_nameLabel" runat="server" Text='<%# Bind("tag_name") %>' ControlStyle-CssClass="form-control"/>
            <br />
            Tag Color:
            <asp:Label ID="tag_colorLabel" runat="server" Text='<%# Bind("tag_color") %>' ControlStyle-CssClass="form-control"/>
            <br />
            Tag Background:
            <asp:Label ID="tag_bgLabel" runat="server" Text='<%# Bind("tag_bg") %>' ControlStyle-CssClass="form-control"/>
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" class="btn btn-primary"/>
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" class="btn btn-primary"/>
        </ItemTemplate>
    </asp:FormView>
    <asp:ObjectDataSource ID="ods_create_tags" runat="server" InsertMethod="create_tag" OldValuesParameterFormatString="original_{0}" SelectMethod="get_tag" TypeName="TicketDBTableAdapters.tagsTableAdapter" UpdateMethod="update_tag">
        <InsertParameters>
            <asp:Parameter Name="tag_name" Type="String" />
            <asp:Parameter Name="tag_color" Type="String" />
            <asp:Parameter Name="tag_bg" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="tag_id" QueryStringField="tag_id_pk" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="tag_name" Type="String" />
            <asp:Parameter Name="tag_color" Type="String" />
            <asp:Parameter Name="tag_bg" Type="String" />

        </UpdateParameters>
    </asp:ObjectDataSource>
    </div>
  </div>

<%--    <div class="col-md-6">
        <div class="form-group">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="tag_id_PK" DataSourceID="ods_create_tags" BorderColor="Black" BorderStyle="None" CssClass="form-group" DefaultMode="Insert" GridLines="None">
              <Fields>
                  <asp:BoundField DataField="tag_id_PK" HeaderText="tag_id_PK" InsertVisible="False" ReadOnly="True" SortExpression="tag_id_PK" />
                  <asp:BoundField DataField="tag_name" HeaderText="Tag Name" SortExpression="tag_name" ControlStyle-CssClass="form-control"/>
                  <asp:BoundField DataField="tag_color" HeaderText="Tag Color" SortExpression="tag_color"
                      ControlStyle-CssClass="form-control"/>
                  <asp:BoundField DataField="tag_bg" HeaderText="Tag Background" SortExpression="tag_bg"
                     />
                  <asp:CommandField ShowEditButton="True" ShowInsertButton="True" controlstyle-cssClass="btn btn-primary"/>
            </Fields>
              <RowStyle BorderStyle="None" />
        </asp:DetailsView>
        <asp:ObjectDataSource ID="ods_create_tags" runat="server" InsertMethod="create_tag" OldValuesParameterFormatString="original_{0}" SelectMethod="get_tag" TypeName="TicketDBTableAdapters.tagsTableAdapter" UpdateMethod="update_tag">
            <InsertParameters>
                <asp:Parameter Name="tag_name" Type="String" />
                <asp:Parameter Name="tag_color" Type="String" />
                <asp:Parameter Name="tag_bg" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="tag_id" QueryStringField="tag_id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="tag_name" Type="String" />
                <asp:Parameter Name="tag_color" Type="String" />
                <asp:Parameter Name="tag_bg" Type="String" />
                <asp:Parameter Name="Original_tag_id_PK" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
            </div>
</div>--%>
<div class="col-md-6">
      <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ods_tags">
      <ItemTemplate>
        <asp:Label ID="tag_name" runat="server" Text='<%# Eval("tag_name") %>' BackColor='<%# System.Drawing.Color.FromName(Eval("tag_bg").ToString()) %>' ForeColor='<%# System.Drawing.Color.FromName(Eval("tag_color").ToString()) %>' CssClass="label"></asp:Label>
      </ItemTemplate>
      </asp:Repeater>
      <asp:ObjectDataSource ID="ods_tags" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="TicketDBTableAdapters.tagsTableAdapter"></asp:ObjectDataSource>
    </div>
    <!--.col-md-6-->
    <%--<?php
    $tags = get_tags();
    foreach ($tags as $tag) {
      echo '<span class="label" style="color:'.get_tag_color($tag).';background:'.get_tag_bg($tag).';">'.get_tag_name($tag).'</span> ';
    }
  ?>--%>
<%--<?php

}
else {
  echo '<div class="col-xs-12"><h2> You need to be logged in to create a tag.</h2></div>';
} ?>--%>
</Form>
</asp:Content>

