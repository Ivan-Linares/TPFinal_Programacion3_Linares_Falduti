<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPFinal_Programacion3_Linares_Falduti.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header style="background: url(imagenes/header.jpg)">
        <nav class="navegacion">
            <img src="imagenes/logo.svg" width="300" height="900" alt="Logo tipo de bienes Raices">
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

    
        <div class="ContenedorN">
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
                <p>Nuestros proyectos están basados en la responsabilidad y compromiso de cumplir lo prometido </p>
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
