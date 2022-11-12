<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="Aplicacion_Web.Registrarse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <div id="login">
        <div class="container">
            <div id="register-row" class="row justify-content-center align-items-center">
                <div id="register-column" class="col-md-6">
                    <div id="register-box" class="col-md-12">
                        <div id="register-form" class="form" action="" method="post">
                            <h3 class="text-center text-info">Registrate!</h3>
                            <div class="form-group">
                                <label for="username" class="text-info">DNI:</label><br>
                                <asp:TextBox ID="TexDNI" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="name" class="text-info">Nombre:</label><br>
                                <asp:TextBox ID="TexNombre" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="surname" class="text-info">Apellido:</label><br>
                                <asp:TextBox ID="TexApellido" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="username" class="text-info">Fecha de Nacimiento:</label><br>
                                <%-- TODO: FORMULARIO PARA FECHA DE NACIMIENTO--%>
                            </div>
                            <div class="form-group">
                                <label for="username" class="text-info">Domicilio:</label><br>
                                <asp:TextBox ID="TexDomicilio" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="username" class="text-info">Email:</label><br>
                                <asp:TextBox ID="TexEmail" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="username" class="text-info">Usuario:</label><br>
                                <asp:TextBox ID="TexUsuario" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Contraseña:</label><br>
                                <asp:TextBox ID="TexContra" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="BotonRegister" runat="server" class="btn btn-info btn-md" Text="Registrarme!" Onclick="BTNRegister"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
