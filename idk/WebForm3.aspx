<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="idk.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!DOCTYPE html>
    <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Secure Login</title>
            <link rel="stylesheet" href="styles.css">

        </head>
        <body>

<div class="login-container" id="login-container">
    <form id="loginForm" method="post">
        <h2>Login</h2>
        <label for="username">username:</label>
        <input type="text" name="username" id="username" />
        <br /> <br />

<label for="pass">Password:</label>
        <input type="password" name="pass" id="pass" />
        <br /> <br />

<input type="button" name="btn" id="btn" value="button" />
        <br /> <br />

<input type="submit" value="send" />
        <input type="reset" value="reset" />
        <br /> <br />
    </form>

</div>
            <script>
                
            </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
