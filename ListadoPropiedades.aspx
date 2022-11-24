﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ListadoPropiedades.aspx.cs" Inherits="Aplicacion_Web.ListadoPropiedades" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Contenedor1">
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <asp:Repeater runat="server" ID="Repeater">
                <ItemTemplate>
                    <div class="Card1">
                        <img src="<%#Eval("UrlImagen") %>">
                        <br />
                        <br />
                        <p class="card-Descripcion"><%#Eval("Descripcion") %></p>
                         <br />
                        <p class="card-Precio">$<%#Eval("Precio") %></p> 
                        <br />
                        <asp:Button ID="btnDescrip" runat="server" Text="Ver Detalle" CssClass="btn btn-primary" CommandArgument='<%#Eval("IdPropiedad") %>' CommandName="IdPropiedad" OnClick="btnDescrip_Click" />
                        <asp:Button ID="btnFav" runat="server" Text="Agregar a Favoritos" CssClass="btn btn-primary" CommandArgument='<%#Eval("IdPropiedad") %>' CommandName="IdPropiedad" OnClick="btnFav_Click" />
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

</asp:Content>
