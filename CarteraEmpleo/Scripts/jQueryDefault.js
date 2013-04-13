function Sesion(usuario) {
    alert(usuario);
    var user = '<div class="UsuarioLink"><a href="PerfilPersona.aspx">' + usuario + '</a></div>';
    document.getElementById("Login").innerHTML = user;
}