<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ListadoPropiedades.aspx.cs" Inherits="Aplicacion_Web.ListadoPropiedades" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Contenedor">
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <asp:Repeater runat="server" ID="Repeater">
                <ItemTemplate>
                    <div class="col">
                        <div class="card" style="width: 28rem;">
                            <div class="card-body">
                                <img src="<%#Eval("UrlImagen") %>" class="card-img-top" alt="Imagen Propiedad" onerror="this.src='./Images/PlaceHolder.png';" />
                                <br />
                                <ul class="Descripcion-card">
                                    <p class="card-Descripcion">$<%#Eval("Descripcion") %></p>
                                    <p class="card-Precio">$<%#Eval("Precio") %></p>
                                </ul>
                                <br />
                                <ul class="link-detalle" cssclass="col-md-2">
                                    <asp:Button ID="btnDescrip" runat="server" Text="Ver Detalle" CssClass="btn btn-primary" CommandArgument='<%#Eval("IdPropiedad") %>' CommandName="IdPropiedad" OnClick="btnDescrip_Click"/>
                                    <asp:Button ID="btnFav" runat="server" Text="Agregar a Favoritos" CssClass="btn btn-primary" CommandArgument='<%#Eval("IdPropiedad") %>' CommandName="IdPropiedad" OnClick="btnFav_Click"/>
                                </ul>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

</asp:Content>
