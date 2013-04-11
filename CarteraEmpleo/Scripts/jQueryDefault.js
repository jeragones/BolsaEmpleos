function Sesion(usuario) {
    var nombre = 'Jorge Rojas Aragones';
    var user = '<div class="UsuarioLink"><a href="PerfilPersona.aspx">' + nombre + '</a></div>';
    document.getElementById("Login").innerHTML = user;
}