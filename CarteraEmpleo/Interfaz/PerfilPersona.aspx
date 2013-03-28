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
        <div class="titulo">Usuario</div>
        <br/>
        <table>
            <tr>
                <td class="auto-style1"><asp:Label class="lblRegistrar" runat="server" Text="Nombre Completo:" /></td>
                <td class="auto-style2"><asp:TextBox ID="txtNombre" class="txt" runat="server"  Visible="False" />
                    <asp:Label ID="lblRegistrarActual" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:HyperLink runat="server" ID="lblNombreEditar">Editar</asp:HyperLink></td>
           
            </tr>
            <tr>
                <td class="auto-style1"><asp:Label class="lblRegistrar" runat="server" Text="Cédula:" /></td>
                <td class="auto-style2"><asp:TextBox class="txt" runat="server" placeholder="1-1111-1111" ID="txtCedula"  Visible="False" />
                    <asp:Label ID="Label1" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:HyperLink runat="server" ID="HyperLink1">Editar</asp:HyperLink></td>
           
            </tr>
            <tr>
                <td class="auto-style1"><asp:Label class="lblRegistrar" runat="server" Text="Teléfono:" /></td>
                <td class="auto-style2"><asp:TextBox ID="txtTelefono" class="txt" runat="server" placeholder="1111-1111"  Visible="False" />
                    <asp:Label ID="Label2" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:HyperLink runat="server" ID="HyperLink2">Editar</asp:HyperLink></td>
           
            </tr>
            <tr>
                <td class="auto-style1"><asp:Label class="lblRegistrar" runat="server" Text="Idioma(s):" /></td>
                <td class="auto-style2"><asp:DropDownList ID="cmbIdioma" class="txt" runat="server"  Visible="False" />
                    <asp:Label ID="Label3" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:HyperLink runat="server" ID="HyperLink3">Editar</asp:HyperLink></td>
           </tr>
            <tr>
                <td class="auto-style1"><asp:Label class="lblRegistrar" runat="server" Text="Condicion Laboral:" /></td>
                <td class="auto-style2"><asp:DropDownList ID="cmbCondicion" class="txt" runat="server" Visible="False">
                        <asp:ListItem Selected="True" Text="Desempleado" />
                        <asp:ListItem Text="Empleado" />
                    </asp:DropDownList> 
                    <asp:Label ID="Label4" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:HyperLink runat="server" ID="HyperLink4">Editar</asp:HyperLink></td>
           
            </tr>
            <tr>
                <td class="auto-style1"><asp:Label class="lblRegistrar" runat="server" Text="Contraseña:" /></td>
                <td class="auto-style2"><asp:TextBox class="txt" runat="server" ID="txtContrasena" TextMode="Password" ToolTip="La contraseña debe tiener un mínimo de 9 caracteres." Visible="False" />
                    <asp:Label ID="Label5" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:HyperLink runat="server" ID="HyperLink5">Editar</asp:HyperLink></td>
           
            </tr>
            <tr>
                <td class="auto-style1"><asp:Label class="lblRegistrar" runat="server" Text="Confirmar contraseña:" /></td>
                <td class="auto-style2"><asp:TextBox ID="txtConfirmarContrasena" class="txt" runat="server" TextMode="Password"  Visible="False" />
                    <asp:Label ID="Label6" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:HyperLink runat="server" ID="HyperLink6">Editar</asp:HyperLink></td>
           
            </tr>
            <tr>
                <td class="auto-style1"><asp:Label class="lblRegistrar" runat="server" Text="Dirección:" /></td>
                <td class="auto-style2"><asp:TextBox ID="txtDireccion" class="txta" runat="server" TextMode="MultiLine" Visible="False" />
                    <asp:Label ID="Label7" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:HyperLink runat="server" ID="HyperLink7">Editar</asp:HyperLink></td>
           </tr>
            <tr>
                <td class="auto-style1"><asp:Label class="lblRegistrar" runat="server" Text="Experiencia Laboral:" /></td>
                <td class="auto-style2"><asp:TextBox Class="txta" runat="server" TextMode="MultiLine" ID="txtExperiencia"  Visible="False" />
                    <asp:Label ID="Label8" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                <td><asp:HyperLink runat="server" ID="HyperLink8">Editar</asp:HyperLink></td>
           </tr>
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style2"><asp:Image ID="imgError" Visible="false" class="imgError" runat="server" ImageUrl="/Images/error1.png" />
                    &nbsp;<asp:Label ID="msgError" class="error" runat="server" Text="" /></td>
            </tr>
            <tr>
                <td class="auto-style1"><br /><asp:Button class="btn" runat="server" Text="Registrarse" ID="btnRegistrar"  /></td>
                <td class="auto-style2"><br /><asp:Button class="btn" runat="server" Text="Cancelar" ID="btnCancelar"  NavigateUrl="~/Default.aspx" /></td>
            </tr>
        </table>
    </form>
</asp:Content>