<?php require("head\header.php")?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrarse</title>
    <link rel="stylesheet" href="css/styles.css" type="text/css">
</head>
<body>
    
    <main class="container">
    <div class="imagenMujer">
        <img src="./images/mujerRegistro.png" alt="">
    </div>
    <form action="">
        <div class="ladoa">

        <div class="campo">
                <label>Tipo de Documento</label>
                <select name="tipoDocumento">
                <option value="">Seleccione su tipo de documento</option>
                </select>
            </div>
        
            <div class="campo"> 
                <label>Numero de Documento</label>
                <input type="text" name="numeroDocumento">
            </div>

            <div class="campo">
                <label>Nombre</label>
                <input type="text" name="nombre">
            </div>
           
           <div class="campo">
                <label>Apellidos</label>
                <input type="text" name="apellido">
           </div>
            
           <div class="campo">
                <label>Telefono</label>
                <input type="text" name="telefono">
           </div>
        </div>
            <div class="ladob">
            <div class="campo">
                <label>Dirección</label>
                <input type="text" name="direccion">
           </div>
            
           <div class="campo">
                <label>Ocupación</label>
                <input type="text" name="ocupacion">
           </div>
           
           <div class="campo">
                <label>Correo Electronico</label>
                <input type="text" name="correo">
           </div>
           
           <div class="campo">
                <label>Contraseña</label>
                <input type="password" name="contrasena">
           </div>
           <div class="campo">
                <input type="submit" value="Continuar">
           </div>
            
        </div>
            
          
            
          
        </form>

    </main>
    
</body>
</html>
<?php require("head/footer.php")?>