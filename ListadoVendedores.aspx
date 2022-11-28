<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ListadoVendedores.aspx.cs" Inherits="Aplicacion_Web.ListadoVendedores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <h1>Lista de Vendedores</h1>
   <br />
    <br />
    <br />
    <br />
    <div class="ListadoPropiedades">
    <div class="Contenedor5" style="background-color: white">
        <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
        <div>
            <div>
                <asp:GridView ID="GvVendedores" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="7" CssClass="table table-dark table-borderer">
                    <Columns >
                        <asp:BoundField HeaderText="Legajo" DataField="Legajo"  />
                        <asp:BoundField HeaderText="Apellido" DataField="Apellido" />
                        <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                        <asp:BoundField HeaderText="Ingreso" DataField="FechaIngreso" />
                        <asp:CheckBoxField HeaderText="" DataField="Estado" />
                        <asp:CommandField HeaderText="Modificar" ShowSelectButton="true" SelectText="✍" />
                        <asp:CommandField HeaderText="Eliminar" ShowSelectButton="true" SelectText="X" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
    </div>
   
</asp:Content>
