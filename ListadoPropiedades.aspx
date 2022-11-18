<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ListadoPropiedades.aspx.cs" Inherits="Aplicacion_Web.ListadoPropiedades" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="color: tan">Lista de Propiedades</h1>

    <asp:GridView
        ID="DgvPropiedades" runat="server" DataKeyNames="Id"
        CssClass="table" AutoGenerateColumns="false"
        OnSelectedIndexChanged="DgvPropiedades_SelectedIndexChanged"
        OnPageIndexChanging="DgvPropiedades_PageIndexChanging"
        AllowPaging="True" PageSize="5">
        <Columns>
            <asp:BoundField HeaderText="Numero" DataField="IdPropiedad" />
            <asp:BoundField HeaderText="Precio" DataField="Precio" />
            <asp:BoundField HeaderText="Metros" DataField="Mts2" />
            <asp:BoundField HeaderText="Domicilio" DataField="Domicilio" />
            <asp:CheckBoxField HeaderText="En Venta" DataField="EnVenta" />
<%--            <asp:BoundField HeaderText="Detalle" href="DetallePropiedades.aspx"/>--%>
        </Columns>
    </asp:GridView>
<%--            <asp:Button Text="Agregar" ID="BtnAgregar" OnClick="BtnAgregar_Click" class="btn btn-link" runat="server" />--%>
</asp:Content>
