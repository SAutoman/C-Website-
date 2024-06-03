<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="gallery_photo1.aspx.cs" Inherits="idk.gallery_photo1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/gallery%20pictures.css" rel="stylesheet" />
    <title>Gallery</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <center>
        <img src="images/6750c82a231c632503dcd97649d1f129.jpg"  style="height:400px" />

        <table>

            <tr>
                <td><a href="gallery_photo6.aspx"><img src="images/Arrow_left.svg.png" style="height:300px"/> </a>

                </td>
                <td><a href="gallery.aspx"class="btn">בחזרה לגלריה</a>

                </td>
                <td><a href="gallery_photo2.aspx"><img src="images/Arrow_right.svg.png" style="height:300px"/></a>

                </td>

            </tr>

        </table>

    </center>
</asp:Content>
