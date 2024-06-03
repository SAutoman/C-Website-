<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="idk.aspx.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Register Form</title>
    <link href="Styles/colour_red.css" rel="stylesheet" />
    <link href="Styles/Register.css" rel="stylesheet" />
    <script src="js/register.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="metal-section">
        <form id="register_form" onsubmit="return SubmitRegister()" method="post" runat="server">
            <table>
                <tr>
                    <td>First Name:</td>
                    <td>
                        <input type="text" id="firstname" name="firstname" />
                    </td>
                    <td><span id="error_firstname"></span></td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td>
                        <input type="text" id="lastname" name="lastname" />
                    </td>
                    <td><span id="error_lastname"></span></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td>
                        <input type="text" name="password" id="password" /></td><td><span id="error_pass"></span></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td>
                        <input type="email" id="email" name="email" /></td><td><span id="error_email"></span></td>
                </tr>
                <tr>
                    <td>ID Number:</td>
                    <td>
                        <input type="number" id="id" name="id" /></td><td><span id="error_id"></span></td>
                </tr>
                <tr>
                    <td>Birthday:</td>
                    <td>
                        <input type="text" id="year" name="year" placeholder="Date Of Birth"></td>
                    <td><span id="error_DOB"></span></td>
                </tr>
                <tr>
                    <td>Gender:</td>
                    <td>
                        <input type="radio" id="male" name="gender" value="male" />
                        <label for="male">male</label>&nbsp;
                    <input type="radio" id="female" name="gender" value="female" />
                        <label for="gender">female</label>&nbsp;
                    <input type="radio" id="other" name="gender" value="other" />
                        <label for="other">other</label>&nbsp;

                </td>
                    <td>
                        <span id="error_gender"></span>
                    </td>
                </tr>
                <tr>
                    <td>Favorite metals? </td>
                    <td>
                        <label>
                            <input type="checkbox" name="gold" value="gold">
                            Gold
                        </label>
                        <label>
                            <input type="checkbox" name="Iron" value="Iron">
                            Iron
                        </label>
                        <label>
                            <input type="checkbox" name="Copper" value="Copper">
                            Copper
                        </label>
                        <label>
                            <input type="checkbox" name="Bronze" value="Bronze">
                            Bronze
                        </label>
                        <label>
                            <input type="checkbox" name="Aluminium" value="Aluminium">
                            Aluminum
                        </label>
                        <span id="metalError" class="error"></span>
                    </td>
                </tr>
            </table>
            <span id="error_form"></span>
            <div class="form-group">
                <input class="btn" type="submit" id="submit" name="submit" />
                <input class="btn" type="reset" onclick="ClearRegister()" />
            </div>
        </form>
    </div>
</asp:Content>
