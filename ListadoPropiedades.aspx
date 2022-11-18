<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ListadoPropiedades.aspx.cs" Inherits="Aplicacion_Web.ListadoPropiedades" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Lista de Propiedades</h1>

    <asp:GridView
        ID="dgvPropiedades" runat="server" DataKeyNames="Id"
        CssClass="table" AutoGenerateColumns="false"
        OnSelectedIndexChanged="DgvPropiedades_SelectedIndexChanged"
        OnPageIndexChanging="DgvPropiedades_PageIndexChanging" <%--captura los datos De grill --%>
        AllowPaging="True" PageSize="5">
        <Columns>
            <asp:BoundField HeaderText="Numero" DataField="IdPropiedad" />
            <asp:BoundField HeaderText="Precio" DataField="Numero" />
            <asp:BoundField HeaderText="Precio" DataField="Precio" />
            <asp:BoundField HeaderText="Domicilio" DataField="Domicilio" />
            <asp:CheckBoxField HeaderText="En Venta" DataField="EnVenta" />
            <asp:CommandField HeaderText="Acción" ShowSelectButton="true" SelectText="✍" />
        </Columns>
    </asp:GridView>
</asp:Content>
