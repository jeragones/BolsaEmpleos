<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="PerfilPersona.aspx.cs" Inherits="CarteraEmpleo.Interfaz.ModificarPersona" %>
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
    <form id="Form1" class="registrar" runat="server">
        <div class="titulo">Perfil</div>
        <br/>
        <table>
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Nombre Completo:" /></td>
                <td><asp:TextBox ID="txtNombre" class="txt" runat="server"  Visible="False" />
                    <asp:Label ID="lblRegistrarActual" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:HyperLink runat="server" ID="lblNombreEditar" text="Editar" /></td>
           
            </tr>
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Cédula:" /></td>
                <td><asp:TextBox class="txt" runat="server" placeholder="1-1111-1111" ID="txtCedula"  Visible="False" />
                    <asp:Label ID="Label1" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:HyperLink runat="server" ID="HyperLink1" text="Editar" /></td>
           
            </tr>
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Teléfono:" /></td>
                <td><asp:TextBox ID="txtTelefono" class="txt" runat="server" placeholder="1111-1111"  Visible="False" />
                    <asp:Label ID="Label2" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:HyperLink runat="server" ID="HyperLink2" text="Editar" /></td>
           
            </tr>
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Idioma(s):" /></td>
                <td><asp:DropDownList ID="cmbIdioma" class="txt" runat="server"  Visible="False" />
                    <asp:Label ID="Label3" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:HyperLink runat="server" ID="HyperLink3" text="Editar" /></td>
           </tr>
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Condicion Laboral:" /></td>
                <td><asp:DropDownList ID="cmbCondicion" class="txt" runat="server" Visible="False">
                        <asp:ListItem Selected="True" Text="Desempleado" />
                        <asp:ListItem Text="Empleado" />
                    </asp:DropDownList> 
                    <asp:Label ID="Label4" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:HyperLink runat="server" ID="HyperLink4" text="Editar" /></td>
           
            </tr>
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Contraseña:" /></td>
                <td><asp:TextBox class="txt" runat="server" ID="txtContrasena" TextMode="Password" ToolTip="La contraseña debe tiener un mínimo de 9 caracteres." Visible="False" />
                    <asp:Label ID="Label5" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:HyperLink runat="server" ID="HyperLink5" text="Editar" /></td>
           
            </tr>
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Confirmar contraseña:" /></td>
                <td><asp:TextBox ID="txtConfirmarContrasena" class="txt" runat="server" TextMode="Password"  Visible="False" />
                    <asp:Label ID="Label6" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:HyperLink runat="server" ID="HyperLink6" text="Editar" /></td>
           
            </tr>
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Dirección:" /></td>
                <td><asp:TextBox ID="txtDireccion" class="txta" runat="server" TextMode="MultiLine" Visible="False" />
                    <asp:Label ID="Label7" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:HyperLink runat="server" ID="HyperLink7" text="Editar" /></td>
           </tr>
            <tr>
                <td><asp:Label class="lblRegistrar" runat="server" Text="Experiencia Laboral:" /></td>
                <td><asp:TextBox Class="txta" runat="server" TextMode="MultiLine" ID="txtExperiencia"  Visible="False" />
                    <asp:Label ID="Label8" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:HyperLink runat="server" ID="HyperLink8" text="Editar" /></td>
           </tr>
            <tr>
                <td></td>
                <td><asp:Image ID="imgError" Visible="false" class="imgError" runat="server" ImageUrl="/Images/error1.png" />
                    &nbsp;<asp:Label ID="msgError" class="error" runat="server" Text="" /></td>
            </tr>
            <tr>
                <td><br /><asp:Button class="btn" runat="server" Text="Registrarse" ID="btnRegistrar"  /></td>
                <td><br /><asp:Button class="btn" runat="server" Text="Cancelar" ID="btnCancelar"  NavigateUrl="~/Default.aspx" /></td>
            </tr>
        </table>
    </form>
</asp:Content>