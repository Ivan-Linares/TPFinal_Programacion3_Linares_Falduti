<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Anuncios.aspx.cs" Inherits="TPFinal_Programacion3_Linares_Falduti.Anuncios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <font color="Olive" face="Comic Sans MS,arial">
        <h1 align="center" style="color:#808080"><i>Bienes Raices </i></h1>
        <h2 align="center" style="color:#808080">Propiedades</h2>
    </font>

    <div class="Contenedor">
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <asp:Repeater runat="server" ID="Repetidor">
                <ItemTemplate>
                    <div class="col">
                        <div class="card" style="width: 28rem;">
                            <div class="card-body">
                                <img src="<%#Eval("URLImagen") %>" class="card-img-top" alt="Imagen URL" onerror="this.src='./Images/PlaceHolder.png';" <%-- style="width: 26rem; height: 25rem"--%>>
                                <h5 class="card-title"><%#Eval("Nombre") %></h5>
                                <br />
                                <ul class="Descripcion-card">
                                    <p class="card-Precio">$<%#Eval("Precio") %></p>
                                </ul>
                                <ul class="link-detalle" cssclass="col-md-2">
                                    <a href="DetallePropiedad.aspx?id=<%#Eval("ArticuloId") %>">Ver Detalle</a>
                                </ul>
                    
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

</asp:Content>
