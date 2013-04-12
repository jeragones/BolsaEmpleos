function Idiomas(lista) {
    var list = lista.split(",");
    var code = '';
    for (var i = 0; i < list.length; i++) {
        code += '<div id="idioma' + i + '" runat="server">' +
                '<asp:Label runat="server" class="lblRegistrar" Text="' + list[i] + '" />' +
                '' +
                '</div>'
    }

    var idioma = '<div class="UsuarioLink"><a href="PerfilPersona.aspx">' + usuario + '</a></div>';
    document.getElementById("Login").innerHTML = user;
}