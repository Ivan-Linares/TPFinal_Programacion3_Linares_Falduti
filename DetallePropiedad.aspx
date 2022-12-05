<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="DetallePropiedad.aspx.cs" Inherits="Aplicacion_Web.DetallePropiedad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Contenedor">
        <div class="card" style="width: 28rem; margin: auto; align-content: center">
            <asp:Image ID="ImagePropiedad" runat="server" ImageUrl="./imagenes/PlaceHolder.png" onerror="this.src= './imagenes/PlaceHolder.png'" />
            <div class="card-body">
            </div>
            <asp:Label ID="LbTipo" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="LbDescrip" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="LbCantAmb" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="LbMts2" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="LbDireccion" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="LbPrecio" runat="server" Text="Label"></asp:Label>
            <br />
            <%if (TieneCochera()) {  %>
            <asp:Label ID="LbCochera" runat="server" Text="Posee cochera"></asp:Label>
            <br />
            <%} %>
            <%if (EnVenta()) {  %>
            <asp:Label ID="LbVende" runat="server" Text="En Venta"></asp:Label>
            <br />
            <%}%>
            <% else { %>
            <asp:Label ID="LbAlquila" runat="server" Text="En Alquiler"></asp:Label>
            <br />
            <%} %>
        </div>
    </div>
    <div>
        <asp:Button ID="btnBack" runat="server" CssClass="btn btn-primary" Text="Volver" OnClick="btnBack_Click" />
    </div>
</asp:Content>
