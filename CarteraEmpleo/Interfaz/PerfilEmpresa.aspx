<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="PerfilEmpresa.aspx.cs" Inherits="CarteraEmpleo.Interfaz.ModificarEmpresa" %>
<asp:Content ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ContentPlaceHolderID="Body" runat="server">
    <form id="Form1" class="registrar" runat="server">
        <div class="titulo">Perfil</div>
        <br/>
        <table>
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Nombre de empresa:" /></td>
                <td><asp:TextBox class="txt" runat="server" ID="txtNombre" Visible="False" />
                    <asp:Label ID="lblNombre" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:LinkButton runat="server" ID="hplNombre" text="Editar" OnClick="hplNombre_Click" /></td>
            </tr>
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Cédula Jurídica:" /></td>
                <td><asp:TextBox class="txt" runat="server" placeholder="0" ID="txtCedula1" MaxLength="1" Height="20px" Width="15px" Visible="False" />
                    <asp:TextBox class="txt" runat="server" placeholder="000" ID="txtCedula2" MaxLength="3" Height="20px" Width="55px" Visible="False" />
                    <asp:TextBox class="txt" runat="server" placeholder="000000" ID="txtCedula3" MaxLength="6" Height="20px" Width="110px" Visible="False" />
                    <asp:Label ID="lblCedula" class="lblRegistrar" runat="server" Text="No-mb-re" /></td>
                <td><asp:LinkButton runat="server" ID="hplCedula" text="Editar" OnClick="hplCedula_Click" /></td>
            </tr>            
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Teléfono:" /></td>
                <td><asp:TextBox class="txt" runat="server" placeholder="8888-8888" ID="txtTelefono" Visible="False" />
                    <asp:Label ID="lblTelefono" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:LinkButton runat="server" ID="hplTelefono" text="Editar" OnClick="hplTelefono_Click" /></td>
            </tr>
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Sitio Web:" /></td>
                <td><asp:TextBox class="txt" runat="server" placeholder="example.com" ID="txtSitio" Visible="False" />
                    <asp:Label ID="lblSitio" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:LinkButton runat="server" ID="hplSitio" text="Editar" OnClick="hplSitio_Click" /></td>
            </tr>
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Contraseña:" /></td>
                <td><asp:TextBox class="txt" runat="server" ID="txtContrasena" Visible="False" />
                    <asp:Label ID="lblContrasena" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:LinkButton runat="server" ID="hplContrasena" text="Editar" OnClick="hplContrasena_Click" /></td>
            </tr>
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Descripción:" TextMode="MultiLine" /></td>
                <td><asp:TextBox class="txta" runat="server" TextMode="MultiLine" ID="txtDescripcion" Visible="False" />
                    <asp:Label ID="lblDescripcion" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:LinkButton runat="server" ID="hplDescripcion" text="Editar" OnClick="hplDescripcion_Click" /></td>
            </tr>
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Dirección:" TextMode="MultiLine" /></td>
                <td><asp:TextBox class="txta" runat="server" TextMode="MultiLine" ID="txtDireccion" Visible="False" />
                    <asp:Label ID="lblDireccion" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:LinkButton runat="server" ID="hplDireccion" text="Editar" OnClick="hplDireccion_Click" /></td>
            </tr>
        <tr>
            <td></td>
            <td><asp:Label ID="msgError" class="error" runat="server" Text="" /></td>
        </tr>
        <tr>
            <td><br /><asp:Button class="btn" runat="server" Text="Guardar Cambios" ID="btnRegistrar"  /></td>
            <td><br /><asp:Button class="btn" runat="server" Text="Cancelar" ID="btnCancelar"  NavigateUrl="~/Interfaz/Default.aspx" OnClick="btnCancelar_Click" /></td>
        </tr>
        </table>
    </form>
</asp:Content>