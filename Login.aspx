<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Aplicacion_Web.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%      if (!EstaLogueado())
        {  %>
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="login">
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <link href="Estilos/Estilos_Master.css" rel="stylesheet" />
                        <div id="login-form" class="form" action="" method="post">
                            <h3 class="text-center text-info">Inicio De Sesion</h3>
                            <div class="form-group">
                                <label for="username" class="text-info">Usuario:</label><br>
                                <asp:TextBox ID="TexUsuario" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Contraseña:</label><br>
                                <asp:TextBox ID="TexContra" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="BotonLogin" runat="server" class="btn btn-info btn-md" Text="Ingresar" OnClick="btnLogin_Click" />
                            </div>
                            <div class="form-group">
                                <a href="../Registrarse.aspx" class="text-info">Registrate</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%} %>
    <%else
        {  %>
      <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="BtnDeslogin" runat="server" class="btn btn-info btn-md" Text="Desloguearse" OnClick="BtnDeslogin_Click" />
    <%} %>
</asp:Content>
