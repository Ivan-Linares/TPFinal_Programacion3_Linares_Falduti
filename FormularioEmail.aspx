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
                        <input type="text" name="introducir_nombre" id="nombre" required="required" placeholder="Escribe tu nombre">
                    </p>

                    <p>
                        <asp:Label runat="server" ID="lblemail" class="colocar_email">Email
										<span class="obligatorio">*</span>
                        </asp:Label>
                        <input type="email" name="introducir_email" id="email" required="required" placeholder="Escribe tu Email">
                    </p>

                    <p>
                        <asp:Label runat="server" ID="lbltelefone" class="colocar_telefono">Teléfono
                        </asp:Label>
                        <input type="tel" name="introducir_telefono" id="telefono" placeholder="Escribe tu teléfono">
                    </p>



                    <p>
                        <asp:Label runat="server" ID="lblasunto" class="colocar_asunto">Asunto
										<span class="obligatorio">*</span>
                        </asp:Label>
                        <input type="text" name="introducir_asunto" id="assunto" required="required" placeholder="Escribe un asunto">
                    </p>

                    <p>
                        <asp:Label runat="server" ID="lblmensaje" class="colocar_mensaje">Mensaje
										<span class="obligatorio">*</span>
                        </asp:Label>
                        <asp:TextBox runat="server" ID="txtmensaje" name="introducir_mensaje" class="texto_mensaje" required="obligatorio" placeholder="Deja aquí tu comentario..."></asp:TextBox>
                        <asp:Button ID="btnEnviar" runat="server" Text="Enviar Formulario" />
                    </p>

    

                    <p class="aviso">
                        <span class="obligatorio">* </span>los campos son obligatorios.
                    </p>

                </div>
            </div>

            </div>
        </div>
</asp:Content>
