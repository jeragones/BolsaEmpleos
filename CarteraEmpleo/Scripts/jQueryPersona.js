function Idiomas(lista) {
    var list = lista.split(",");
    var code = '<table>';
    for (var i = 0; i < list.length; i++) {
        code += '<tr>' +
                '<td><div id="idioma' + i + '">' + list[i] + '</div></td>' +
                '<td><img alt="" src="../Images/eliminar.png" width="20px" height="20px" onclick="QuitarIdioma" /></td>' +
                '</tr>';
    }
    code += '</table>';
    alert(code);
    document.getElementById("Idiomas").innerHTML = code;
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
    alert(code);
    document.getElementById("Telefonos").innerHTML = code;
}