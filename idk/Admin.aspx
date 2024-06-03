<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="idk.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div dir="rtl" class="container-data">
        <h1 style="color:black">Welcome to Admin Page</h1>
        <asp:Table ID="usersTable" CssClass="GeneratedTable" runat="server">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell>Email</asp:TableHeaderCell>
                <asp:TableHeaderCell>Password</asp:TableHeaderCell>
                <asp:TableHeaderCell>isAdmin</asp:TableHeaderCell>
            </asp:TableHeaderRow>
        </asp:Table>
        <asp:Label ID="noUsersLabel" CssClass="no-users" runat="server" Text="No users other than the administrator are registered."></asp:Label>
        <div class="container-data">
            <h1 style="color:black">נתוני מערכת</h1>
            <h4><%="מספר האנשים שהתחברו בעבר " + Application["Logins"] %></h4>
            <h4><%="מספר האנשים שמחוברים כרגע " + Application["OnlineUsers"]%></h4>
        </div>
        </div>
</asp:Content>
