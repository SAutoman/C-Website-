<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="gallery_photo4.aspx.cs" Inherits="idk.gallery_photo4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/gallery_pictures.css" rel="stylesheet" />
    <title>Gallery</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <img src="images/dTdiJDBQgDsvbPpxDYjHTh.jpg"  style="height:400px" />

        <table>

            <tr>
                <td><a href="gallery_photo3.aspx"><img src="images/Arrow_left.svg.png" style="height:300px"/> </a>

                </td>
                <td><a href="gallery.aspx"class="btn">בחזרה לגלריה</a>

                </td>
                <td><a href="gallery_photo5.aspx"><img src="images/Arrow_right.svg.png" style="height:300px"/></a>

                </td>

            </tr>

        </table>
  </center>
</asp:Content>
