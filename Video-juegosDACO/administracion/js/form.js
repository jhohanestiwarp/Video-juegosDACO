document.querySelector('#submit').addEventListener('click',function(){
    
    let id_reserva = document.querySelector('#id_reserva').value;
    let nombre = document.querySelector('#nombre').value;
    let celular = document.querySelector('#celular').value;
    let fecha = document.querySelector('#fecha').value;
    let hora_compra = document.querySelector('#hora_compra').value;
    let cantidad = document.querySelector('#cantidad').value;
    let id_servicio_fk = document.querySelector('#id_servicio_fk').value;
   


    


    let url = 
    "https://api.whatsapp.com/send?phone=573116770929&text=*_Barberia *%0A*Reservas*%0A%0A*¿Id de reserva ?*%0A"+ id_reserva + "%0A*Nombre de la reserva*%0A" + nombre +  "%0A*Celular*%0A" + celular + "%0A*fecha*%0A"+ fecha + "%0A*¿Hora estimada?*%0A" + hora_compra + "%0A*¿Hora estimada?*%0A"  + cantidad + "%0A*¿Desea hacerce el servicio numero:?*%0A" + id_servicio_fk + "%0A*Desea hacerce el servicio numero*%0A"  ;

    window.open(url);
});




