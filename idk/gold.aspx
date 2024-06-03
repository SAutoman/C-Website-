<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="gold.aspx.cs" Inherits="idk.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/default.css" rel="stylesheet" />
    <title>Golden Insights</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <section id="home" class="hero">
        <h1 class="about-title" > Explore the World of Gold</h1>
        <p>Uncover the richness and significance of this precious metal.</p>
    </section>

    <section id="about" class="about">
        <h2 class="about-title" > About Gold</h2>
        <p>Gold is a chemical element with the symbol Au (from Latin: aurum) and atomic number 79. It is a bright, slightly orange-yellow, dense, soft, malleable, and ductile metal in its pure form, it is a bright, slightly orange-yellow, dense, soft, malleable, and ductile metal. Chemically, gold is a transition metal, a group 11 element, and one of the noble metals. It is one of the least reactive chemical elements and is solid under standard conditions.</p>
        <a href="#gallery" class="btn">Discover More</a>
    </section>

    <section id="gallery" class="gallery">
        <h2>Golden Gallery</h2>
        <div class="image-container">
            <img src="images/Adekunle-Gold-2.jpg" />
            <img src="images/Gold_prices.jpg" />
            <img src="images/הורדה%20(1).jpeg" />
        </div>
    </section>

    <section id="contact" class="contact">
        <h2>Contact Us</h2>
        <p>Have questions or want to delve deeper into the golden world? Reach out to us!</p>
        <a href="mailto:s81282@holon.ort.org.il" class="btn">Email Us</a>
    </section>
</asp:Content>
