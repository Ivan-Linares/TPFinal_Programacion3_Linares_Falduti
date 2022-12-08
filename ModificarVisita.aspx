<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ModificarVisita.aspx.cs" Inherits="Aplicacion_Web.ModificarVisita" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col">
        <div class="FormularioEmail">
            <div class="Contenedor7">
                <div class="contact_form">
                    <div class="formulario">
                        <h1>Modifique su visita</h1>
                        <p>
                            <asp:Label runat="server" ID="LbFechaVisita" class="form-label">Fecha Visita</asp:Label>
                            <asp:TextBox runat="server" ID="txtFecha" TextMode="Date" CssClass="form-control" Width="350px" />
                        </p>
                        <p>
                            <asp:Label runat="server" ID="LbHoraVisita" class="form-label">Hora Visita</asp:Label>
                            <asp:TextBox runat="server" ID="txthora" TextMode="Time" CssClass="form-control" Width="350px" />
                        </p>
                        <p>
                            <asp:Button ID="BtnConfirmar" runat="server" Text="Confirmar" OnClick="BtnConfirmar_Click" />
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Aceptar"/>
    <updatepanel>
        <contenttemplate>
            <asp:Button ID="BtnDelete" runat="server" Text="Eliminar" />
            <%  if (EliminarCheck)
                {  %>
            <label for="ChkEliminar" class="text-info">¿Desea Confirmar Eliminacion?:</label>
            <asp:CheckBox ID="ChkEliminar" runat="server" />
            <asp:Button ID="BtnConfirmarElim" runat="server" Text="Eliminar" />
            <%} %>
        </contenttemplate>
    </updatepanel>

</asp:Content>
