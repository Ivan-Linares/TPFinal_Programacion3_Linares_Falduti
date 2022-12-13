<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="FormularioEmail.aspx.cs" Inherits="Aplicacion_Web.FormularioEmail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="FormularioEmail">
        <div class="Contenedor7" style="background-image: url(imagenes/anuncio1.jpg);">

            <div class="contact_form">

                <div class="formulario">
                    <h1>Formulario de contacto</h1>
                    <h3>Escríbenos y en breve los pondremos en contacto contigo</h3>





                    <p>
                        <asp:Label runat="server" ID="lblnombre" class="colocar_nombre">Nombre
										<span class="obligatorio">*</span>
                        </asp:Label>
                        <asp:TextBox ID="TxtNombre" runat="server" ></asp:TextBox>
                    </p>

                    <p>
                        <asp:Label runat="server" ID="lblemail" class="colocar_email">Email
										<span class="obligatorio">*</span>
                        </asp:Label>
                             <asp:TextBox ID="TxtEmail" TextMode="Email" runat="server" ></asp:TextBox>
                    </p>

                    <p>
                        <asp:Label runat="server" ID="lbltelefone" class="colocar_telefono">Teléfono
                        </asp:Label>
                         <asp:TextBox ID="TxtTelefono" runat="server"  ></asp:TextBox>
                    </p>



                    <p>
                        <asp:Label runat="server" ID="lblasunto" class="colocar_asunto">Asunto
										<span class="obligatorio">*</span>
                        </asp:Label>
                              <asp:TextBox ID="TxtAsunto" runat="server" ></asp:TextBox>
                    </p>

                    <p>
                        <asp:Label runat="server" ID="lblmensaje" class="colocar_mensaje">Mensaje
										<span class="obligatorio">*</span>
                        </asp:Label>
                        <asp:TextBox runat="server" ID="txtmensaje"  name="introducir_mensaje" class="texto_mensaje" required="obligatorio" placeholder="Deja aquí tu comentario..."></asp:TextBox>
                        <asp:Button ID="btnEnviar" runat="server" Text="Enviar Formulario" Onclick="BtnEnviar_Click"/>
                    </p>

    

                    <p class="aviso">
                        <span class="obligatorio">* </span>los campos son obligatorios.
                    </p>

                </div>
            </div>

            </div>
        </div>
</asp:Content>
