<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Nosotros.aspx.cs" Inherits="TPFinal_Programacion3_Linares_Falduti.Nosotros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Nosotros">
         <section class="bienvenidos">
        <header class="encabezado fixed-top" role="banner" id="encabezado">
            <div class="container">

                <nav id="menu-principal" class="collapse">
                    <ul>
                        <li><a href="index.html">Inicio</a></li>
                        <li class="active"><a href="nosotros.html">Nosotros</a></li>
                        <li><a href="servicios.html">Servicio</a></li>
                        <li><a href="contacto.html">Contacto</a></li>
                    </ul>
                </nav>

            </div>

        </header>
        <!--Titulo de pagina-->
        <div class="texto-encabezado text-center">
            <div class="container">
                <h1 class="display-4 wow bounceIn">Nosotros</h1>
                <p class="wow bounceIn" data-wow-delay=".3s">¿Quienes somos? y ¿Que hacemos?.</p>
            </div>
        </div>
    </section>
    <section class="ruta py-1">
        <div class="container">
            <div class="row">
                <!--Redirección a index-->

            </div>
        </div>
    </section>
    <main class="py-1">
        <div class="container">
            <div class="row">
                <article class="col-md-8">
                    <!--Texto fijo-->
                    <h2>Trabajamos para tu éxito</h2>
                    <p> Con 20 años de experiencia en el rubro inmobiliario, somos pioneros en el lado Este del barrio más joven de la ciudad.

A través de nuestro equipo comercial y ubicados estratégicamente con nuestro local sobre Juana Manso, hemos desarrollado y comercializado varios de los emprendimientos residenciales en la zona, poniendo la piedra fundacional a un barrio que sigue creciendo en infraestructura y prestigio. </p>
                    <p>Nuestro objetivo es conseguir que clientes y usuarios se sientan conectados en el nuevo mundo de la información con servicios y contenidos que no dificulten su relación, sino que la simplifiquen y la conviertan en un hecho cotidiano,
                        agradable y satisfactorio</p>
                    
                        <!--Componente de acordeon para la mision, visión y los valores-->
                        <div id="accordion">
                            <div class="card">
                                <div class="card-header" id="headingOne">
                                    <h4 class="mb-0">
                                        <a class="btn btn-link" data-toggle="collapse" data-target="#tab-mision" aria-controls="collapseOne">
                                  Nuestro compromiso
                                </a>
                                    </h4>
                                </div>

                                <div id="tab-mision" class="collapse show" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>
                                            Una inmobiliaria que explora, investiga y se capacita cada vez más para crear obras que estén a la altura de las últimas demandas y tendencias en diseño y tecnologías como las de las grandes capitales del primer mundo.

Una desarrolladora que sabemos lo que el consumidor final e inversionistas necesita y lo convertimos en realidad.

4 proyectos terminados en tiempo y totalmente vendidos, el ultimo proyecto con 90% de las unidades vendidas antes del inicio de obras es más que elocuente para afirmar una vez más nuestro compromiso asumido con los clientes e inversionistas.

Nuestro compromiso es proporcionar un producto real, sustentable para la vivienda o para aquel inversionista que busca un producto financiero que reditúe una renta fija con números “reales” y no meramente enunciativos.
                                        </p>
                                    </div>
                                </div>
                            </div>
                     
                              
                </article>
               
            </div>
        </div>
    </main>

    </div>
</asp:Content>
