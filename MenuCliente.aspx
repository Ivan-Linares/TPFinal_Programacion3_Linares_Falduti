<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MenuCliente.aspx.cs" Inherits="Aplicacion_Web.MenuCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="MenuCliente">
        <div class="Contenedor6" style="    background-image: url(imagenes/destacada.jpg);">

            <div class="Card">
                <img src=" imagenes/email.png">
                <h3>Enviar Consulta....</h3>
                <br />
                <br />
                <a href="/" class="btn btn-primary">Enviar E-mail</a>
            </div>

            <div class="Card">
                <img src=" imagenes/logocasa.png">
                <h3>Solicitar una visita</h3>
                <br />
                <br />
                <a href="/" class="btn btn-primary">Solicitar</a>
            </div>

        </div>


    </div>
</asp:Content>
