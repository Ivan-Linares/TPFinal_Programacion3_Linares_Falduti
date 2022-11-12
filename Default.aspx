<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPFinal_Programacion3_Linares_Falduti.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Estilos/stilos_master.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.1.1/css/all.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
     
    <header style="background: url(imagenes/header.jpg)">
        <nav class="navegacion">
            <img src="imagenes/logo.svg" width="300" height="40" alt="Logo tipo de bienes Raices">
            <ul class="menu">
                <li>
                    <asp:HyperLink ID="HlHome" CssClass="nav-link" NavigateUrl="~/Default.aspx" runat="server">Home</asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HlAnuncios" CssClass="nav-link" NavigateUrl="~/Anuncios.aspx" runat="server">Anuncios</asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HlContacto" CssClass="nav-link" NavigateUrl="~/Contactos.aspx" runat="server">Contacto</asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HlNosotros" CssClass="nav-link" NavigateUrl="~/Nosotros.aspx" runat="server">Nosotros</asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink1" CssClass="nav-link" NavigateUrl="~/Login.aspx" runat="server">Login</asp:HyperLink>
                </li>
            </ul>
        </nav>
    </header>

        <h1 style="text-align: center; color: aliceblue">Mas Sobre Nosotros</h1>
    <div class="ContenedorNosotros">
        <div class="card">
            <img src="imagenes/icono1.svg" alt="Icono seguridad" />
            <h3>Seguridad</h3>
            <p></p>
        </div>

        <div class="card">
            <img src="imagenes/icono2.svg" alt="Icono Precio" />
            <h3>Precio</h3>
            <p></p>
        </div>


        <div class="card">
            <img src="imagenes/icono3.svg" alt="Icono Tiempo" />
            <h3>Tiempo</h3>
            <p> Nuestros proyectos están basados en la responsabilidad y compromiso de cumplir lo prometido </p>
        </div>
    </div>


    <footer class="footer">
        <div class="footer_contenido">
            <h2>Bienes Raices</h2>
        </div>
        <div class="Redes">
            <i class="fab fa-instagram"></i>
            <i class="fab fa-linkedin"></i>
            <i class="fab fa-twitter-square"></i>
        </div>
    </footer>
</asp:Content>
