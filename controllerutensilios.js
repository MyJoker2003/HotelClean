$(document).ready(function() {
    // Array para almacenar los valores de las actividades
    window.Consumibles = [];
    window.NoConsumibles = [];

    // Función para agregar actividad a la lista y valor al array
    $("#add-consumible").click(function() {
        var consumibleText = $("#consumibles option:selected").text();
        var consumableValue = $("#codigo").val();

        if (consumableValue !== "") {
            //console.log("BUENOS DIAS");
            Consumibles.push(consumableValue); // Agrega el valor al array
            //$("#actividades-agregadas").append("<li>" + actividadText + " <button type='button' class='btn btn-danger btn-circle btn-sm eliminar-actividad'>S</button></li>");
            $("#consumibles-agregados").append("<li><i class='fa-solid fa-address-card mr-3'></i>" + consumibleText +" "+consumableValue+ " <i class='eliminar-consu fas fa-trash-alt btn-sm btn-danger'></i></li>");
            console.log(Consumibles);
            $("#consumibles").val($("#consumibles option:first").val()); // Establece el valor del select en el índice 0
        }else{
            console.log('Ingresa un codigo valido');
        }
    });
    $(document).on("click", ".eliminar-consu", function() {
        var index = $(this).parent().index(); // Obtiene el índice del elemento a eliminar
        Consumibles.splice(index, 1); // Elimina el valor del array
        $(this).parent().remove(); // Elimina la actividad de la lista
        console.log(Consumibles);
    });
    

    // Función para agregar actividad a la lista y valor al array
    /*$("#add-noconsumible").click(function() {
        var NoconsumibleText = $("#noconsumibles option:selected").text();
        var NoconsumableValue = $("#noconsumibles").val();
        var cantidad = $("#cantidad").val();
        if(cantidad !==""){
            const noCon = new noConsumible(NoconsumableValue,cantidad);
            NoConsumibles.push(noConsumible); //Agrega el objeto al array
            $("#noconsumibles-agregados").append("<li><i class='fa-solid fa-address-card mr-3'></i>" + NoconsumibleText + " <i class='eliminar-noconsu fas fa-trash-alt btn-sm btn-danger'></i></li>");
            console.log(NoConsumibles);
            $("#noconsumibles").val($("#noconsumibles option:first").val()); // Establece el valor del select en el índice 0
            $("#cantidad").val("");
        }
        /*if (consumableValue !== "") {
            //console.log("BUENOS DIAS");
            NoConsumibles.push(consumableValue); // Agrega el valor al array
            //$("#actividades-agregadas").append("<li>" + actividadText + " <button type='button' class='btn btn-danger btn-circle btn-sm eliminar-actividad'>S</button></li>");
            $("#consumibles-agregados").append("<li><i class='fa-solid fa-address-card mr-3'></i>" + NoconsumibleText + " <i class='eliminar-consu fas fa-trash-alt btn-sm btn-danger'></i></li>");
            console.log(NoConsumibles);
            $("#consumibles").val($("#consumibles option:first").val()); // Establece el valor del select en el índice 0
        }*/
    /*});
    $(document).on("click", ".eliminar-noconsu", function() {
        var index = $(this).parent().index(); // Obtiene el índice del elemento a eliminar
        NoConsumibles.splice(index, 1); // Elimina el valor del array
        $(this).parent().remove(); // Elimina la actividad de la lista
        console.log(NoConsumibles);
    });*/
});