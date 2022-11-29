<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="PropiedadesFormulario.aspx.cs" Inherits="Aplicacion_Web.AgregarPropiedad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>

    <h3 class="text-center text-info">Agregar una Propiedad</h3>
    <br />
    <div class="container text-center">
        <div class="row">

            <div class="col">
                <div id="AddProp-row1">
                    <div id="AddProp-form" class="form" action="" method="post">
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
                        <div class="form-group">
                            <label for="TextDireccion" class="text-info">Direccion:</label><br>
                            <asp:TextBox ID="TextDireccion" runat="server" class="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col">
                <div id="AddProp-row2">
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

    <asp:Button ID="btnSubmit" runat="server" Text="Agregar propiedad!" class="" OnClick="btnSubmit_Click" />

</asp:Content>