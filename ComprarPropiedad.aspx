<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ComprarPropiedad.aspx.cs" Inherits="Aplicacion_Web.ComprarPropiedad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container text-center">
        <div class="row">
            <div class="col">
                <div class="Contenedor">
                    <div class="FormularioEmail">
                        <div class="Contenedor7">
                            <div class="contact_form">
                                <div class="formulario">
                                    <asp:Image ID="ImagePropiedad" runat="server" ImageUrl="./imagenes/PlaceHolder.png" onerror="this.src= './imagenes/PlaceHolder.png'" Style="width: 28rem;" />
                                    <div class="card-body">
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
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
 <%-------------------------------------------------------------------------------------------------------------------------------%>
            <div class="col">
                <div class="FormularioEmail">
                    <div class="Contenedor7">
                        <div class="contact_form">
                            <div class="formulario">
                                <h1>Solicita una visita</h1>
                                <p>
                                    <asp:Label runat="server" ID="lblasunto" class="colocar_asunto">Asunto
										<span class="obligatorio">*</span>
                                    </asp:Label>
                                    <input type="text" name="introducir_asunto" id="assunto" required="required" placeholder="Escribe un asunto">
                                </p>
                                <p>
                                    <asp:Label runat="server" ID="LbFechaVisita" class="form-label">Fecha Visita</asp:Label>
                                    <asp:TextBox runat="server" ID="txtFechaIng" TextMode="Date" CssClass="form-control" Width="350px" />
                                </p>
                                <p>
                                    <asp:Label runat="server" ID="LbHoraVisita" class="form-label">Hora Visita</asp:Label>
                                    <asp:TextBox runat="server" ID="txthora" TextMode="Time" CssClass="form-control" Width="350px" />
                                </p>
                                <p>
                                    <asp:Button ID="BtnConfirmar" runat="server" Text="Confirmar" OnClick="BtnConfirmar_Click" />
                                </p>
                                <p class="aviso">
                                    <span class="obligatorio">* </span>los campos son obligatorios.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
