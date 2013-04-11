<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="ModificarPersona.aspx.cs" Inherits="CarteraEmpleo.Interfaz.ModificarPersona" %>
<asp:Content ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 150px;
        }
        .auto-style2
        {
            width: 264px;
        }
    </style>
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
            <div class="titulo">Perfil Candidato</div>
            <br/>
            <table>
                <tr>
                    <td><asp:Label ID="Label1" class="lblRegistrar" runat="server" Text="Nombre Completo:" /></td>
                    <td><asp:TextBox ID="txtNombre" class="txt" runat="server"  Visible="False" Height="20px" Width="160px"/>
                        <asp:Label ID="lblNombre" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                    <td><asp:LinkButton class="Link" runat="server" ID="hplNombre" text="Editar" OnClick="hplNombre_Click" /></td>
                </tr>
                <!--<tr>
                    <td><asp:Label class="lblRegistrar" runat="server" Text="Cédula:" /></td>
                    <td><asp:TextBox class="txt" runat="server" placeholder="0-0000-0000" ID="txtCedula"  Visible="False" Height="20px" />
                        <asp:Label ID="lblCedula" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                    <td><asp:LinkButton runat="server" ID="hplCedula" text="Editar" OnClick="hplCedula_Click" /></td>
                </tr>-->
                <tr>
                    <td><asp:Label ID="Label2" class="lblRegistrar" runat="server" Text="Teléfono:" /></td>
                    <td><asp:TextBox ID="txtTelefono" class="txt" runat="server" placeholder="0000-0000"  Visible="False" Height="20px" Width="160px" />
                        <asp:Label ID="lblTelefono" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                    <td><asp:LinkButton class="Link" runat="server" ID="hplTelefono" text="Editar" OnClick="hplTelefono_Click" /></td>
           
                </tr>
                <tr>
                    <td><asp:Label ID="Label3" class="lblRegistrar" runat="server" Text="Idioma(s):" /></td>
                    <td><asp:DropDownList ID="cmbIdioma" class="txt" runat="server"  Visible="False" Height="20px" Width="166px"/>
                        <asp:Label ID="lblIdioma" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                    <td><asp:LinkButton class="Link" runat="server" ID="hplIdioma" text="Editar" OnClick="hplIdioma_Click" /></td>
               </tr>
                <tr>
                    <td><asp:Label ID="Label4" class="lblRegistrar" runat="server" Text="Condicion Laboral:" /></td>
                    <td><asp:DropDownList ID="cmbCondicion" class="txt" runat="server" Visible="False" Height="20px" Width="166px">
                            <asp:ListItem Selected="True" Text="Desempleado" />
                            <asp:ListItem Text="Empleado" />
                        </asp:DropDownList> 
                        <asp:Label ID="lblCondicion" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                    <td><asp:LinkButton class="Link" runat="server" ID="hplCondicion" text="Editar" OnClick="hplCondicion_Click" /></td>
           
                </tr>
                <tr>
                    <td><asp:Label ID="lblContrasena1" class="lblRegistrar" runat="server" Text="Contraseña:" /></td>
                    <td><asp:TextBox ID="txtContrasena1" class="txt" runat="server"  TextMode="Password" Visible="False" Height="20px" Width="144px" />
                        <asp:Label ID="lblContrasena" class="lblRegistrar" runat="server" Text="&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;" /></td>
                    <td><asp:LinkButton ID="hplContrasena" class="Link" runat="server"  text="Editar" OnClick="hplContrasena_Click" /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblContrasena2" class="lblRegistrar" runat="server" Text="Nueva contraseña:" visible="false" /></td>
                     <td><asp:TextBox ID="txtContrasena2" class="txt" runat="server"  TextMode="Password" Visible="False" Height="20px" Width="144px" /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblContrasena3" class="lblRegistrar" runat="server" Text="Confirmar contraseña:" visible="false" /></td>
                    <td><asp:TextBox ID="txtContrasena3" class="txt" runat="server"  TextMode="Password" Visible="False" Height="20px" Width="144px" /></td>
                </tr>
                 <tr>
                    <td><asp:Label ID="Label5" class="lblRegistrar" runat="server" Text="Dirección:" /></td>
                    <td><asp:TextBox class="txta" runat="server" TextMode="MultiLine" ID="txtDireccion" Visible="False" Width="160px" />
                        <asp:Label ID="lblDireccion" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                    <td><asp:LinkButton class="Link" runat="server" ID="hplDireccion" text="Editar" OnClick="hplDireccion_Click" /></td>
                </tr>
                <!--<tr>
                    <td><asp:Label class="lblRegistrar" runat="server" Text="Experiencia Laboral:" /></td>
                    <td><asp:TextBox Class="txta" runat="server" TextMode="MultiLine" ID="txtExperiencia"  Visible="False" />
                        <asp:Label ID="Label8" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                    <td><asp:LinkButton runat="server" ID="hplExperiencia" text="Editar" /></td>
               </tr>-->
                <tr>
                    <td></td>
                    <td><asp:Image ID="imgError" Visible="false" class="imgError" runat="server" ImageUrl="/Images/error1.png" />
                        &nbsp;<asp:Label ID="msgError" class="error" runat="server" Text="" /></td>
                </tr>
                <tr>
                    <td><br /><asp:Button class="btn" runat="server" Text="Guardar Cambios" ID="btnGuardar" OnClick="btnGuardar_Click" /></td>
                    <td><br /><asp:Button class="btn" runat="server" Text="Cancelar" ID="btnCancelar"  NavigateUrl="~/Default.aspx" OnClick="btnCancelar_Click" /></td>
                </tr>
            </table>
            </div>
        </div>
    </form>
</asp:Content>