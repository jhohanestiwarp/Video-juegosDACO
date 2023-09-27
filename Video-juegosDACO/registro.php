<?php


  //$conexion=new mysqli("localhost","root","","proyecto") //crea la conexion a la base de datos
  //or die("not connected".mysqli_connect_error()); // si no se puede conetar manda un error da un mensaje



   include 'bd.php';
  //recibir los datos por post
  if(isset($_POST['id_reserva'])){

  $id_reserva = $_POST['id_reserva'];   
  $nombre = $_POST['nombre'];
  $celular= $_POST['celular'];
  $fecha= $_POST['fecha'];
  $hora_compra = $_POST['hora_compra'];
  $cantidad = $_POST['cantidad'];
  $id_servicio_fk = $_POST['id_servicio_fk'];


  

    $sql="INSERT INTO `reserva`(`id_reserva`,`nombre`, `celular`, `fecha`, `hora_compra`, `cantidad`, `id_servicio_fk`) 
    VALUES ('$id_reserva','$nombre','$celular','$fecha','$hora_compra','$cantidad','$id_servicio_fk');";//hace la consulta a la base datos
    $query=mysqli_query($conn,$sql); // ejecuta la consulta, pasa conexion y base de datos
    if ($query) {
      // Consulta exitosa, muestra el mensaje en un cuadro de diálogo.
      echo '<script>alert("1 Registro se guardó, Regrese y dele Enviar a WhatsApp");</script>';
      mysqli_close($conn);
  } else {
      // Si hay un error, muestra el mensaje de error.
      echo mysqli_error($conn);
  }
}

  


?>