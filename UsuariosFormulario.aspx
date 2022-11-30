<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="UsuariosFormulario.aspx.cs" Inherits="Aplicacion_Web.UsuariosFormulario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>

    <div class="col">
        <div id="AddProp-row1">
            <div id="AddProp-form" class="form" action="" method="post">
                <%  if (PuedeEliminar)
                    { %>
                <div class="form-group">
                    <label for="TextId" class="text-info">ID Usuario:</label><br>
                    <asp:TextBox ID="TextId" runat="server" class="form-control"></asp:TextBox>
                </div>
                <%} %>
                <div class="form-group">
                    <label for="DDTiposProp" class="text-info">Tipo de Usuario:</label><br>
                    <asp:DropDownList ID="DDTiposUser" runat="server"></asp:DropDownList>
                </div>
                <div class="form-group">
                    <label for="TextNombre" class="text-info">Nombre:</label><br>
                    <asp:TextBox ID="TextNombre" runat="server" class="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="TextApellido" class="text-info">Apellido:</label><br>
                    <asp:TextBox ID="TextApellido" runat="server" class="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="TextEmail" class="text-info">Email:</label><br>
                    <asp:TextBox ID="TextEmail" runat="server" class="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="TextPassword" class="text-info">Direccion:</label><br>
                    <asp:TextBox ID="TextPassword" runat="server" class="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:UpdatePanel ID="UpdatePanel" runat="server">
                        <ContentTemplate>
                            <label for="TextFechaNac" class="form-label">Fecha de Nacimiento</label>
                            <asp:TextBox runat="server" ID="TextFechaNac" TextMode="Date" CssClass="form-control" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <%  if (PuedeEliminar)
                    { %>
                <div class="form-group">
                    <label for="CheckEstado" class="text-info">Activo:</label>
                    <asp:CheckBox ID="CheckEstado" runat="server" />
                </div>
                <%} %>
            </div>
        </div>
    </div>

    <asp:Button ID="BtnAceptar" runat="server" Text="Aceptar" class="" OnClick="BtnAceptar_Click" />
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

</asp:Content>
