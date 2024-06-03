<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="idk.gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/gallery_.css" rel="stylesheet" />
    <title>Gallery</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <u>
        <center>
            <h1 class="gallery_colr">Gallery</h1>
        </center>

    </u>

    <center>
        <table>
            <tr>
    <td>
        <a href="gallery_photo1.aspx"><img src="images/6750c82a231c632503dcd97649d1f129.jpg" class="image_om" /></a>
        
    </td>
    <td>
        <a href="gallery_photo2.aspx" ><img src="images/הורדה%20(1).jpeg" class="image_om" /></a>
        
    </td>

    <td>
        <a href="gallery_photo3.aspx"><img src="images/H7ac5ca2310ca44bdae6d6494b805a192B.png" class="image_om"/></a>
    </td>


</tr>

        </table>
        <table style="margin-top: 100px;">
            <tr>
                <td>
                    <a href="gallery_photo4.aspx"><img src="images/dTdiJDBQgDsvbPpxDYjHTh.jpg" class="image_om"/></a>

                </td>
                <td>
                    <a href="gallery_photo5.aspx"> <img src="images/GettyImages-157526585-93425538070d4422ad42d22af28c0758.jpg" class="image_om"/></a>

                </td>
                <td>
                    <a href="gallery_photo6.aspx"> <img src="images/images%20(3).jpeg" class="image_om"/></a>

                </td>
            </tr>
        </table>
            
    </center>
</asp:Content>
