<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="ModificarPerfilEmpresa.aspx.cs" Inherits="CarteraEmpleo.Interfaz.ModificarEmpresa" %>
<asp:Content ContentPlaceHolderID="head" runat="server">
    
</asp:Content>

<asp:Content ContentPlaceHolderID="Body" runat="server">
    
    <form runat="server">
        <div runat="server">
            <div class="inicio" runat="server">
                <nav class="menu" runat="server">
                    <ul>
                        <li><a href="Default.aspx">Inicio</a></li>
                        <!--<li><a href="Default.aspx">Perfil</a></li>-->
                        <li><a href="Default.aspx">Buscar</a></li>
                        <li><a href="Default.aspx">Contactar</a></li>
                        <li><a href="Default.aspx">Acerca</a></li>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="registrar" runat="server">
            <div class="perfil">
            <div class="titulo">Perfil Empresa</div>
                <br/>
                <table>
                    <tr>
                        <td><asp:Label ID="Label1" class="lblRegistrar" runat="server" Text="Nombre de empresa:" /></td>
                        <td><asp:TextBox class="txt" runat="server" ID="txtNombre" Visible="False" Height="20px" Width="175px"/>
                            <asp:Label ID="lblNombre" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                        <td><asp:LinkButton class="Link" runat="server" ID="hplNombre" text="Editar" OnClick="hplNombre_Click" /></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="Label2" class="lblRegistrar" runat="server" Text="Cédula Jurídica:" /></td>
                        <td><asp:TextBox class="txt" runat="server" placeholder="0" ID="txtCedula1" MaxLength="1" Height="20px" Width="15px" Visible="False" />
                            <asp:TextBox class="txt" runat="server" placeholder="000" ID="txtCedula2" MaxLength="3" Height="20px" Width="40px" Visible="False" />
                            <asp:TextBox class="txt" runat="server" placeholder="000000" ID="txtCedula3" MaxLength="6" Height="20px" Width="100px" Visible="False" />
                            <asp:Label ID="lblCedula" class="lblRegistrar" runat="server" Text="No-mb-re" /></td>
                        <td><asp:LinkButton class="Link" runat="server" ID="hplCedula" text="Editar" OnClick="hplCedula_Click" /></td>
                    </tr>            
                    <tr>
                        <td><asp:Label ID="Label3" class="lblRegistrar" runat="server" Text="Teléfono:" /></td>
                        <td><asp:TextBox class="txt" runat="server" placeholder="8888-8888" ID="txtTelefono" Visible="False" Height="20px" Width="175px" />
                            <asp:Label ID="lblTelefono" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                        <td><asp:LinkButton class="Link" runat="server" ID="hplTelefono" text="Editar" OnClick="hplTelefono_Click" /></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="Label4" class="lblRegistrar" runat="server" Text="Sitio Web:" /></td>
                        <td><asp:TextBox class="txt" runat="server" placeholder="example.com" ID="txtSitio" Visible="False" Height="20px" Width="175px" />
                            <asp:Label ID="lblSitio" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                        <td><asp:LinkButton class="Link" runat="server" ID="hplSitio" text="Editar" OnClick="hplSitio_Click" /></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="lblContrasena1" class="lblRegistrar" runat="server" Text="Contraseña:" /></td>
                        <td><asp:TextBox ID="txtContrasena1" class="txt" runat="server"  TextMode="Password" Visible="False" Height="20px" Width="167px" />
                            <asp:Label ID="lblContrasena" class="lblRegistrar" runat="server" Text="&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;" /></td>
                        <td><asp:LinkButton ID="hplContrasena" class="Link" runat="server"  text="Editar" OnClick="hplContrasena_Click" /></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="lblContrasena2" class="lblRegistrar" runat="server" Text="Nueva contraseña:" visible="false" /></td>
                         <td><asp:TextBox ID="txtContrasena2" class="txt" runat="server"  TextMode="Password" Visible="False" Height="20px" Width="167px" /></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="lblContrasena3" class="lblRegistrar" runat="server" Text="Confirmar contraseña:" visible="false" /></td>
                        <td><asp:TextBox ID="txtContrasena3" class="txt" runat="server"  TextMode="Password" Visible="False" Height="20px" Width="167px" /></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="Label5" class="lblRegistrar" runat="server" Text="Descripción:" TextMode="MultiLine" /></td>
                        <td><asp:TextBox class="txta" runat="server" TextMode="MultiLine" ID="txtDescripcion" Visible="False" Width="175px" />
                            <asp:Label ID="lblDescripcion" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                        <td><asp:LinkButton class="Link" runat="server" ID="hplDescripcion" text="Editar" OnClick="hplDescripcion_Click" /></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="Label6" class="lblRegistrar" runat="server" Text="Dirección:" /></td>
                        <td><asp:TextBox class="txta" runat="server" TextMode="MultiLine" ID="txtDireccion" Visible="False" Width="175px" />
                            <asp:Label ID="lblDireccion" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                        <td><asp:LinkButton class="Link" runat="server" ID="hplDireccion" text="Editar" OnClick="hplDireccion_Click" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><asp:Label ID="msgError" class="error" runat="server" Text="" /></td>
                    </tr>
                    <tr>
                        <td><br /><asp:Button class="btn" runat="server" Text="Guardar Cambios" ID="btnGuardar" OnClick="btnGuardar_Click"  /></td>
                        <td><br /><asp:Button class="btn" runat="server" Text="Cancelar" ID="btnCancelar"  NavigateUrl="~/Interfaz/Default.aspx" OnClick="btnCancelar_Click" /></td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</asp:Content>