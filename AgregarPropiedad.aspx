<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AgregarPropiedad.aspx.cs" Inherits="Aplicacion_Web.AgregarPropiedad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="AddProp">
        <div class="container">
            <div id="AddProp-row" class="row justify-content-center align-items-center">
                <div id="AddProp-column" class="col-md-6">
                    <div id="AddProp-box" class="col-md-12">
                        <div id="AddProp-form" class="form" action="" method="post">
                            <h3 class="text-center text-info">Agregar una Propiedad</h3>
                            <div class="form-group">
                                <label for="TiposProp" class="text-info">Tipo de Propiedad:</label><br>
                                <asp:DropDownList ID="TiposProp" runat="server"></asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label for="TextDescrip" class="text-info">Descripcion:</label><br>
                                <asp:TextBox ID="TextDescrip" runat="server" class="form-control"></asp:TextBox>
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
                                <label for="CheckCochera" class="text-info">Cochera:</label><br>
                                <asp:CheckBox ID="CheckCochera" runat="server" />
                            </div>
                            <div class="form-group">
                                <label for="TextDireccion" class="text-info">Direccion:</label><br>
                                <asp:TextBox ID="TextDireccion" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="TextUrlImagen" class="text-info">Imagen:</label><br>
                                <asp:TextBox ID="TextUrlImagen" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="TextPrecio" class="text-info">Precio $:</label><br>
                                <asp:TextBox ID="TextPrecio" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
