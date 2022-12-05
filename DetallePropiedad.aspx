<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="DetallePropiedad.aspx.cs" Inherits="Aplicacion_Web.DetallePropiedad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Contenedor">
        <div class="card" style="width: 28rem; margin: auto; align-content: center">
            <asp:Image ID="ImagePropiedad" runat="server" ImageUrl="./imagenes/PlaceHolder.png" onerror="this.src= './imagenes/PlaceHolder.png'" />
            <div class="card-body">
            </div>
            <div>
                <asp:Label runat="server" Text="Tipo de Propiedad: "></asp:Label>
                <asp:Label ID="LbTipo" runat="server" Text="Label"></asp:Label>
            </div>
            <div>
                <asp:Label runat="server" Text="Descripcion: "></asp:Label>
                <asp:Label ID="LbDescrip" runat="server" Text="Label"></asp:Label>
            </div>
            <div>
                <asp:Label runat="server" Text="Cantidad de Ambientes: "></asp:Label>
                <asp:Label ID="LbCantAmb" runat="server" Text="Label"></asp:Label>
            </div>
            <div>
                <asp:Label runat="server" Text="M²: "></asp:Label>
                <asp:Label ID="LbMts2" runat="server" Text="Label"></asp:Label>
            </div>
            <div>
                <asp:Label runat="server" Text="Direccion: "></asp:Label>
                <asp:Label ID="LbDireccion" runat="server" Text="Label"></asp:Label>
            </div>
            <div>
                <asp:Label runat="server" Text="Precio: "></asp:Label>
                <asp:Label ID="LbPrecio" runat="server" Text="Label"></asp:Label>
            </div>
            <div>
                <%if (TieneCochera())
                    {  %>
                <asp:Label ID="LbCochera" runat="server" Text="Posee cochera"></asp:Label>
                <%} %>
            </div>
            <div>
                <%if (EnVenta())
                    {  %>
                <asp:Label ID="LbVende" runat="server" Text="En Venta"></asp:Label>
                <%}%>
                <% else
                    { %>
                <asp:Label ID="LbAlquila" runat="server" Text="En Alquiler"></asp:Label>
                <%} %>
            </div>
        </div>
    </div>
    <div>
        <asp:Button ID="btnBack" runat="server" CssClass="btn btn-primary" Text="Volver" OnClick="btnBack_Click" />
    </div>
</asp:Content>
