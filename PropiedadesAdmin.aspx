<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="PropiedadesAdmin.aspx.cs" Inherits="Aplicacion_Web.PropiedadesAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>

    <div>
        <div>
            <asp:GridView ID="GvPropiedades" runat="server" AutoGenerateColumns="false" AllowPaging="true" >
                <Columns>
                    <asp:BoundField HeaderText="ID" DataField="IdPropiedad" />
                    <asp:BoundField HeaderText="Tipo Prop" DataField="TipoPropiedad.Descripcion" />
                    <asp:BoundField HeaderText="Descripcion Prop" DataField="Descripcion" />
                    <asp:BoundField HeaderText="Ambientes" DataField="CantAmbientes" />
                    <asp:BoundField HeaderText="Metros Cua" DataField="Mts2" />
                    <asp:BoundField HeaderText="Direccion" DataField="Direccion" />
                    <asp:BoundField HeaderText="Precio" DataField="Precio" />
                    <asp:CheckBoxField HeaderText="Cochera" DataField="Cochera" />
                    <asp:CheckBoxField HeaderText="EnVenta" DataField="EnVenta" />
                    <asp:CheckBoxField HeaderText="" DataField="Estado" />
                </Columns>
            </asp:GridView>
        </div>
    </div>

</asp:Content>
