<style>
    #nombre,
    #primerA,
    #segundoA:disabled {
        background: #ccc;
    }
</style>



<div class="right_col" role="main">

    <div class="title_left ">
        <h3>Insertar nueva venta</h3>
        <?php
        echo form_open_multipart('venta/index');
        ?>
        <button type="submit" name="buttonInhabilitados" class="btn  btn-outline-success ">
            <i class="fa fa-arrow-circle-left"></i> Volver a lista de ventas
        </button>
        <?php
        echo form_close();
        ?>
    </div>
    <!-- Inicio Div Right Col Role Main -->
    <div class="container md-3">
    <input hidden name="idUsuario" id="idUsuario" value="<?php echo $_SESSION['idusuario'] ?>">


        <div class="row">
            <!-- Inicio Div row -->
            <div class="col-md-12 col-sm-12 ">
                <!-- Inicio Div col-md-12 col-sm-12  -->
                <div class="x_panel bg-dark text-white">
                    <!-- Inicio Div x_panel -->
                    <div class="x_title">
                        <h2>Datos de Venta</h2>
                        <div class="clearfix">
                        </div>
                    </div>
                    <div class="x_content">
                        <!-- Inicio Div x_content -->

                        <div class="item form-group has-feedback">

                            <label class="col-form-label col-md-1 label-align" for="nombre">Nombre /     codigo:</label>
                            <div class="col-md-3">
                                <input type="search" class="form-control" value="" name="producto" id="producto" placeholder="Escriba codigo del producto" />
                                <input type="hidden" name="producto1" id="producto1" value="">

                            </div>

                            <label class="col-form-label col-md-1 label-align">Tienda:</label>

                            <div class="col-md-3">
                                <input type="text" class="form-control" disabled value="" name="marca" id="marca" placeholder="Sin marca" />
                              

                            </div>

                            <label class="col-form-label col-md-1 label-align">Precio Unitario:</label>
                            <div class="col-md-3">
                                <input name="precioU" disabled id="precioU" class="form-control" value="" placeholder="Sin precio unitario"></input>
                            

                            </div>
                         
                        </div>



                       
                        <button id="addProduct" disabled type="text" class="btn btn-outline-warning btn-block">
                            <i class="fa fa-plus-circle"></i> Agregar a la tabla
                        </button>

                    </div><!-- Fin Div x_content -->
                </div><!-- Fin Div x_panel -->
            </div><!-- Fin Div col-md-12 col-sm-12  -->
        </div><!-- Fin Div row -->





        <form id="formulario12" class="formulario12" name="formulario12">

            <div class="x_content">
                <div class="table-responsive">
                    <table class="table table-striped jambo_table bulk_action" id="tablita">
                        <thead>
                            <tr class="headings">

                                <th class="column-title">Foto </th>
                                <th class="column-title">Nombre </th>
                                <th class="column-title">Precio </th>
                                <th class="column-title">Stock </th>
                                <th class="column-title">Cantidad </th>
                                <th class="column-title">Codigo </th>
                                <th class="column-title">SubTotal </th>
                                <th class="column-title no-link last"><span class="nobr">Eliminar</span>
                                </th>
                                <th class="bulk-actions" colspan="7">
                                    <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
                                </th>
                            </tr>
                        </thead>

                        <tbody id="bodyTabla">


                        </tbody>
                    </table>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Total</label>
                        <div class="col-sm-10">
                            <input type="number" disabled class="form-control" id="total" name="total" placeholder="0">
                        </div>
                    </div>

                    <button type="submit" class="btn btn-success" onclick="guardaryeditar(event)">
                        <i class="fa fa-plus-circle"></i>Insertar
                    </button>
                </div>


            </div>


    </div><!-- Fin Div container md-3 -->
</div><!-- Fin Right Col Role Main -->

