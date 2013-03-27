<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="ModificarPersona.aspx.cs" Inherits="CarteraEmpleo.Interfaz.ModificarPersona" %>
<asp:Content ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 150px;
        }
    </style>
</asp:Content>
<asp:Content ContentPlaceHolderID="Body" runat="server">
    <form id="Form1" class="registrar" runat="server">
        <div class="titulo">Modificar Usuario</div>
        <br/>
        <table>
            <tr>
                <td class="auto-style1"><asp:Label class="lblRegistrar" runat="server" Text="Nombre Completo:" /></td>
                <td><asp:TextBox ID="txtNombre" class="txt" runat="server" /></td>
                <td><div class="asterisco"> *</div></td>
            </tr>
            <tr>
                <td class="auto-style1"><asp:Label class="lblRegistrar" runat="server" Text="Cédula:" /></td>
                <td><asp:TextBox class="txt" runat="server" placeholder="1-1111-1111" ID="txtCedula" /></td>
            </tr>
            <tr>
                <td class="auto-style1"><asp:Label class="lblRegistrar" runat="server" Text="Teléfono:" /></td>
                <td><asp:TextBox ID="txtTelefono" class="txt" runat="server" placeholder="1111-1111" /></td>
                <td><div class="asterisco"> *</div></td>
            </tr>
            <tr>
                <td class="auto-style1"><asp:Label class="lblRegistrar" runat="server" Text="Idioma(s):" /></td>
                <td><asp:DropDownList ID="cmbIdioma" class="txt" runat="server" /></td>
            </tr>
            <tr>
                <td class="auto-style1"><asp:Label class="lblRegistrar" runat="server" Text="Condicion Laboral:" /></td>
                <td><asp:DropDownList ID="cmbCondicion" class="txt" runat="server" >
                        <asp:ListItem Selected="True" Text="Desempleado" />
                        <asp:ListItem Text="Empleado" />
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1"><asp:Label class="lblRegistrar" runat="server" Text="Contraseña:" /></td>
                <td><asp:TextBox class="txt" runat="server" ID="txtContrasena" TextMode="Password" ToolTip="La contraseña debe tiener un mínimo de 9 caracteres."/></td>
                <td><div class="asterisco"> *</div></td>
            </tr>
            <tr>
                <td class="auto-style1"><asp:Label class="lblRegistrar" runat="server" Text="Confirmar contraseña:" /></td>
                <td><asp:TextBox ID="txtConfirmarContrasena" class="txt" runat="server" TextMode="Password" /></td>
                <td><div class="asterisco"> *</div></td>
            </tr>
            <tr>
                <td class="auto-style1"><asp:Label class="lblRegistrar" runat="server" Text="Dirección:" /></td>
                <td><asp:TextBox ID="txtDireccion" class="txta" runat="server" TextMode="MultiLine" /></td>
            </tr>
            <tr>
                <td class="auto-style1"><asp:Label class="lblRegistrar" runat="server" Text="Experiencia Laboral:" /></td>
                <td><asp:TextBox Class="txta" runat="server" TextMode="MultiLine" ID="txtExperiencia" /></td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td><asp:Image ID="imgError" Visible="false" class="imgError" runat="server" ImageUrl="/Images/error1.png" />
                    &nbsp;<asp:Label ID="msgError" class="error" runat="server" Text="" /></td>
            </tr>
            <tr>
                <td class="auto-style1"><br /><asp:Button class="btn" runat="server" Text="Registrarse" ID="btnRegistrar" OnClick="btnRegistrar_Click" /></td>
                <td><br /><asp:Button class="btn" runat="server" Text="Cancelar" ID="btnCancelar" OnClick="btnCancelar_Click" NavigateUrl="~/Default.aspx" /></td>
            </tr>
        </table>
    </form>
</asp:Content>