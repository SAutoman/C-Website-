<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="copper.aspx.cs" Inherits="idk.copper" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/default.css" rel="stylesheet" 
    <title>Copper Exploration</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="home" class="hero">
    <h1>Explore the World of Copper</h1>
    <p>Unveil the unique properties and applications of this remarkable metal.</p>
</section>

<section id="about" class="about">
    <h2>About Copper</h2>
    <p>Copper is a chemical element; it has symbol Cu (from Latin: cuprum) and atomic number 29. It is a soft, malleable, and ductile metal with very high thermal and electrical conductivity. A freshly exposed surface of pure copper has a pinkish-orange color. Copper is used as a conductor of heat and electricity, as a building material, and as a constituent of various metal alloys, such as sterling silver used in jewelry, cupronickel used to make marine hardware and coins, and constantan used in strain gauges and thermocouples for temperature measurement.</p>
    <a href="#gallery" class="btn">Explore Further</a>
</section>

<section id="gallery" class="gallery">
    <h2>Copper Gallery</h2>
    <div class="image-container">
        <img src="images/cables-copper-conductivity-industry.jpg" />
        <img src="images/copper-mekas-cable.jpg" />
        <img src="images/dTdiJDBQgDsvbPpxDYjHTh.jpg" />
    </div>
</section>

<section id="contact" class="contact">
    <h2>Contact Us</h2>
    <p>Have questions or want to delve deeper into the world of copper? Reach out to us!</p>
    <a href="mailto:s81282@holon.ort.org.il" class="btn">Email Us</a>
</section>
</asp:Content>
