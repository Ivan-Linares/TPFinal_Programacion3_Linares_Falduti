﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="DetallePropiedad.aspx.cs" Inherits="Aplicacion_Web.DetallePropiedad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="Contenedor">
        <div class="card" style="width: 28rem;margin:auto; align-content:center">
            <img class="card-img-top" src="<%: Propiedad.UrlImagen %>" alt="Card Image">
            <div class="card-body">
                <h5 class="card-title"><%: Propiedad. %></h5>
            </div>
            <ul class="list-group list-group-flush" style=" align-content:center;text-align:center">
                <li class ="list-group-item"><%: Propiedad.Tipo %></li>
                <li class="list-group-item">$<%: Propiedad.Precio %></li>
                <li class="list-group-item"><%: Propiedad.CantAmbientes %></li>

            </ul>
            <div class="card-body">
                <asp:Button ID="btnBack" runat="server" CssClass="btn btn-primary" Text="Volver" OnClick="btnBack_Click"/>
                <asp:Button ID="Button1" runat="server" Text="Button" />
                <asp:Button ID="Button2" runat="server" Text="Button" />
                <asp:Button ID="Button3" runat="server" Text="Button" />
            </div>
        </div>
    </div>
</asp:Content>
