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



    <section class="contenedor">
            <div class="card">
                <img src=" imagenes/icono1.svg " class="card-img-top" alt="Seguridad">
                <h3>Seguridad</h3>
                <p></p>
            </div>
      
            <div class="card">
                <img src=" imagenes/icono2.svg " class="card-img-top" alt="Precio">
                <h3>Precio</h3>
                <p></p>
            </div>
      

            <div class="card">
                <img src=" imagenes/icono3.svg " class="card-img-top" alt="Tiempo">
                <h3>Tiempo</h3>
                <p></p>
            </div>

    </section>

 



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
