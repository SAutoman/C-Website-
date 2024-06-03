<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="idk.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Metal Site</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="gold" class="metal-section">
    <h2>Gold</h2>
    <p>Discover the allure and timeless beauty of gold. Learn about its properties, uses, and significance throughout history.</p>
    <a href="gold.aspx" class="btn">Explore Gold</a>
</section>

<section id="iron" class="metal-section">
    <h2>Iron</h2>
    <p>Explore the strength and versatility of iron. From construction to manufacturing, iron plays a crucial role in various industries.</p>
    <a href="iron.aspx" class="btn">Discover Iron</a>
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
    <a href="bronze.aspx" class="btn">Explore Bronze</a>
</section>
</asp:Content>