</form>
<!------------------------------------------------agregar cliente ---------------------------------------------------------->
<div class="modal fade" id="modal-default1">
    <div class="modal-dialog modal-lg">
        <div class="modal-content alert alert-success ">
            <div class="modal-content  alert alert-light ">
                <?php
                echo form_open_multipart('cliente/agregarbd2');
                ?>
                <div class="modal-header ">
                    <h4 class="modal-title">Agregar Cliente</h4>
                    <button type="button" class="close dg-dark" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-content alert alert-success ">
                    <div class="text-dark">
                        <p class=" text-dark font-13 m-b-30">
                            Usted va a insertar un nuevo cliente, por favor llene el siguiente campo:
                        </p>
                        <div class="item form-group has-feedback">



                            <label class="col-form-label col-md-1 label-align" for="nombre">nombre:</label>
                            <div class="col-md">
                                <input type="text" name="nombre" class="form-control has-feedback-left" value="<?php echo set_value('nombre'); ?>">
                                <span class="fa fa-male form-control-feedback left" aria-hidden="true"></span>
                                <?php echo form_error('nombre'); ?>
                            </div>

                        </div>
                        <div class="item form-group has-feedback">

                            <label class="col-form-label col-md-1 label-align" for="primerapellido">Primer Apellido:</label>
                            <div class="col-md">
                                <input type="text" name="primerapellido" class="form-control has-feedback-left" value="<?php echo set_value('primerapellido'); ?>">
                                <span class="fa fa-male form-control-feedback left" aria-hidden="true"></span>
                                <?php echo form_error('primerapellido'); ?>
                            </div>

                            <label class="col-form-label col-md-1 label-align" for="segundoapellido">Segundo Apellido:</label>
                            <div class="col-md">
                                <input type="text" name="segundoapellido" class="form-control has-feedback-left" value="<?php echo set_value('segundoapellido'); ?>">
                                <span class="fa fa-male form-control-feedback left" aria-hidden="true"></span>
                                <?php echo form_error('segundoapellido'); ?>
                            </div>

                        </div>

                        <div class="item form-group has-feedback">
                            <label class="col-form-label col-md-1 label-align" for="numerocelular">Nro. Celular:</label>
                            <div class="col-md">
                                <input type="text" name="numerocelular" class="form-control has-feedback-left" value="<?php echo set_value('numerocelular'); ?>">
                                <span class="fa fa-mobile-phone form-control-feedback left" aria-hidden="true"></span>
                                <?php echo form_error('numerocelular'); ?>
                            </div>
                            <label class="col-form-label col-md-1 label-align" for="numeroci">Nro. Carnet:</label>
                            <div class="col-md">
                                <input type="text" name="numeroci" class="form-control has-feedback-left" value="<?php echo set_value('numeroci'); ?>">
                                <span class="fa fa-list-alt form-control-feedback left" aria-hidden="true"></span>
                                <?php echo form_error('numeroci'); ?>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="ModalVenta">
                    <button type="submit" class="btn btn-outline-primary">
                        <a class=""> <i class="fa fa-plus-circle  "></i> Insertar</a>
                    </button>
                </div>
                <?php
                echo form_close();
                ?>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- Modal -->
