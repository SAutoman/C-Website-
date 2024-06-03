<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Unauthorized.aspx.cs" Inherits="idk.Unauthorized" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Redirect Page</title>
    <style>
        .message {
            font-size: 20px;
        }
    </style>
    <script type="text/javascript">
        window.onload = function () {
            setTimeout(function () {
                window.location.href = 'Login.aspx';
            }, 3000);
        };
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div><label class="message">You are not allowed to log in like this</label> <br>
        <label class="message">Redirecting to Login page...</label>
        </div>
    </form>
</body>
</html>
