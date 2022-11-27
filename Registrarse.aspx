<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="Aplicacion_Web.Registrarse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
    <div class="Registrarse">
        <br />
        <br />
        <div class="ContenedorReg" style="background-image:url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBmFJ_pHNKs2VfP4NvxFq91T8BPj3_7D8qRado1Fdq&s)" >
            <div id="register-row" class="row justify-content-center align-items-center">
                <div id="register-column" class="col-md-6">
                    <div id="register-box" class="col-md-12">
                        <div class="form" method="post">
                            <br />
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
                                    <label for="txtFecha" class="form-label">Fecha de Nacimiento</label>
                                    <asp:TextBox runat="server" ID="txtFechaNac" TextMode="Date" CssClass="form-control" />
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
