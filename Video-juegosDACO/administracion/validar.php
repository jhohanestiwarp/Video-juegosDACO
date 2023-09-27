<?php



  session_start();
   
  // Obtengo los datos cargados en el formulario de login.
  $usuario =mysqli_escape_string($conn,$_POST['usuario']);
  $password =mysqli_escape_string($conn,$_POST['password']);
   
  // Datos para conectar a la base de datos.
  $servername = "localhost";
  $database = "peluqueria1";
  $username = "root";
  $password = "";
  // Create connection
  $conn = mysqli_connect($servername, $username, $password, $database);
  // Check connection
  if (!$conn) {
      
      echo "Si,";
  }
  echo "Si,";
   
  // Validar la conexión de base de datos.
  if ($conn ->connect_error) {
    die("Connection failed: " . $conn ->connect_error);
  }
   
  // Consulta segura para evitar inyecciones SQL.
  $sql = sprintf("SELECT * FROM `persona` WHERE usuario = '$usuario' and 'password' = '$password' " ,

mysql_real_escape_string($usuario),

  mysql_real_escape_string($password));

  $resultado = $conn->query($sql);

  

  
   
  // Verificando si el usuario existe en la base de datos.
  if($resultado){
    // Guardo en la sesión el email del usuario.
    $_SESSION['usuario'] = $usuario;
     
    // Redirecciono al usuario a la página principal del sitio.
    header("HTTP/1.1 302 Moved Temporarily"); 
    header("Location: principal.php"); 
  }else{
    echo 'El email o password es incorrecto, <a href="index.html">vuelva a intenarlo</a>.<br/>';
  }
 
?>







