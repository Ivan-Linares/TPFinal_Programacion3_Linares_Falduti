<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MenuVendedor.aspx.cs" Inherits="Aplicacion_Web.MenuVendedor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="ListadoVisitasVendedores">
        <div class="Contenedor5" style="background-color: white">
            <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
            <div>
                <div>
                    <asp:GridView ID="GvVisitas" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="7"
                        CssClass="table table-dark table-borderer">
                        <Columns>
                            <asp:BoundField HeaderText="Numero" DataField="Id" />
                            <asp:BoundField HeaderText="Numero Propiedad" DataField="IdPropiedad" />
                            <asp:BoundField HeaderText="Fecha" DataField="Fecha" />
                            <asp:BoundField HeaderText="Hora" DataField="Hora" />
                            <asp:CheckBoxField HeaderText="Estado" DataField="Estado" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>

    <br />
    <br />

    <div class="ListadoPropiedadesVendedores">
        <div class="Contenedor5" style="background-color: white">
            <div>
                <div>
                    <asp:GridView ID="GVPropiedadesVendedor" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="7"
                        CssClass="table table-dark table-borderer">
                        <Columns>
                            <asp:BoundField HeaderText="Numero" DataField="IdPropiedad" />
                            <asp:BoundField HeaderText="Tipo Prop" DataField="TipoPropiedad.Descripcion" />
                            <asp:BoundField HeaderText="Direccion" DataField="Direccion" />
                            <asp:BoundField HeaderText="Precio" DataField="Precio" />
                            <asp:CheckBoxField HeaderText="EnVenta" DataField="EnVenta" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
