<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="FormularioVisita.aspx.cs" Inherits="Aplicacion_Web.FormularioVisita" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="FormularioEmail">
        <div class="Contenedor7" style="background-image: url(imagenes/anuncio1.jpg);">

            <div class="contact_form">

                <div class="formulario">
                    <h1>Solicita una visita</h1>
                    <h3>Queres visitar una de nuestras propiedades,completa el siguiente formulario </h3>





                    <p>
                        <asp:Label runat="server" ID="lblnombre" class="colocar_nombre">Nombre
										<span class="obligatorio">*</span>
                        </asp:Label>
                        <asp:TextBox ID="TxtNombre" runat="server" type="text"  required="required" placeholder="Escribe tu nombre"></asp:TextBox>
                    </p>

                    <p>
                        <asp:Label runat="server" ID="lblemail" class="colocar_email">Apellido
										<span class="obligatorio">*</span>
                        </asp:Label>
                          <asp:TextBox ID="TxtApellido" runat="server" type="text"  required="required" placeholder="Escribe tu Apellido"></asp:TextBox>
                    </p>

                    <p>
                        <asp:Label runat="server" ID="lbltelefone" class="colocar_telefono">Teléfono
                        </asp:Label>
                        <asp:TextBox ID="TxtTelefono" runat="server" type="text"  required="required" placeholder="Escribe su telefono"></asp:TextBox>

                    </p>



                    <p>
                        <asp:Label runat="server" ID="lblasunto" class="colocar_asunto">Numero de Propiedad
										<span class="obligatorio">*</span>
                        </asp:Label>
                        <asp:TextBox ID="TxtNumPropiedad" runat="server" type="text"  required="required" placeholder="Escribeel numero de propiedad"></asp:TextBox>

                    </p>

                    <p>
                        <asp:Label runat="server" ID="txtFechaVisita" class="form-label">Fecha Visita</asp:Label>
                        <asp:TextBox runat="server" ID="txtFechaIng" TextMode="Date" CssClass="form-control" Width="350px" />
                    </p>

                    <p>
                        <asp:Label runat="server" ID="txtHoraVisita" class="form-label">Hora Visita</asp:Label>
                        <asp:TextBox runat="server" ID="txthora" TextMode="Time" CssClass="form-control" Width="350px" />
                    </p>
                    <p>
                        <asp:Button ID="BtnConfirmar" runat="server" Text="Confirmar" Onclick="BtnConfirmar_Click" />
                    </p>

                    <p class="aviso">
                        <span class="obligatorio">* </span>los campos son obligatorios.
                    </p>

                </div>
            </div>


        </div>
</asp:Content>
