<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="PerfilEmpresa.aspx.cs" Inherits="CarteraEmpleo.Interfaz.ModificarEmpresa" %>
<asp:Content ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ContentPlaceHolderID="Body" runat="server">
    <form id="Form1" class="registrar" runat="server">
        <div class="titulo">Empresa</div>
        <br/>
        <table>
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Nombre de la empresa:" /></td>
                <td><asp:TextBox class="txt" runat="server" ID="txtNombre" Visible="False" />
                    <asp:Label ID="lblRegistrarActual" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:HyperLink runat="server" ID="lblNombreEditar">Editar</asp:HyperLink></td>
            </tr>
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Cédula Jurídica:" /></td>
                <td><asp:TextBox class="txt" runat="server" placeholder="4-444-444444" ID="txtCedula" Visible="False" ToolTip="La cédula jurídica es la forma de identificación de una empresa." />
                    <asp:Label ID="Label1" class="lblRegistrar" runat="server" Text="Nombre" />
                </td>
               <td><asp:HyperLink runat="server" ID="lblCedulaEditar">Editar</asp:HyperLink></td>
            </tr>            
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Teléfono:" /></td>
                <td><asp:TextBox class="txt" runat="server" placeholder="8888-8888" ID="txtTelefono" Visible="False" />
                    <asp:Label ID="Label2" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:HyperLink runat="server" ID="lblTelefonoEditar">Editar</asp:HyperLink></td>
            </tr>
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Sitio Web:" /></td>
                <td><asp:TextBox class="txt" runat="server" placeholder="example.com" ID="txtWeb" Visible="False" />
                    <asp:Label ID="Label3" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:HyperLink runat="server" ID="lblWebEditar">Editar</asp:HyperLink></td>
            </tr>
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Contraseña:" /></td>
                <td><asp:TextBox class="txt" runat="server" ID="txtContrasena" Visible="False" />
                    <asp:Label ID="Label4" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:HyperLink runat="server" ID="lblContrasenaEditar">Editar</asp:HyperLink></td>
            </tr>
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Descripción:" /></td>
                <td><asp:TextBox class="txta" runat="server" TextMode="MultiLine" ID="txtDescripcion" Visible="False" />
                    <asp:Label ID="Label5" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                   <td><asp:HyperLink runat="server" ID="lblDescripcionEditar">Editar</asp:HyperLink></td>
            </tr>
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Dirección:" /></td>
                <td><asp:TextBox class="txta" runat="server" TextMode="MultiLine" ID="txtDireccion" Visible="False" />
                    <asp:Label ID="Label6" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:HyperLink runat="server" ID="lblDireccionEditar">Editar</asp:HyperLink></td>
            </tr>
        <tr>
            <td></td>
            <td><asp:Label ID="msgError" class="error" runat="server" Text="" /></td>
        </tr>
        <tr>
            <td><br /><asp:Button class="btn" runat="server" Text="Guardar Cambios" ID="btnRegistrar"  /></td>
            <td><br /><asp:Button class="btn" runat="server" Text="Cancelar" ID="btnCancelar"  NavigateUrl="~/Default.aspx" /></td>
        </tr>
        </table>
    </form>
</asp:Content>