<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Contacto</title>
<style>
    h1{
        color: blue;
    }
</style>

</head>
<body>
    <h1>Correo de Contacto ITSW Academy </h1>
    <h2>correo de  <strong> contacto itsw</strong> </h2>
<p> <strong>Nombre: </strong>{{$contacto['name']}}</p>
<p> <strong>Telefono: </strong>{{$contacto['telefono']}}</p>
<p> <strong>Correo: </strong>{{$contacto['correo']}}</p>
<p> <strong>Mensaje: </strong>{{$contacto['mensaje']}}</p>

</body>
</html>
