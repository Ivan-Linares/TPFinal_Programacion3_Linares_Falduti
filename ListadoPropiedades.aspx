<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ListadoPropiedades.aspx.cs" Inherits="Aplicacion_Web.ListadoPropiedades" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Contenedor1" >
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <asp:Repeater runat="server" ID="Repeater">
                <ItemTemplate>
                    <div class="Card1">
                        <img src="<%#Eval("UrlImagen") %>" onerror="this.src= './imagenes/PlaceHolder.png'">
                        <br />
                        <br />
                        <p class="card-Descripcion"><%#Eval("Descripcion") %></p>
                        <br />
                        <p class="card-Precio">$<%#Eval("Precio") %></p>
                        <br />
                        <a href="DetallePropiedad.aspx?id=<%#Eval("IdPropiedad")%>">Ver Detalle</a>
                        <asp:Button ID="btnComprar" runat="server" Text="Alquilar/Comprar" CssClass="btn btn-primary" CommandArgument='<%#Eval("IdPropiedad") %>' CommandName="IdPropiedad" OnClick="btnComprar_Click" />
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

</asp:Content>
