<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="RegistroEmpresa.aspx.cs" Inherits="CarteraEmpleo.RegistroEmpresa" %>
<asp:Content ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ContentPlaceHolderID="Body" runat="server">
    <form class="registrar" runat="server">
        <div class="titulo">Registrar Empresa</div>
        <br/>
        <table>
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Nombre de la empresa:" /></td>
                <td><asp:TextBox class="txt" runat="server" ID="txtNombre" /></td>
                <td><div class="asterisco"> *</div></td>
            </tr>
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Cédula Jurídica:" /></td>
                <td><asp:TextBox class="txt" runat="server" placeholder="4-444-444444" ID="txtCedula" ToolTip="La cédula jurídica es la forma de identificación de una empresa." /></td>
                <td><div class="asterisco"> *</div></td>
            </tr>
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Correo electrónico:" /></td>
                <td><asp:TextBox class="txt" runat="server" placeholder="example@mail.com" ID="txtCorreo" /></td>
                <td><div class="asterisco"> *</div></td>
            </tr>
            <!--<tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Teléfono:" /></td>
                <td><asp:TextBox class="txt" runat="server" placeholder="8888-8888" ID="txtTelefono" /></td>
            </tr>-->
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Sitio Web:" /></td>
                <td><asp:TextBox class="txt" runat="server" placeholder="example.com" ID="txtWeb" /></td>
            </tr>
            <!--<tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Contraseña:" /></td>
                <td><asp:TextBox class="txt" runat="server" ID="txtContrasena" /></td>
            </tr>
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Descripción:" /></td>
                <td><asp:TextBox class="txta" runat="server" TextMode="MultiLine" ID="txtDescripcion" /></td>
            </tr>
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Dirección:" /></td>
                <td><asp:TextBox class="txta" runat="server" TextMode="MultiLine" ID="txtDireccion" /></td>
            </tr>-->
        <tr>
            <td></td>
            <td><asp:Label ID="msgError" class="error" runat="server" Text="" /></td>
        </tr>
        <tr>
            <td><br /><asp:Button class="btn" runat="server" Text="Registrarse" ID="btnRegistrar" OnClick="btnRegistrar_Click" /></td>
            <td><br /><asp:Button class="btn" runat="server" Text="Cancelar" ID="btnCancelar" OnClick="btnCancelar_Click" NavigateUrl="~/Default.aspx" /></td>
        </tr>
        </table>
    </form>
</asp:Content>