<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="FormularioVisita.aspx.cs" Inherits="Aplicacion_Web.FormularioVisita" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <div class="ListadoVisitasUsuarios">
        <div class="Contenedor5" style="background-color: white">
            <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
            <div>
                <div>
                    <asp:GridView ID="GvVisitas" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="7"
                        CssClass="table table-dark table-borderer" OnSelectedIndexChanged="GvVisitas_SelectedIndexChanged"
                        DataKeyNames="Id">
                        <Columns>
                            <asp:BoundField HeaderText="Numero" DataField="Id" />
                            <asp:BoundField HeaderText="Numero Propiedad" DataField="IdPropiedad" />
                            <asp:BoundField HeaderText="Vendedor a Caego" DataField="IdVendedor" />
                            <asp:BoundField HeaderText="Fecha" DataField="Fecha" />
                            <asp:BoundField HeaderText="Hora" DataField="Hora" />
                            <asp:CheckBoxField HeaderText="Estado" DataField="Estado" />
                            <asp:CommandField HeaderText="Modificar/Eliminar" ShowSelectButton="true" SelectText="✍" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
