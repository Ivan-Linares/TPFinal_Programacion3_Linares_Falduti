<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MenuAdmin.aspx.cs" Inherits="Aplicacion_Web.MenuAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
    <div class="AbmAdmin">


        <div class="ContenedorAbm" style="background-image: url(imagenes/header3.jpg)">
            <div class="Card">
                <h5>PROPIEDADES</h5>
                <p>Agregar una nueva propiedad</p>
                <a href="../PropiedadesFormulario.aspx" class="btn btn-primary">Agregar</a>
                <br />
                <br />
                <p>Modificar una propiedad</p>
                <a href="../PropiedadesAdmin.aspx" class="btn btn-primary">Modificar</a>
            </div>

            <div class="Card">
                <h5>USUARIOS</h5>
                <br />
                <p>Agregar usuario</p>
                <a href="../UsuariosFormulario.aspx" class="btn btn-primary">Agregar</a>
                <br />
                <br />
                <p>Modificar usuario</p>
                <br />
                <a href="../UsuariosAdmin.aspx" class="btn btn-primary">Modificar</a>
            </div>


            <div class="Card">
                <h5>TIPO PROPIEDAD</h5>
                <p>Agregar un tipo propiedad</p>
                <a href="../Tablas/TurnoForm.aspx" class="btn btn-primary">Agregar</a>
                <br />
                <br />
                <p>Modificar tipo propiedad</p>
                <a href="../Tablas/TurnoForm.aspx" class="btn btn-primary">Modificar</a>
            </div>



            <div class="Card">
                <h5>VISITAS</h5>
                <p>Agregar visita</p>
                <br />
                <a href="../Tablas/TurnoForm.aspx" class="btn btn-primary">Agregar</a>
                <br />
                <br />
                <p>Modificar visita</p>
                <br />
                <a href="../Tablas/TurnoForm.aspx" class="btn btn-primary">Modificar</a>
            </div>

            <div class="Card">
                <h5>PERFILES</h5>
                <p>Agregar un perfil</p>
                <br />
                <a href="../Tablas/TurnoForm.aspx" class="btn btn-primary">Agregar</a>
                <br />
                <br />
                <p>Modificar un perfil</p>
                <br />
                <a href="../Tablas/TurnoForm.aspx" class="btn btn-primary">Modificar</a>
            </div>

            <div class="Card">
                <h5>VENDEDORES</h5>
                <p>Agregar un vendedor</p>
                <br />
                <a href="../Tablas/TurnoForm.aspx" class="btn btn-primary">Agregar</a>
                <br />
                <br />
                <p>Modificar un vendedor</p>
                <a href="../Tablas/TurnoForm.aspx" class="btn btn-primary">Modificar</a>
            </div>

        </div>
    </div>

</asp:Content>
