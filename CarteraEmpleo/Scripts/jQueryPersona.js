function Idiomas(lista) {
    var list = lista.split(",");
    var code = '';
    for (var i = 0; i < list.length; i++) {
        code += '<div id="idioma' + i + '" runat="server">' +
                '<asp:Label runat="server" class="lblRegistrar" Text="' + list[i] + '" />' +
                '<asp:Button runat="server" onclick="QuitarIdioma("idioma' + i + '")">' +
                '<asp:Image runat="server" ImageUrl="~/Images/eliminar.png" />' +
                '</asp:Button>' +
                '</div>';
    }
    document.getElementById("***********").innerHTML = code;
}

function Telefonos(lista) {
    var list = lista.split(",");
    var code = '';
    for (var i = 0; i < list.length; i++) {
        code += '<div id="telefono' + i + '" runat="server">' +
                '<asp:Label runat="server" class="lblRegistrar" Text="' + list[i] + '" />' +
                '<asp:Button runat="server" onclick="QuitarTelefono("telefono' + i + '")">' +
                '<asp:Image runat="server" ImageUrl="~/Images/eliminar.png" />' +
                '</asp:Button>' +
                '</div>';
    }
    document.getElementById("***********").innerHTML = code;
}