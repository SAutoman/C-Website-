<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="idk.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Metallic Wonders</title>
    <link href="StyleSheet2.css" rel="stylesheet" />
</head>
<body>
    <header>
        <h1>Metallic Wonders</h1>
        <nav>
            <ul>
                <li><a href="WebForm1.aspx">Gold</a></li>
                <li><a href="WebForm4.aspx">Iron</a></li>
                <li><a href="Aluminum.aspx">Aluminum</a></li>
                <li><a href="copper.aspx">Copper</a></li>
                <li><a href="#bronze">Bronze</a></li>
                <li><a href="Gallery">Gallery</a></li>
                <li><a href="About">About</a></li>
            </ul>

        </nav>

    </header>



    <section id="gold" class="metal-section">
        <h2>Gold</h2>
        <p>Discover the allure and timeless beauty of gold. Learn about its properties, uses, and significance throughout history.</p>
        <a href="WebForm1.aspx" class="btn">Explore Gold</a>
    </section>

    <section id="iron" class="metal-section">
        <h2>Iron</h2>
        <p>Explore the strength and versatility of iron. From construction to manufacturing, iron plays a crucial role in various industries.</p>
        <a href="WebForm4.aspx" class="btn">Discover Iron</a>
    </section>

    <section id="aluminum" class="metal-section">
        <h2>Aluminum</h2>
        <p>Learn about the lightweight and corrosion-resistant properties of aluminum. Discover its wide range of applications in modern life.</p>
        <a href="Aluminum.aspx" class="btn">Dive into Aluminum</a>
    </section>

    <section id="copper" class="metal-section">
        <h2>Copper</h2>
        <p>Explore the conductivity and malleability of copper. From electrical wiring to artistic creations, copper has diverse uses.</p>
        <a href="copper.aspx" class="btn">Uncover Copper</a>
    </section>

    <section id="bronze" class="metal-section">
        <h2>Bronze</h2>
        <p>Discover the artistry and durability of bronze. Learn about its historical significance and modern applications in sculpture and architecture.</p>
        <a href="bronze.html" class="btn">Explore Bronze</a>
    </section>

</body>
</html>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
