function Sesion(usuario) {
    var user = '<div class="UsuarioLink"><a href="/Interfaz/ModPerfilPersona.aspx">' + usuario + '</a></div>';
    document.getElementById("Login").innerHTML = user;
}