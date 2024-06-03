<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Aluminum.aspx.cs" Inherits="idk.Aluminum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Aluminum Discoveries</title>
    <link href="Styles/default.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="home" class="hero">
    <h1>Explore the World of Aluminum</h1>
    <p>Discover the versatility and significance of this lightweight metal.</p>
</section>

<section id="about" class="about">
    <h2>About Aluminum</h2>
    <p>Aluminium (aluminum in North American English) is a chemical element; it has symbol Al and atomic number 13. Aluminium has a density lower than that of other common metals; about one-third that of steel. It has a great affinity towards oxygen, forming a protective layer of oxide on the surface when exposed to air. Aluminium visually resembles silver, both in its color and in its great ability to reflect light. It is soft, nonmagnetic and ductile. It has one stable isotope: 27Al, which is highly abundant, making aluminium the twelfth-most common element in the universe. The radioactivity of 26Al is used in radiometric dating.</p>
    <a href="#gallery" class="btn">Learn More</a>
</section>

<section id="gallery" class="gallery">
    <h2>Aluminum Gallery</h2>
    <div class="image-container">
        <img src="images/aluminium-burns-and-other-misconceptions02.jpg" />
        <img src="images/600px-Aluminium.jpg" />
        <img src="images/c147dd91-f3de-4c8c-b290-42d88f5db9b7__shutterstock_89747509-copy.jpg" />
    </div>
</section>
<section id="contact" class="contact">
    <h2>Contact Us</h2>
    <p>Have questions or want to explore more about aluminum? Reach out to us!</p>
    <a href="mailto:s81282@holon.ort.org.il" class="btn">Email Us</a>
</section>
</asp:Content>
