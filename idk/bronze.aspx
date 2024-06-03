<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="bronze.aspx.cs" Inherits="idk.bronze" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/default.css" rel="stylesheet" />
    <title>Bronze Discoveries</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="home" class="hero">
    <h1>Explore the World of Bronze</h1>
    <p>Uncover the history and versatility of this alloy.</p>
</section>

<section id="about" class="about">
    <h2>About Bronze</h2>
    <p>Bronze is an alloy consisting primarily of copper, commonly with about 12–12.5% tin and often with the addition of other metals (including aluminium, manganese, nickel, or zinc) and sometimes non-metals, such as phosphorus, or metalloids such as arsenic or silicon. These additions produce a range of alloys that may be harder than copper alone, or have other useful properties, such as strength, ductility, or machinability.</p>
    <p2>The archaeological period in which bronze was the hardest metal in widespread use is known as the Bronze Age. The beginning of the Bronze Age in western Eurasia and India is conventionally dated to the mid-4th millennium BC (~3500 BC), and to the early 2nd millennium BC in China;[1] elsewhere it gradually spread across regions. The Bronze Age was followed by the Iron Age starting about 1300 BC and reaching most of Eurasia by about 500 BC, although bronze continued to be much more widely used than it is in modern times.</p2>
    <a href="#gallery" class="btn">Discover More</a>
</section>

<section id="gallery" class="gallery">
    <h2>Bronze Gallery</h2>
    <div class="image-container">
        <img src="images/AnticStore-Large-Ref-91857.jpg" />
        <img src="images/Bronze-Ingots-OPT.jpg" />
        <img src="images/images%20(3).jpeg" />
    </div>
</section>

<section id="contact" class="contact">
    <h2>Contact Us</h2>
    <p>Have questions or want to delve deeper into the world of bronze? Reach out to us!</p>
    <a href="mailto:s81282@holon.ort.org.il" class="btn">Email Us</a>
</section>
</asp:Content>
