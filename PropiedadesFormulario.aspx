<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="PropiedadesFormulario.aspx.cs" Inherits="Aplicacion_Web.AgregarPropiedad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
    <br />    <br />    <br />    <br />    <br />    <br />    <br />
    <br />    <br />    <br />    <br />    <br />    <br />    <br />

    <div class="container text-center" style="background-color:black">
        <div class="row">
           <div class="row row-cols-3 mb-2">
                <div id="AddProp-row4">
                    <div id="AddProp-form" class="form" action="" method="post">
                        <%  if (PuedeEliminar)
                        { %>
                        <div class="form-group">
                            <label for="TextId" class="text-info">ID Propiedad:</label><br>
                            <asp:TextBox ID="TextId" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <%} %>
                        <div class="form-group">
                            <label for="DDTiposProp" class="text-info">Tipo de Propiedad:</label><br>
                            <asp:DropDownList ID="DDTiposProp" runat="server"></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label for="TextDescrip" class="text-info">Descripcion:</label><br>
                            <asp:TextBox ID="TextDescrip" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="CheckVenta" class="text-info">En Venta:</label>
                            <asp:CheckBox ID="CheckVenta" runat="server" />
                        </div>
                        <div class="form-group">
                            <label for="TextCantAmb" class="text-info">Cantidad de ambientes:</label><br>
                            <asp:TextBox ID="TextCantAmb" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="TextMts" class="text-info">Cantidad de Mts Cuadrados:</label><br>
                            <asp:TextBox ID="TextMts" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="CheckCochera" class="text-info">Cochera:</label>
                            <asp:CheckBox ID="CheckCochera" runat="server" />
                        </div>
                    </div>
                </div>
            </div>

            <div class="col">
                <div id="AddProp-row2">
                    <div class="form-group">
                        <label for="TextDireccion" class="text-info">Direccion:</label><br>
                        <asp:TextBox ID="TextDireccion" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <div class="form-group">
                                <label for="TextUrlImagen" class="text-info">Imagen:</label><br>
                                <asp:TextBox ID="TextUrlImagen" runat="server" class="form-control" AutoPostBack="true" OnTextChanged="TextUrlImagen_TextChanged"></asp:TextBox>
                                <asp:Image ID="ImagePropiedad" runat="server" ImageUrl="./imagenes/PlaceHolder.png" onerror="this.src= './imagenes/PlaceHolder.png'" />
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <div class="form-group">
                        <label for="TextPrecio" class="text-info">Precio $:</label><br>
                        <asp:TextBox ID="TextPrecio" runat="server" class="form-control"></asp:TextBox>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
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

</asp:Content>
