<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Questionnaire.aspx.cs" Inherits="idk.Questionnaire" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<!DOCTYPE html>
<html lang="en">
<head>
    <link href="Styles/Quiz.css" rel="stylesheet" />
    <link href="Styles/colour_red.css" rel="stylesheet" />

</head>
<body>
    <form id="quizForm">
    <table>

        <tr>
            <td>Question 1: Where is iron primarily found on Earth?</td>
            <td>
                <label><input type="radio" name="q1" value="option1"> Earth's Atmosphere  <img src="images/Iron_electrolytic_and_1cm3_cube.jpg"  class="img-small"></label>
                <label><input type="radio" name="q1" value="option2"> Earth's Crust  <img src="images/GettyImages-157526585-93425538070d4422ad42d22af28c0758.jpg" class="img-small"></label>
                <label><input type="radio" name="q1" value="option3"> Earth's Core <img src="images/Gallium_crystals.jpg"  class="img-small"></label>
                <span id="q1Result"></span>
            </td>
        </tr>
<tr>
    <td>Question 2: What is the chemical element of Gold? </td>
    <td>
        <label><input type="checkbox" name="q2" value="option1"> Nu <img src="images/Gold_prices.jpg" class="img-small"</label>
        <label><input type="checkbox" name="q2" value="option2"> Au <img src="images/images%20(2).jpeg"  class="img-small"</label>
        <label><input type="checkbox" name="q2" value="option3"> Fe <img src="images/Adekunle-Gold-2.jpg" class="img-small"/></label>
        <span id="q2Result"></span>
    </td>
</tr>
<tr>
    <td>Question 3: What property of aluminium makes it visually resemble silver, and what protective layer forms on its surface when exposed to air?</td>
    <td>
        <label><input type="checkbox" name="q3" value="option1"> Density and Nickel Oxide  <img src="images/600px-Aluminium.jpg" class="img-small"></label>
        <label><input type="checkbox" name="q3" value="option2"> Reflectivity and Aluminum Oxide <img src="images/c147dd91-f3de-4c8c-b290-42d88f5db9b7__shutterstock_89747509-copy.jpg" class="img-small"></label>
        <label><input type="checkbox" name="q3" value="option3"> Magnetism and Oxygen Layer <img src="images/aluminium-burns-and-other-misconceptions02.jpg" class="img-small"></label>
        <span id="q3Result"></span>
    </td>
</tr>
<tr>
    <td>Question 4: What property of copper makes it widely used as a conductor of heat and electricity?</td>
    <td>
        <label><input type="radio" name="q4" value="option1"> High Density <img src="images/cables-copper-conductivity-industry.jpg" class="img-small"></label>
        <label><input type="radio" name="q4" value="option2"> Brittle Structure  <img src="images/dTdiJDBQgDsvbPpxDYjHTh.jpg" class="img-small"></label>
        <label><input type="radio" name="q4" value="option3"> High Thermal and Electrical Conductivity <img src="images/copper-mekas-cable.jpg" class="img-small"></label>
        <span id="q4Result"></span>
    </td>
</tr>
<tr>
    <td>Question 5: In which archaeological period was bronze considered the hardest metal in widespread use?</td>
    <td>
        <label><input type="checkbox" name="q5" value="option1"> Stone Age <img src="images/images%20(3).jpeg" class="img-small"></label>
        <label><input type="checkbox" name="q5" value="option2"> Iron Age  <img src="images/Bronze-Ingots-OPT.jpg" class="img-small"></label>
        <label><input type="checkbox" name="q5" value="option3"> Bronze Age  <img src="images/AnticStore-Large-Ref-91857.jpg" class="img-small"></label>
        <span id="q5Result"></span>
    </td>
</tr>
<tr>
    <td>Question 6: Which chemical element is the primary component of bronze?</td>
    <td>
        <label><input type="checkbox" name="q6" value="option1"> Copper  <img src="images/copper-mekas-cable.jpg" class="img-small"></label>
        <label><input type="checkbox" name="q6" value="option2"> Iron  <img src="images/Iron_electrolytic_and_1cm3_cube.jpg"class="img-small"></label>
        <label><input type="checkbox" name="q6" value="option3"> Aluminum  <img src="images/aluminium-burns-and-other-misconceptions02.jpg" class="img-small"></label>
        <span id="q6Result"></span>
    </td>
</tr>


    </table>
        <div class="form-group" >
            <button class="btn" type="button" onclick="submitQuiz()">Submit</button>
            <button class="btn" type="reset">Reset</button>
            <span id="score"></span>
        </div>
    </form>
    <script src="js/quiz.js"></script>


</body>
</html>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
