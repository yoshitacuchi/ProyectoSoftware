$(document).ready(function() {

    var formAlumnos = $("[name='formAlumnos']");
    formAlumnos.submit(function() {
        return false;
    });

    $("#registrar").click(function() {
        var formArray = formAlumnos.serializeArray();
        $.post("registrar.action", formArray, function(resp) {
            alert(resp);
        });
    });

    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });

    $('#tipoInmueble').change(function() {
        if (this.value === "local") {
            $('#dormitoriosInmueble').attr('disabled', 'disabled');
        } else{
            $('#dormitoriosInmueble').removeAttr('disabled');
        }
    });

});