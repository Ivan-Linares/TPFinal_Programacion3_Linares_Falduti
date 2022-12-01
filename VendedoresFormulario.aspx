<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="VendedoresFormulario.aspx.cs" Inherits="Aplicacion_Web.VendedoresForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="Vendedores">
        <link href="Estilos/Estilos_Vendedor.css" rel="stylesheet">
        <div class="ContenedorVendedores" style="background-color: black;">
            <div class="row row-cols-4 mb-4">
                <%  if (PuedeEliminar)
                    { %>
                <div class="col">
                    <label for="TextId" class="form-label">Apellidos</label>
                    <asp:TextBox runat="server" ID="TextId" CssClass="form-control" />
                </div>
                <%} %>
                <div class="col">
                    <label for="txtApellidos" class="form-label">Apellidos</label>
                    <asp:TextBox runat="server" ID="txtApellidos" CssClass="form-control" />
                </div>
                <div class="col">
                    <label for="txtNombres" class="form-label">Nombres</label>
                    <asp:TextBox runat="server" ID="txtNombres" CssClass="form-control" />
                </div>
                <div class="col">
                    <label for="ddlSexo" class="form-label">Sexo</label>
                    <asp:DropDownList runat="server" ID="ddlSexo" class="form-select">
                        <asp:ListItem Text="F" />
                        <asp:ListItem Text="M" />
                        <asp:ListItem Text="O" />
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row row-cols-4 mb-4">
                <div class="col">
                    <label for="txtNroLegajo" class="form-label">Número de Legajo</label>
                    <asp:TextBox runat="server" ID="txtNroLegajo" CssClass="form-control" />
                </div>
                <div class="col">
                    <label for="txtDni" class="form-label">Número de documento</label>
                    <asp:TextBox runat="server" ID="txtDni" CssClass="form-control" />
                </div>
                <div class="col">
                    <label for="txtFechaIng" class="form-label">Fecha de Ingreso</label>
                    <asp:TextBox runat="server" ID="txtFechaIng" TextMode="Date" CssClass="form-control" />
                </div>
            </div>
            <div class="row row-cols-4 mb-4">
                <div class="col">
                    <label for="txtDomicilio" class="form-label">Domicilio</label>
                    <asp:TextBox runat="server" ID="txtDomicilio" CssClass="form-control" />
                </div>
            </div>
            <br />
            <div class="row row-cols-4  justify-content-center">
                <asp:Button ID="btnSubmit" runat="server" Text="Aceptar" class="" OnClick="btnSubmit_Click" />
                <updatepanel>
                    <contenttemplate>
                        <%  if (PuedeEliminar)
                            { %>
                        <asp:Button ID="BtnDelete" runat="server" Text="Eliminar" OnClick="BtnDelete_Click" />
                        <%  if (EliminarCheck)
                            {  %>
                        <label for="ChkEliminar" class="text-info">¿Desea Confirmar Eliminacion?:</label>
                        <asp:CheckBox ID="ChkEliminar" runat="server" />
                        <asp:Button ID="BtnConfirmarElim" runat="server" Text="Eliminar" OnClick="BtnConfirmarElim_Click" />
                        <%} %>
                        <%} %>
                    </contenttemplate>
                </updatepanel>
            </div>
        </div>
    </div>
</asp:Content>
