<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="Aplicacion_Web.Registrarse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>

    <div id="login">
        <div class="container">
            <div id="register-row" class="row justify-content-center align-items-center">
                <div id="register-column" class="col-md-6">
                    <div id="register-box" class="col-md-12">
                        <div id="register-form" class="form" action="" method="post">
                            <h3 class="text-center text-info">Registrate!</h3>
                            <div class="form-group">
                                <label for="TextDNI" class="text-info">DNI:</label><br>
                                <asp:TextBox ID="TextDNI" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="TextNombre" class="text-info">Nombre:</label><br>
                                <asp:TextBox ID="TextNombre" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="TextApellido" class="text-info">Apellido:</label><br>
                                <asp:TextBox ID="TextApellido" runat="server" class="form-control"></asp:TextBox>
                            </div>

                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <div class="form-group">
                                        <label for="Calendar" class="text-info">Fecha de Nacimiento:</label><br>
                                        <asp:Calendar ID="Calendar" runat="server"></asp:Calendar>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>

                            <div class="form-group">
                                <label for="TextDomicilio" class="text-info">Domicilio:</label><br>
                                <asp:TextBox ID="TextDomicilio" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="TextEmail" class="text-info">Email:</label><br>
                                <asp:TextBox ID="TextEmail" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="TextUsuario" class="text-info">Usuario:</label><br>
                                <asp:TextBox ID="TextUsuario" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="TextContra" class="text-info">Contraseña:</label><br>
                                <asp:TextBox ID="TextContra" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="BotonRegister" runat="server" class="btn btn-info btn-md" Text="Registrarme!" OnClick="BotonRegister_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
