<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Contactos.aspx.cs" Inherits="TPFinal_Programacion3_Linares_Falduti.Contactos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <div class="col-2" style="width:25%;height:100%;margin:auto; align-content:center" >
        <div class="mb-3">
        <label style="color:aliceblue" for="txtEmail" class="form-label">Email: </label>
        <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>

        <div id="emailContacto" class="form-text">.</div>
    </div>

    <div class="mb-3">
        <label style="color:aliceblue" for="txtCelular" class="form-label">Telefono De Contacto:</label>
        <asp:TextBox ID="txtCelular" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
        <hr />
    <div class="mb-3">
        <label style="color:aliceblue" for="txtDescripcion" class="form-label"> Escriba su consulta:</label>
        <asp:TextBox ID="txtDescripcion" CssClass="form-control" runat="server" BorderStyle="Groove"></asp:TextBox>
    </div>

        <hr />
        <asp:Button style=" align-content:center" ID="BtnEnviar" OnClickc="BtnEnviar_Click" CssClass="btn btn-primary" 
            runat="server" Text="Enviar" />
    <div class="col-2" > </div>

        </div>
</asp:Content>
