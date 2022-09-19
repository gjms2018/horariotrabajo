@extends('layouts.personal')

    @section('meta')
        <title>My Settings | Workday Time Clock</title>
        <meta name="description" content="Workday my settings">
    @endsection

    @section('styles')
        <script>var admin = false;</script>
    @endsection

    @section('content')
    
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <h2 class="page-title">{{ __("General Settings") }}</h2>
            </div>    
        </div>

        <div class="row">
            <div class="col-md-12">

            <div class="box box-success">
                <div class="box-body">
                    <div class="ui secondary blue pointing tabular menu">
                        <a class="item active" data-tab="about">{{ __("About") }}</a>
                        <a class="item" data-tab="attribution">{{ __("Attributions") }}</a>
                    </div>
                    <div class="ui tab active" data-tab="about">
                        <div class="col-md-12">
                            <div class="tab-content">
                                <p class="license col-md-6" style="margin-bottom:0">
                                    <h3 style="margin-top:0" class="ui header">Workday una aplicación de reloj de tiempo para empleados</h3>
                                    <p>Realice un seguimiento y administre fácilmente las horas de trabajo de los empleados en los trabajos, mejore su proceso de nómina y colabore con sus empleados que controlan el tiempo como nunca antes.</p>
                                    <h4 class="ui header">Características</h4>
                                    <ul>
					<li>Gestión de empleados (HRIS)</li>
                                        <li>Gestión de tiempo y asistencia</li>
                                        <li>Seguimiento del tiempo de los empleados</li>
                                        <li>Gestión de turnos</li>
                                        <li>Gestión de licencias</li>
                                        <li>Informes y análisis</li>
                                        <li>Multiempresa</li>
                                        <li>Autoservicio para gerentes y empleados</li>
                                    </ul>
                                    <div class="footer-text">
                                        <div class="sub header">Version 1.0</div>
                                        <div class="sub header">Copyright (c) 2022 Mundial Code. Todos los derechos reservados.</div>
                                    </div>
                                </p>
                                <div class="ui section divider"></div>
                                <h4 class="ui header">Enviar comentarios
                                    <div class="sub header">Escriba sus comentarios y envíelos a la dirección de correo electrónico de nuestro desarrollador mundialcode2022@gmail.com</div>
                                </h4>
                            </div>
                        </div>
                    </div>

                    <div class="ui tab" data-tab="attribution">
                        <div class="tab-content">
                            <h3 class="ui header">Aviso Legal
                            <div class="sub header">Copyright (c) 2022 Mundial Code. Todos los derechos reservados.</div>
                        </h3>
                        <h5 class="ui header">Laravel
                            <div class="sub header">The MIT License (MIT)</div>
                        </h5>
                        <p class="license col-md-6">
                            Copyright (c) Mundial Code
                            <br><br>
                            Por la presente se concede permiso, sin cargo, a cualquier persona que obtenga una copia
                            de este software y los archivos de documentación asociados (el "Software"), para tratar
                            en el Software sin restricciones, incluidos, entre otros, los derechos
                            usar, copiar, modificar, fusionar, publicar, distribuir, sublicenciar y/o vender
                            copias del Software, y para permitir a las personas a quienes se les
                            provisto para hacerlo, sujeto a las siguientes condiciones:
                            <br><br>
                            El aviso de derechos de autor anterior y este aviso de permiso se incluirán en
                            todas las copias o partes sustanciales del Software.
                            <br><br>
                            EL SOFTWARE SE PROPORCIONA "TAL CUAL", SIN GARANTÍA DE NINGÚN TIPO, EXPRESA O
                            IMPLÍCITO, INCLUYENDO PERO NO LIMITADO A LAS GARANTÍAS DE COMERCIABILIDAD,
                            IDONEIDAD PARA UN PROPÓSITO PARTICULAR Y NO VIOLACIÓN. EN NINGÚN CASO LA
                            LOS AUTORES O TITULARES DE LOS DERECHOS DE AUTOR SERÁN RESPONSABLES DE CUALQUIER RECLAMACIÓN, DAÑOS U OTROS
                            RESPONSABILIDAD, YA SEA EN UNA ACCIÓN DE CONTRATO, AGRAVIO O DE OTRA FORMA, DERIVADA DE,
                            FUERA DE O EN CONEXIÓN CON EL SOFTWARE O EL USO U OTROS TRATOS EN
                            EL SOFTWARE.
                        </p>
                        <h5 class="ui header">Bootstrap
                            <div class="sub header">The MIT License (MIT)</div>
                        </h5>
                        <p class="license col-md-6">
                            Copyright 2011-2020 Twitter, Inc.
		                            <br><br>
		            Por la presente se concede permiso, sin cargo, a cualquier persona que obtenga una copia
                            de este software y los archivos de documentación asociados (el "Software"), para tratar
                            en el Software sin restricciones, incluidos, entre otros, los derechos
                            usar, copiar, modificar, fusionar, publicar, distribuir, sublicenciar y/o vender
                            copias del Software, y para permitir a las personas a quienes se les
                            provisto para hacerlo, sujeto a las siguientes condiciones:
                            <br><br>
                            El aviso de derechos de autor anterior y este aviso de permiso se incluirán en
                            todas las copias o partes sustanciales del Software.
                            <br><br>
                            EL SOFTWARE SE PROPORCIONA "TAL CUAL", SIN GARANTÍA DE NINGÚN TIPO, EXPRESA O
                            IMPLÍCITO, INCLUYENDO PERO NO LIMITADO A LAS GARANTÍAS DE COMERCIABILIDAD,
                            IDONEIDAD PARA UN PROPÓSITO PARTICULAR Y NO VIOLACIÓN. EN NINGÚN CASO LA
                            LOS AUTORES O TITULARES DE LOS DERECHOS DE AUTOR SERÁN RESPONSABLES DE CUALQUIER RECLAMACIÓN, DAÑOS U OTROS
                            RESPONSABILIDAD, YA SEA EN UNA ACCIÓN DE CONTRATO, AGRAVIO O DE OTRA FORMA, DERIVADA DE,
                            FUERA DE O EN CONEXIÓN CON EL SOFTWARE O EL USO U OTROS TRATOS EN
                            EL SOFTWARE.
                        </p>
                        <h5 class="ui header">Semantic UI
                            <div class="sub header">The MIT License (MIT)</div>
                        </h5>
                        <p class="license col-md-6">
                            Copyright (c) 2015 Semantic Org
                            <br><br>
                            Por la presente se concede permiso, sin cargo, a cualquier persona que obtenga una copia
                            de este software y los archivos de documentación asociados (el "Software"), para tratar
                            en el Software sin restricciones, incluidos, entre otros, los derechos
                            usar, copiar, modificar, fusionar, publicar, distribuir, sublicenciar y/o vender
                            copias del Software, y para permitir a las personas a quienes se les
                            provisto para hacerlo, sujeto a las siguientes condiciones:
                            <br><br>
                            El aviso de derechos de autor anterior y este aviso de permiso se incluirán en
                            todas las copias o partes sustanciales del Software.
                            <br><br>
                            EL SOFTWARE SE PROPORCIONA "TAL CUAL", SIN GARANTÍA DE NINGÚN TIPO, EXPRESA O
                            IMPLÍCITO, INCLUYENDO PERO NO LIMITADO A LAS GARANTÍAS DE COMERCIABILIDAD,
                            IDONEIDAD PARA UN PROPÓSITO PARTICULAR Y NO VIOLACIÓN. EN NINGÚN CASO LA
                            LOS AUTORES O TITULARES DE LOS DERECHOS DE AUTOR SERÁN RESPONSABLES DE CUALQUIER RECLAMACIÓN, DAÑOS U OTROS
                            RESPONSABILIDAD, YA SEA EN UNA ACCIÓN DE CONTRATO, AGRAVIO O DE OTRA FORMA, DERIVADA DE,
                            FUERA DE O EN CONEXIÓN CON EL SOFTWARE O EL USO U OTROS TRATOS EN
                            EL SOFTWARE.
                        </p>
                        <h5 class="ui header">jQuery JavaScript Library
                            <div class="sub header">The MIT License (MIT)</div>
                        </h5>
                        <p class="license col-md-6">
                            Copyright jQuery Foundation and other contributors
                            <br><br>
                            Por la presente se concede permiso, sin cargo, a cualquier persona que obtenga una copia
                            de este software y los archivos de documentación asociados (el "Software"), para tratar
                            en el Software sin restricciones, incluidos, entre otros, los derechos
                            usar, copiar, modificar, fusionar, publicar, distribuir, sublicenciar y/o vender
                            copias del Software, y para permitir a las personas a quienes se les
                            provisto para hacerlo, sujeto a las siguientes condiciones:
                            <br><br>
                            El aviso de derechos de autor anterior y este aviso de permiso se incluirán en
                            todas las copias o partes sustanciales del Software.
                            <br><br>
                            EL SOFTWARE SE PROPORCIONA "TAL CUAL", SIN GARANTÍA DE NINGÚN TIPO, EXPRESA O
                            IMPLÍCITO, INCLUYENDO PERO NO LIMITADO A LAS GARANTÍAS DE COMERCIABILIDAD,
                            IDONEIDAD PARA UN PROPÓSITO PARTICULAR Y NO VIOLACIÓN. EN NINGÚN CASO LA
                            LOS AUTORES O TITULARES DE LOS DERECHOS DE AUTOR SERÁN RESPONSABLES DE CUALQUIER RECLAMACIÓN, DAÑOS U OTROS
                            RESPONSABILIDAD, YA SEA EN UNA ACCIÓN DE CONTRATO, AGRAVIO O DE OTRA FORMA, DERIVADA DE,
                            FUERA DE O EN CONEXIÓN CON EL SOFTWARE O EL USO U OTROS TRATOS EN
                            EL SOFTWARE.

                        </p>
                        <h5 class="ui header">DataTables
                            <div class="sub header">The MIT License (MIT)</div>
                        </h5>
                        <p class="license col-md-6">
                            Copyright 2008-2020 SpryMedia Ltd
                            <br><br>
                            Por la presente se concede permiso, sin cargo, a cualquier persona que obtenga una copia
                            de este software y los archivos de documentación asociados (el "Software"), para tratar
                            en el Software sin restricciones, incluidos, entre otros, los derechos
                            usar, copiar, modificar, fusionar, publicar, distribuir, sublicenciar y/o vender
                            copias del Software, y para permitir a las personas a quienes se les
                            provisto para hacerlo, sujeto a las siguientes condiciones:
                            <br><br>
                            El aviso de derechos de autor anterior y este aviso de permiso se incluirán en
                            todas las copias o partes sustanciales del Software.
                            <br><br>
                            EL SOFTWARE SE PROPORCIONA "TAL CUAL", SIN GARANTÍA DE NINGÚN TIPO, EXPRESA O
                            IMPLÍCITO, INCLUYENDO PERO NO LIMITADO A LAS GARANTÍAS DE COMERCIABILIDAD,
                            IDONEIDAD PARA UN PROPÓSITO PARTICULAR Y NO VIOLACIÓN. EN NINGÚN CASO LA
                            LOS AUTORES O TITULARES DE LOS DERECHOS DE AUTOR SERÁN RESPONSABLES DE CUALQUIER RECLAMACIÓN, DAÑOS U OTROS
                            RESPONSABILIDAD, YA SEA EN UNA ACCIÓN DE CONTRATO, AGRAVIO O DE OTRA FORMA, DERIVADA DE,
                            FUERA DE O EN CONEXIÓN CON EL SOFTWARE O EL USO U OTROS TRATOS EN
                            EL SOFTWARE.

                        </p>
                        <h5 class="ui header">Chart.js
                            <div class="sub header">The MIT License (MIT)</div>
                        </h5>
                        <p class="license col-md-6">
                            Copyright 2018 Chart.js Contributors
                            <br><br>
                            Por la presente se concede permiso, sin cargo, a cualquier persona que obtenga una copia
                            de este software y los archivos de documentación asociados (el "Software"), para tratar
                            en el Software sin restricciones, incluidos, entre otros, los derechos
                            usar, copiar, modificar, fusionar, publicar, distribuir, sublicenciar y/o vender
                            copias del Software, y para permitir a las personas a quienes se les
                            provisto para hacerlo, sujeto a las siguientes condiciones:
                            <br><br>
                            El aviso de derechos de autor anterior y este aviso de permiso se incluirán en
                            todas las copias o partes sustanciales del Software.
                            <br><br>
                            EL SOFTWARE SE PROPORCIONA "TAL CUAL", SIN GARANTÍA DE NINGÚN TIPO, EXPRESA O
                            IMPLÍCITO, INCLUYENDO PERO NO LIMITADO A LAS GARANTÍAS DE COMERCIABILIDAD,
                            IDONEIDAD PARA UN PROPÓSITO PARTICULAR Y NO VIOLACIÓN. EN NINGÚN CASO LA
                            LOS AUTORES O TITULARES DE LOS DERECHOS DE AUTOR SERÁN RESPONSABLES DE CUALQUIER RECLAMACIÓN, DAÑOS U OTROS
                            RESPONSABILIDAD, YA SEA EN UNA ACCIÓN DE CONTRATO, AGRAVIO O DE OTRA FORMA, DERIVADA DE,
                            FUERA DE O EN CONEXIÓN CON EL SOFTWARE O EL USO U OTROS TRATOS EN
                            EL SOFTWARE.

                        </p>

                        <h5 class="ui header">Moment.js
                            <div class="sub header">The MIT License (MIT)</div>
                        </h5>
                        <p class="license col-md-6">
                            Copyright (c) JS Foundation and other contributors
                            <br><br>
                            Por la presente se concede permiso, sin cargo, a cualquier persona que obtenga una copia
                            de este software y los archivos de documentación asociados (el "Software"), para tratar
                            en el Software sin restricciones, incluidos, entre otros, los derechos
                            usar, copiar, modificar, fusionar, publicar, distribuir, sublicenciar y/o vender
                            copias del Software, y para permitir a las personas a quienes se les
                            provisto para hacerlo, sujeto a las siguientes condiciones:
                            <br><br>
                            El aviso de derechos de autor anterior y este aviso de permiso se incluirán en
                            todas las copias o partes sustanciales del Software.
                            <br><br>
                            EL SOFTWARE SE PROPORCIONA "TAL CUAL", SIN GARANTÍA DE NINGÚN TIPO, EXPRESA O
                            IMPLÍCITO, INCLUYENDO PERO NO LIMITADO A LAS GARANTÍAS DE COMERCIABILIDAD,
                            IDONEIDAD PARA UN PROPÓSITO PARTICULAR Y NO VIOLACIÓN. EN NINGÚN CASO LA
                            LOS AUTORES O TITULARES DE LOS DERECHOS DE AUTOR SERÁN RESPONSABLES DE CUALQUIER RECLAMACIÓN, DAÑOS U OTROS
                            RESPONSABILIDAD, YA SEA EN UNA ACCIÓN DE CONTRATO, AGRAVIO O DE OTRA FORMA, DERIVADA DE,
                            FUERA DE O EN CONEXIÓN CON EL SOFTWARE O EL USO U OTROS TRATOS EN
                            EL SOFTWARE.

                        </p>

                        <h5 class="ui header">Air Datepicker
                            <div class="sub header">The MIT License (MIT)</div>
                        </h5>
                        <p class="license col-md-6">
                            Copyright (c) 2016 Timofey Marochkin
                            <br><br>
                            Por la presente se concede permiso, sin cargo, a cualquier persona que obtenga una copia
                            de este software y los archivos de documentación asociados (el "Software"), para tratar
                            en el Software sin restricciones, incluidos, entre otros, los derechos
                            usar, copiar, modificar, fusionar, publicar, distribuir, sublicenciar y/o vender
                            copias del Software, y para permitir a las personas a quienes se les
                            provisto para hacerlo, sujeto a las siguientes condiciones:
                            <br><br>
                            El aviso de derechos de autor anterior y este aviso de permiso se incluirán en
                            todas las copias o partes sustanciales del Software.
                            <br><br>
                            EL SOFTWARE SE PROPORCIONA "TAL CUAL", SIN GARANTÍA DE NINGÚN TIPO, EXPRESA O
                            IMPLÍCITO, INCLUYENDO PERO NO LIMITADO A LAS GARANTÍAS DE COMERCIABILIDAD,
                            IDONEIDAD PARA UN PROPÓSITO PARTICULAR Y NO VIOLACIÓN. EN NINGÚN CASO LA
                            LOS AUTORES O TITULARES DE LOS DERECHOS DE AUTOR SERÁN RESPONSABLES DE CUALQUIER RECLAMACIÓN, DAÑOS U OTROS
                            RESPONSABILIDAD, YA SEA EN UNA ACCIÓN DE CONTRATO, AGRAVIO O DE OTRA FORMA, DERIVADA DE,
                            FUERA DE O EN CONEXIÓN CON EL SOFTWARE O EL USO U OTROS TRATOS EN
                            EL SOFTWARE.

                        </p>
                        <h5 class="ui header">MDTimePicker
                            <div class="sub header">The MIT License (MIT)</div>
                        </h5>
                        <p class="license col-md-6">
                            Copyright (c) 2017 Dionlee Uy
                            <br><br>
                            Por la presente se concede permiso, sin cargo, a cualquier persona que obtenga una copia
                            de este software y los archivos de documentación asociados (el "Software"), para tratar
                            en el Software sin restricciones, incluidos, entre otros, los derechos
                            usar, copiar, modificar, fusionar, publicar, distribuir, sublicenciar y/o vender
                            copias del Software, y para permitir a las personas a quienes se les
                            provisto para hacerlo, sujeto a las siguientes condiciones:
                            <br><br>
                            El aviso de derechos de autor anterior y este aviso de permiso se incluirán en
                            todas las copias o partes sustanciales del Software.
                            <br><br>
                            EL SOFTWARE SE PROPORCIONA "TAL CUAL", SIN GARANTÍA DE NINGÚN TIPO, EXPRESA O
                            IMPLÍCITO, INCLUYENDO PERO NO LIMITADO A LAS GARANTÍAS DE COMERCIABILIDAD,
                            IDONEIDAD PARA UN PROPÓSITO PARTICULAR Y NO VIOLACIÓN. EN NINGÚN CASO LA
                            LOS AUTORES O TITULARES DE LOS DERECHOS DE AUTOR SERÁN RESPONSABLES DE CUALQUIER RECLAMACIÓN, DAÑOS U OTROS
                            RESPONSABILIDAD, YA SEA EN UNA ACCIÓN DE CONTRATO, AGRAVIO O DE OTRA FORMA, DERIVADA DE,
                            FUERA DE O EN CONEXIÓN CON EL SOFTWARE O EL USO U OTROS TRATOS EN
                            EL SOFTWARE.

                        </p>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
    </div>

    @endsection
    
    @section('scripts')
    <script type="text/javascript">
        $('.menu .item').tab();
    </script>
    @endsection 