<div class="modal fade" id="ModalVenta" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Notificacion</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Se registro correctamente la venta, por favor entra a lista de venta.
            </div>
            <div class="modal-footer">
            <?php echo form_open_multipart('venta/reportepdf'); ?>
                    <?php $pagoID=$this->db->query("SELECT MAX(idVenta) AS Venta 
                                                    FROM venta");
                    $lastID = 1 ;
                        foreach ($pagoID->result() as $rowPago)
                        {
                        ?>
                            <input type="hidden" name="idventa" value="<?php echo $rowPago->Venta+$lastID;?>">
                            <button  formtarget="_blank" type="submit" class="btn btn-success"><i class="fa fa-file-pdf-o"></i> Factura</button>
                        <?php
                        }
                        ?>
                <?php echo form_close(); ?>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>



<!-- ✅ Load CSS file for jQuery ui  -->
<link href="https://code.jquery.com/ui/1.12.1/themes/ui-lightness/jquery-ui.css" rel="stylesheet" />

<!-- ✅ load jQuery ✅ -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<!-- ✅ load jQuery UI ✅ -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>


<script>
    let producto = [];
    let cliente = [];

    $("#producto").autocomplete({
        source: function(request, response) {
            // Fetch data
            $.ajax({
                url: "<?= base_url() ?>index.php/venta/productList",
                type: 'post',
                dataType: "json",
                data: {
                    search: request.term
                },
                success: function(data) {
                    console.log(data);
                    response(data);
                },
                error: function(xhr, status) {
                    alert('Disculpe, existió un problema');
                },
            });
        },
        select: function(event, ui) {
            $('#producto').val(ui.item.nombre + ' - ' + ui.item.codigo); // display the selected text
            $('#marca').val(ui.item.marca); // display the selected text
            $('#precioU').val(ui.item.precioUnitario); // save selected id to input
            $('button[id=addProduct]').removeAttr('disabled');
            producto = ui.item;
            return false;
        }
    });




    console.log(producto);
    let count = 0;
    $(document).ready(function() {
        $("#addProduct").click(function() {
            // Para este ejemplo, en realidad no envíe el formulario
            console.log("soy freeedy")
                        event.preventDefault();
             markup = "<tr name='fila' id='fila" + count + "' class='even pointer' style='vertical-align: middle;'>" +
    "<td> <img id='productos' width='150' height='150' src='<?php echo  base_url(); ?>uploads/products_images/" + producto.foto + "' alt=''></td>" +
    "<td style='vertical-align: middle;'>" + producto.nombre + "<input class='form-control' name='idProducto[]' hidden type='number' value=" + producto.idProducto + " ></td>" +
    "<td name='precio' style='vertical-align: middle;'>" + producto.precioUnitario + "</td>" +
    "<td style='vertical-align: middle;'>" + producto.stock + "<input class='form-control stock' name='stock[]' hidden type='number' value=" + producto.stock + " ></td>" +
    "<td style='vertical-align: middle;'><input class='form-control' name='cantidad[]' onchange='cambiarSubtotal()' type='number' value='1' ></td>" +
    "<td style='vertical-align: middle;'>" + producto.codigo + "</td>" +
    "<td style='vertical-align: middle;'><input class='form-control' name='subtotal[]' id='subtotal' type='text' value='" + producto.precioUnitario + "' readonly></td>" +
    "<td style='vertical-align: middle;'><input type='button' class='form-control' onclick='eliminarFila(" + count + ");' value='Eliminar' /></td>" +
"</tr>";
             tableBody = $("#bodyTabla");
             tableBody.append(markup);
             count += 1;
             cambiarTotal();

        });
    });

    function eliminarFila(index) {
        // console.log("#fila" + index);
        $("#fila" + index).remove();
        cambiarTotal();
    }

    const cambiarSubtotal = () => {

        let cantidad = document.getElementsByName("cantidad[]");
        let precio = document.getElementsByName("precio");
        let stock = document.getElementsByName("stock[]");
        let subtotal = document.getElementsByName("subtotal[]");


        for (var i = 0; i < cantidad.length; i++) {
            if (cantidad[i].value <= Number(stock[i].value)) {
                subtotal[i].value = cantidad[i].value * precio[i].innerText;

            } else {
                alert('No puedes soprepasar el stock');
                cantidad[i].value = stock[i].innerText;
                subtotal[i].value = precio[i].innerText;
            }
        }
        cambiarTotal();

    };

    const cambiarTotal = () => {

        let subtotal = document.getElementsByName("subtotal[]");
        let total = document.getElementById('total');

        let count = 0;

        for (var i = 0; i < subtotal.length; i++) {
            count += Number(subtotal[i].value);
        }

        total.value = count;

    };



    // function guardaryeditar() {

    //     console.log(document.getElementsByClassName('formulario'));
    //     //$("#btnGuardar").prop("disabled",true);
    //     let formData = new FormData(document.getElementsByClassName('formulario'));
    //     console.log(formData);
    //     for (let obj of formData) {
    //         console.log(obj);
    //     }
    // }



    const guardaryeditar = (e) => {
        e.preventDefault();
        // const form = document.getElementById("formulario12");
        // console.log(form);
        const formData = new FormData($("#formulario12")[0]);
        formData.append("total", document.getElementById("total").value);
        formData.append("idUsuario", document.getElementById("idUsuario").value);
        formData.append("idCliente",3);


        $.ajax({
            url: "<?= base_url() ?>index.php/venta/insertVenta2",
            type: "POST",
            data: formData,
            contentType: false,
            processData: false,

            success: function(datos) {
                $('#ModalVenta').modal({
                    show: true
                });
                limpiar();
                console.log(datos);
            },
            error: function(jqXHR, status) {
                var msg = '';
                if (jqXHR.status === 0) {
                    msg = 'Not connect.\n Verify Network.';
                } else if (jqXHR.status == 404) {
                    msg = 'Requested page not found. [404]';
                } else if (jqXHR.status == 500) {
                    msg = 'Internal Server Error [500].';
                } else if (exception === 'parsererror') {
                    msg = 'Requested JSON parse failed.';
                } else if (exception === 'timeout') {
                    msg = 'Time out error.';
                } else if (exception === 'abort') {
                    msg = 'Ajax request aborted.';
                } else {
                    msg = 'Uncaught Error.\n' + jqXHR.responseText;
                }
                console.log(msg);
            },
        });



        console.log("Form Data");
        for (let obj of formData) {
            console.log(obj);
        }
    };


    function limpiar() {

        $("#carnet").val("");
        $("#idCliente").val(0);
        $("#nombre").val("");
        $("#primerA").val("");
        $("#segundoA").val("");
        $("#producto").val("");
        $("#marca").val("");
        $("#precioU").val("");

        $(".even").remove();
        cambiarTotal();

    }
</script>