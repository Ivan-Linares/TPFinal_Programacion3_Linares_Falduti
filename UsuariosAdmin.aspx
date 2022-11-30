<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="UsuariosAdmin.aspx.cs" Inherits="Aplicacion_Web.UsuariosAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <br />
    <br />
    <div class="ListadoUsuarios">
        <div class="Contenedor5" style="background-color: white">
            <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
            <div>
                <div>
                    <asp:GridView ID="GvUsuarios" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="7"
                        CssClass="table table-dark table-borderer"
                        OnSelectedIndexChanged="GvUsuarios_SelectedIndexChanged" DataKeyNames="IdUsuario">
                        <Columns>
                            <asp:BoundField HeaderText="Numero" DataField="IdUsuario" />
                            <asp:BoundField HeaderText="Tipo User" DataField="Tipo.Descripcion" />
                            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                            <asp:BoundField HeaderText="Apellido" DataField="Apellido" />
                            <asp:BoundField HeaderText="Email" DataField="Email" />
                            <asp:BoundField HeaderText="Password" DataField="Password" />
                            <asp:BoundField HeaderText="FechaNacimiento" DataField="FechaNacimiento" />
                            <asp:CheckBoxField HeaderText="Estado" DataField="Estado" />
                            <asp:CommandField HeaderText="Modificar/Eliminar" ShowSelectButton="true" SelectText="✍" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
