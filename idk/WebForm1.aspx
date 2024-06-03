<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="idk.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>metal site</title>
    <!DOCTYPE html>
<html lang="en">
    <head>
        <link href="StyleSheet1.css" rel="stylesheet" />
    </head>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Golden Elegance</title>
</head>
<body>

    <header>
        <div class="logo">Golden Elegance</div>
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
        <h1>Welcome to the World of Gold</h1>
        <p>Discover the richness and beauty of this precious metal.</p>
    </section>

    <section id="about" class="about">
        <h2>About Gold</h2>
        <p>Gold is a chemical element; it has symbol Au (from Latin aurum 'gold') and atomic number 79. It is a bright, slightly orange-yellow, dense, soft, malleable, and ductile metal in pure form. Chemically, gold is a transition metal and a group 11 element. It is one of the least reactive chemical elements and is solid under standard conditions.

Gold often occurs in free elemental (native state), as nuggets or grains, in rocks, veins, and alluvial deposits. It occurs in a solid solution series with the native element silver (as in electrum), naturally alloyed with other metals like copper and palladium, and mineral inclusions such as within pyrite. Less commonly, it occurs in minerals as gold compounds, often with tellurium (gold tellurides).

Gold is resistant to most acids, though it does dissolve in aqua regia (a mixture of nitric acid and hydrochloric acid), forming a soluble tetrachloroaurate anion. Gold is insoluble in nitric acid alone, which dissolves silver and base metals, a property long used to refine gold and confirm the presence of gold in metallic substances, giving rise to the term 'acid test'. Gold dissolves in alkaline solutions of cyanide, which are used in mining and electroplating. Gold also dissolves in mercury, forming amalgam alloys, and as the gold acts simply as a solute, this is not a chemical reaction.

A relatively rare element,[7][8] gold is a precious metal that has been used for coinage, jewelry, and other arts throughout recorded history. In the past, a gold standard was often implemented as a monetary policy. Gold coins ceased to be minted as a circulating currency in the 1930s, and the world gold standard was abandoned for a fiat currency system after the Nixon shock measures of 1971.

In 2020, the world's largest gold producer was China, followed by Russia and Australia.[9] A total of around 201,296 tonnes of gold exists above ground, as of 2020.[10] This is equal to a cube with each side measuring roughly 21.7 meters (71 ft). The world's consumption of new gold produced is about 50% in jewelry, 40% in investments, and 10% in industry.[11] Gold's high malleability, ductility, resistance to corrosion and most other chemical reactions, and conductivity of electricity have led to its continued use in corrosion-resistant electrical connectors in all types of computerized devices (its chief industrial use). Gold is also used in infrared shielding, the production of colored glass, gold leafing, and tooth restoration. Certain gold salts are still used as anti-inflammatories in medicine.</p>
        <a href="#gallery" class="btn">Explore More</a>
    </section>

    <section id="gallery" class="gallery">
        <h2>Golden Gallery</h2>
        <div class="image-container">
            <!-- Add your gold images here -->
            <img src="images/Adekunle-Gold-2.jpg" alt="Gold Image 1">
            <img src="images/b90bd332-0db3-43f8-ab01-909f0c2d0b3e.jpeg" alt="Gold Image 2">
            <img src="images/images%20(2).jpeg" alt="Gold Image 3">
        </div>
    </section>

    <section id="contact" class="contact">
        <h2>Contact Us</h2>
        <p>Have questions or want to know more about the golden world? Reach out to us!</p>
        <a href="mailto:info@goldenelegance.com" class="btn">Email Us</a>
    </section>

</body>
</html>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
