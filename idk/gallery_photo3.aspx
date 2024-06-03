<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="gallery_photo3.aspx.cs" Inherits="idk.gallery_photo3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="Styles/gallery_pictures.css" rel="stylesheet" />
        <title>Gallery</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <center>
      <img src="images/H7ac5ca2310ca44bdae6d6494b805a192B.png" style="height:400px" />

      <table>

          <tr>
              <td><a href="gallery_photo2.aspx"><img src="images/Arrow_left.svg.png" style="height:300px"/> </a>

              </td>
              <td><a href="gallery.aspx"class="btn">בחזרה לגלריה</a>

              </td>
              <td><a href="gallery_photo4.aspx"><img src="images/Arrow_right.svg.png" style="height:300px"/></a>

              </td>

          </tr>

      </table>
</center>
</asp:Content>
