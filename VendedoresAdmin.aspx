<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="VendedoresAdmin.aspx.cs" Inherits="Aplicacion_Web.VendedoresAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <br />
    <br />
    <div class="ListadoVendedores">
        <div class="Contenedor5" style="background-color: white">
            <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
            <div>
                <div>
                    <asp:GridView ID="GvVendedores" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="7"
                        CssClass="table table-dark table-borderer"
                        OnSelectedIndexChanged="GvVendedores_SelectedIndexChanged" DataKeyNames="IdVendedor">
                        <Columns>
                            <asp:BoundField HeaderText="Numero" DataField="IdVendedor" />
                            <asp:BoundField HeaderText="Legajo" DataField="Legajo" />
                            <asp:BoundField HeaderText="Dni" DataField="Dni" />
                            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                            <asp:BoundField HeaderText="Apellido" DataField="Apellido" />
                            <asp:BoundField HeaderText="Sexo" DataField="Sexo" />
                            <asp:BoundField HeaderText="Domicilio" DataField="Domicilio" />
                            <asp:BoundField HeaderText="FechaIngreso" DataField="FechaIngreso" />
                            <asp:CheckBoxField HeaderText="Estado" DataField="Estado" />
                            <asp:CommandField HeaderText="Modificar/Eliminar" ShowSelectButton="true" SelectText="✍" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
