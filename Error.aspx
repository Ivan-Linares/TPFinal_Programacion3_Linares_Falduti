<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="Aplicacion_Web.Error" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Estilos/Estilos_Error.css" rel="stylesheet">
    <h1 style="color: aliceblue">Error </h1>

    <asp:Label ID="LbError" runat="server" Text="Label"></asp:Label>
    <section class="error-container" style="align-content: center">
        <span>4</span>
        <span><span class="screen-reader-text">0</span></span>
        <span>4</span>
    </section>
</asp:Content>
