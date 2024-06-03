<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="idk.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/login.css" rel="stylesheet" />
    <title>Login Form</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="metal-section">
        <form id="loginForm" runat="server">
            <table>
                <tr>
                    <td>Email:</td>
                    <td>
                        <asp:TextBox ID="email" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="emailError" runat="server" CssClass="error-message"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td>
                        <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="passwordError" runat="server" CssClass="error-message"></asp:Label>
                    </td>
                </tr>
            </table>

            <div class="form-group">
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="ButtonSubmit_Click" CssClass="btn" />
                <asp:Button ID="ResetButton" runat="server" Text="Reset" OnClick="ResetButton_Click" CssClass="btn" />
            </div>
            <asp:Label ID="msgLabel" runat="server" CssClass="error"></asp:Label>
        </form>
    </div>
    <script src="js/login.js"></script>
</asp:Content>
