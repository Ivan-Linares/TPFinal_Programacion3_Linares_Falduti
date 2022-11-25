<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MenuAdmin.aspx.cs" Inherits="Aplicacion_Web.MenuAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="hero p-2 p-md-8 mb-2 text-dark">

        <div class="col-md-12 d-flex flex-column justify-content-center">

            <br />
            <br />
            <h3 class="display-15 align-self-center">
                <asp:Image ImageUrl="https://cdn.icon-icons.com/icons2/714/PNG/512/profile_icon-icons.com_62220.png" CssClass="w-25" runat="server" />Menu Administrador</h3>

        </div>
        <div class="col-15" style="width: auto; text-align: center">
            <br />
            <br />

            <div style="margin: 0 auto;">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="card border-light mb-3" style="max-width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">NUEVA PROPIEDAD</h5>
                                <p class="card-text">Ingrese una nueva propiedad</p>
                                <div class="d-grid gap-2 col-6 mx-auto">
                                    <a href="../Tablas/TurnoForm.aspx" class="btn btn-primary">Ingresar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="card border-light mb-3" style="max-width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">MODIFICAR PROPIEDAD</h5>
                                <p class="card-text">Modificar una propiedad</p>
                                <div class="d-grid gap-2 col-6 mx-auto">
                                    <a href="../Tablas/TurnoListado.aspx" class="btn btn-primary">Ingresar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-sm-4">
                        <div class="card border-light mb-3" style="max-width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">AGREGAR USUARIO</h5>
                                <p class="card-text">Ingresar un nuevo usuario al sistema</p>
                                <div class="d-grid gap-2 col-6 mx-auto">
                                    <a href="../Tablas/UsuarioForm.aspx" class="btn btn-primary">Ingresar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="card border-light mb-3" style="max-width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">MODIFICAR USUARIO</h5>
                                <p class="card-text">Modificar usuario registrado</p>
                                <div class="d-grid gap-2 col-6 mx-auto">
                                    <a href="../Tablas/UsuarioListado.aspx" class="btn btn-primary">Ingresar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-sm-4">
                        <div class="card border-light mb-3" style="max-width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">AGREGAR TIPO PROPIEDAD</h5>
                                <p class="card-text">Ingresar un nuevo tipo de propiedad</p>
                                <div class="d-grid gap-2 col-6 mx-auto">
                                    <a href="../Tablas/ObraSocialForm.aspx" class="btn btn-primary">Ingresar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="card border-light mb-3" style="max-width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">MODIFICAR TIPO DE PROPIEDAD</h5>
                                <p class="card-text">Modificar tipo de propiedad existente</p>
                                <div class="d-grid gap-2 col-6 mx-auto">
                                    <a href="../Tablas/ObraSocialListado.aspx" class="btn btn-primary">Ingresar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-sm-4">
                        <div class="card border-light mb-3" style="max-width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">ALTA VISITA</h5>
                                <p class="card-text">Ingresar una nueva visita</p>
                                <div class="d-grid gap-2 col-6 mx-auto">
                                    <a href="../Tablas/EstadoTurnoForm.aspx" class="btn btn-primary">Ingresar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="card border-light mb-3" style="max-width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">MODIFICAR VISITA</h5>
                                <p class="card-text">Modificar estado de una visira</p>
                                <div class="d-grid gap-2 col-6 mx-auto">
                                    <a href="../Tablas/EstadoTurnoListado.aspx" class="btn btn-primary">Ingresar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <br />
                <div class="row">
                    <div class="col-sm-4">
                        <div class="card border-light mb-3" style="max-width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">AGREGAR TIPO DE PERFIL</h5>
                                <p class="card-text">Ingresar un nuevo tipo de perfil de usuario</p>
                                <div class="d-grid gap-2 col-6 mx-auto">
                                    <a href="../Tablas/PerfilUsuarioForm.aspx" class="btn btn-primary">Ingresar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="card border-light mb-3" style="max-width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">MODIFICAR TIPO DE PERFIL</h5>
                                <p class="card-text">Modificar tipo de perfil de usuario existente</p>
                                <div class="d-grid gap-2 col-6 mx-auto">
                                    <a href="../Tablas/PerfilUsuarioListado.aspx" class="btn btn-primary">Ingresar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                                <div class="row">
                    <div class="col-sm-4">
                        <div class="card border-light mb-3" style="max-width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">AGREGAR VENDEDOR</h5>
                                <p class="card-text">Ingresar un nuevo tipo de perfil de usuario</p>
                                <div class="d-grid gap-2 col-6 mx-auto">
                                    <a href="../Tablas/PerfilUsuarioForm.aspx" class="btn btn-primary">Ingresar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="card border-light mb-3" style="max-width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">MODIFICAR VENDEDOR</h5>
                                <p class="card-text">Modificar tipo de perfil de usuario existente</p>
                                <div class="d-grid gap-2 col-6 mx-auto">
                                    <a href="../Tablas/PerfilUsuarioListado.aspx" class="btn btn-primary">Ingresar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>
</asp:Content>
