<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="idk.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<!DOCTYPE html>
<html lang="en">
<head>
    <link href="StyleSheet3.css" rel="stylesheet" />
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iron Insight</title>
</head>
<body>

    <header>
        <div class="logo">Iron Insight</div>
        <nav>
            <ul>
                <li><a href="home.aspx">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#gallery">Gallery</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
        </nav>
    </header>

    <section id="home" class="hero">
        <h1>Explore the World of Iron</h1>
        <p>Uncover the versatility and significance of this essential metal.</p>
    </section>

    <section id="about" class="about">
        <h2>About Iron</h2>
        <p>Iron is a chemical element with the symbol Fe (from Latin: ferrum) and atomic number 26. It is a metal in the first transition series. It is the most common element (by mass) forming the planet Earth as a whole.</p>
        <a href="#gallery" class="btn">Discover More</a>
    </section>

    <section id="gallery" class="gallery">
        <h2>Iron Gallery</h2>
        <div class="image-container">
            <!-- Add your iron images here -->
            <img src="images/iron-image1.jpg" alt="Iron Image 1">
            <img src="images/iron-image2.jpg" alt="Iron Image 2">
            <img src="images/iron-image3.jpg" alt="Iron Image 3">
        </div>
    </section>

    <section id="contact" class="contact">
        <h2>Contact Us</h2>
        <p>Have questions or want to delve deeper into the world of iron? Reach out to us!</p>
        <a href="mailto:info@ironinsight.com" class="btn">Email Us</a>
    </section>


</body>
</html>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
