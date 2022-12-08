<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="FormularioVisita.aspx.cs" Inherits="Aplicacion_Web.FormularioVisita" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<div class="FormularioEmail">
        <div class="Contenedor7" style="background-image: url(imagenes/anuncio1.jpg);">

            <div class="contact_form">

                <div class="formulario">
                    <h1>Solicita una visita</h1>
                    <h3>Queres visitar una de nuestras propiedades,completa el siguiente formulario </h3>

                    <p>
                        <asp:Label runat="server" ID="lblnombre" class="colocar_nombre">Nombre
										<span class="obligatorio">*</span>
                        </asp:Label>
                        <input type="text" name="introducir_nombre" id="nombre" required="required" placeholder="Escribe tu nombre">
                    </p>
                    <p>
                        <asp:Label runat="server" ID="lblemail" class="colocar_email">Apellido
										<span class="obligatorio">*</span>
                        </asp:Label>
                        <input type="email" name="introducir_email" id="email" required="required" placeholder="Escribe tu Apellido">
                    </p>
                    <p>
                        <asp:Label runat="server" ID="lbltelefone" class="colocar_telefono">Teléfono
                        </asp:Label>
                        <input type="tel" name="introducir_telefono" id="telefono" placeholder="Escribe tu teléfono">
                    </p>
                    <p>
                        <asp:Label runat="server" ID="lblasunto" class="colocar_asunto">Asunto
										<span class="obligatorio">*</span>
                        </asp:Label>
                        <input type="text" name="introducir_asunto" id="assunto" required="required" placeholder="Escribe un asunto">
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
                        <asp:Button ID="BtnConfirmar" runat="server" Text="Confirmar" OnClick="BtnConfirmar_Click" />
                    </p>

                    <p class="aviso">
                        <span class="obligatorio">* </span>los campos son obligatorios.
                    </p>

                </div>
            </div>
        </div>
    </div>--%>

     <br />
    <br />
    <br />
    <br />
    <div class="ListadoVisitasUsuarios">
        <div class="Contenedor5" style="background-color: white">
            <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
            <div>
                <div>
                    <asp:GridView ID="GvVisitas" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="7"
                        CssClass="table table-dark table-borderer" OnSelectedIndexChanged="GvVisitas_SelectedIndexChanged"
                        DataKeyNames="Id">
                        <Columns>
                            <asp:BoundField HeaderText="Numero" DataField="Id" />
                            <asp:BoundField HeaderText="Numero Propiedad" DataField="IdPropiedad" />
                            <asp:BoundField HeaderText="Vendedor a Caego" DataField="IdVendedor" />
                            <asp:BoundField HeaderText="Fecha" DataField="Fecha" />
                            <asp:BoundField HeaderText="Hora" DataField="Hora" />
                            <asp:CheckBoxField HeaderText="Estado" DataField="Estado" />
                            <asp:CommandField HeaderText="Modificar/Eliminar" ShowSelectButton="true" SelectText="✍" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
