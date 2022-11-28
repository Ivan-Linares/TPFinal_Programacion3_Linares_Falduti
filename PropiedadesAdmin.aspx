<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="PropiedadesAdmin.aspx.cs" Inherits="Aplicacion_Web.PropiedadesAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <div class="ListadoPropiedades">
    <div class="Contenedor5" style="background-color: white">
        <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
        <div>
            <div>
                <asp:GridView ID="GvPropiedades" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="7" CssClass="table table-dark table-borderer">
                    <Columns >
                        <asp:BoundField HeaderText="Numero" DataField="IdPropiedad"  />
                        <asp:BoundField HeaderText="Tipo Prop" DataField="TipoPropiedad.Descripcion" />
                        <asp:BoundField HeaderText="Direccion" DataField="Direccion" />
                        <asp:BoundField HeaderText="Precio" DataField="Precio" />
                        <asp:CheckBoxField HeaderText="Cochera" DataField="Cochera" />
                        <asp:CheckBoxField HeaderText="EnVenta" DataField="EnVenta" />
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
