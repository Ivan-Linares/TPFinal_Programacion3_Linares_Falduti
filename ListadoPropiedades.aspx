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



    <div class="Contenedor">
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <asp:Repeater runat="server" ID="Repeater">
                <ItemTemplate>
                    <div class="col">
                        <div class="card" style="width: 28rem;">
                            <div class="card-body">
                                <img src="<%#Eval("") %>" class="card-img-top" alt="Imagen Propiedad" onerror="this.src='./Images/PlaceHolder.png';" />
                                <h5 class="card-title"><%#Eval("") %></h5>
                                <br />
                                <ul class="Descripcion-card">
                                    <p class="card-Precio">$<%#Eval("") %></p>
                                </ul>
                                <ul class="link-detalle" cssclass="col-md-2">
                                    <a href="DetallePropiedad.aspx">Ver Detalle</a>
                                    <asp:Button Text="Agendar Visita" runat="server" ID="btnVisita" CssClass="btn btn-primary" CommandArgument='<%#Eval("") %>' CommandName="ArticuloId" />
                                </ul>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

</asp:Content>
