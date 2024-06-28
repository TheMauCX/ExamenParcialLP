$(document).ready(function(){
    listar();
});
function listar() {
    $.get('rol',{'opc':1}, function (data) {
        let x = JSON.parse(data);
        $(".table tbody tr").remove();
        for (var i = 0; i < x.length; i++) {
            $(".table").append("<tr><td>"+(i+1)+"</td><td>"+x[i].idrol+"</td><td>"+x[i].nombre+"</td><td>"+x[i].estado+"</td><td><a href='#' onclick='editar("+x[i].idrol+")'><i class='far fa-edit'>a</i></a></td><td><a href='#' onclick='eliminar("+x[i].idrol+")'><i class='fas fa-trash-alt'>e</i></a></td></tr>");
        }
    });
}
$("#guardar").click(function (){
    let rol = $("#rol").val();
    $.post("rol",{'opc':2, 'rol':rol}, function (data) {
        listar();
    });
    $("#exampleModal").modal('hide');
});
function eliminar(id){
    $.get('rol',{'opc':3,'id':id}, function (data) {
        listar();
    });
}
$('#editar').click(function (){
    let rol = $('#rol_edit').val();
    let id = $('#id_rol_edit').val();
    $.get('rol',{'opc':5,'id':id, 'rol':rol},function (data) {
        listar();
    });
    $('#exampleModal2').modal('hide');
});
function editar(id){
    let nom_rol = $('#rol_edit').val();
    $.get('rol',{'opc':4,'id':id, 'rol':nom_rol}, function (data) {
        let x = JSON.parse(data);
        $('#rol_edit').val(x.nombre);
        $('#id_rol_edit').val(x.rol);
        $('#exampleModal2').modal('show');
    });
}


