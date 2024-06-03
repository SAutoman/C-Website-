<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="iron.aspx.cs" Inherits="idk.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/default.css" rel="stylesheet" />
    <title>Iron Insight</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <section id="home" class="hero">
        <h1>Explore the World of Iron</h1>
        <p>Uncover the versatility and significance of this essential metal.</p>
    </section>

    <section id="about" class="about">
        <h2>About Iron</h2>
        <p>Iron is a chemical element with the symbol Fe (from Latin: ferrum) and atomic number 26. It is a metal in the first transition series. It is the most common element (by mass) forming the planet Earth  just ahead of oxygen (32.1% and 30.1%, respectively), forming much of Earth's outer and inner core. It is the fourth most common element in the Earth's crust, being mainly deposited by meteorites in its metallic state, with its ores also being found there.</p>
        <a href="#gallery" class="btn">Discover More</a>
    </section>

    <section id="gallery" class="gallery">
        <h2>Iron Gallery</h2>
        <div class="image-container">
            <img src="images/Iron_electrolytic_and_1cm3_cube.jpg" />
            <img src="images/GettyImages-157526585-93425538070d4422ad42d22af28c0758.jpg"  />
            <img src="images/Gallium_crystals.jpg" />
        </div>
    </section>

    <section id="contact" class="contact">
        <h2>Contact Us</h2>
        <p>Have questions or want to delve deeper into the world of iron? Reach out to us!</p>
        <a href="mailto:s81282@holon.ort.org.il" class="btn">Email Us</a>
    </section>
</asp:Content>
