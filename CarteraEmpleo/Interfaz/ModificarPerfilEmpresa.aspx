<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="ModificarPerfilEmpresa.aspx.cs" Inherits="CarteraEmpleo.Interfaz.ModificarEmpresa" %>
<asp:Content ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ContentPlaceHolderID="Body" runat="server">
  <form id="Form1" runat="server">
        <div id="3" class="borderPerfilEmpresaPersona" >
        <div class="titulo">Perfil Empresa</div>
        <br/>
        <div><asp:Label ID="Label2" class="lblRegistrar" runat="server" Text="Nombre:" /></div>
         <div><asp:TextBox ID="txtNombre" class="txt" runat="server"  Visible="False" Height="20px" Width="160px"/>
                        <asp:Label ID="lblNombre" class="lblRegistrar" runat="server" Text="Nombre de la Empresa" />
                    <asp:LinkButton class="Link" runat="server" ID="hplNombre" text="Editar" OnClick="hplNombre_Click" />
                 </div>  
        <br/><br/>

        <div id="Div1" runat="server">
       
               
       <table class="datosBasicosPersona">
            <tr>
                <th class="tdborderbot"colspan="3">
                    Datos Básicos
                </th>
            </tr>
            <tr>
                        <td><asp:Label ID="Label1" class="lblRegistrar" runat="server" Text="Cédula Jurídica:" /></td>
                        <td><asp:TextBox class="txt" runat="server" placeholder="0" ID="txtCedula1" MaxLength="1" Height="20px" Width="15px" Visible="False" />
                            <asp:TextBox class="txt" runat="server" placeholder="000" ID="txtCedula2" MaxLength="3" Height="20px" Width="40px" Visible="False" />
                            <asp:TextBox class="txt" runat="server" placeholder="000000" ID="txtCedula3" MaxLength="6" Height="20px" Width="100px" Visible="False" />
                            <asp:Label ID="lblCedula" class="lblRegistrar" runat="server" Text="0-000-000000" /></td>
                        <td><asp:LinkButton class="Link" runat="server" ID="hplCedula" text="Editar" OnClick="hplCedula_Click" /></td>
            </tr>  
           <tr>
                        <td><asp:Label ID="Label9" class="lblRegistrar" runat="server" Text="Correo Electronico:" /></td>
                        <td><asp:TextBox class="txt" runat="server" placeholder="example.com" ID="txtCorreo" Visible="False" Height="20px" Width="175px" />
                            <asp:Label ID="lblCorreo" class="lblRegistrar" runat="server" Text="ContactoEmpresa@mail.com" /></td>
                        <td><asp:LinkButton class="Link" runat="server" ID="hplCorreo" text="Editar"  /></td>
            </tr>
            <tr>
                        <td><asp:Label ID="Label3" class="lblRegistrar" runat="server" Text="Teléfono:" /></td>
                        <td><asp:TextBox class="txt" runat="server" placeholder="8888-8888" ID="txtTelefono" Visible="False" Height="20px" Width="175px" />
                            <asp:Label ID="lblTelefono" class="lblRegistrar" runat="server" Text="8888-8888" /></td>
                        <td><asp:LinkButton class="Link" runat="server" ID="hplTelefono" text="Editar" OnClick="hplTelefono_Click" /></td>
            </tr>
            <tr>
                        <td><asp:Label ID="Label10" class="lblRegistrar" runat="server" Text="Fax:" /></td>
                        <td><asp:TextBox class="txt" runat="server" placeholder="8888-8888" ID="TextBox1" Visible="False" Height="20px" Width="175px" />
                            <asp:Label ID="Label11" class="lblRegistrar" runat="server" Text="8888-8888" /></td>
                        <td><asp:LinkButton class="Link" runat="server" ID="LinkButton1" text="Editar" OnClick="hplTelefono_Click" /></td>
            </tr>
            <tr>
                    <td class="tdleft"><asp:Label ID="Label7" class="lblRegistrar" runat="server" Text="Dirección:" /></td>
                    <td class="tdleft"><asp:TextBox class="txta" runat="server" TextMode="MultiLine" ID="txtDireccion" Visible="False" Width="160px" />
                        <asp:Label ID="lblDireccion" class="lblRegistrar" runat="server" Text="Nombre" /></td>
                    <td class="tdleft"><asp:LinkButton class="Link" runat="server" ID="hplDireccion" text="Editar" OnClick="hplDireccion_Click" /></td>
           </tr>
           <tr>
                        <td><asp:Label ID="Label4" class="lblRegistrar" runat="server" Text="Pagina Web:" /></td>
                        <td><asp:TextBox class="txt" runat="server" placeholder="example.com" ID="TextBox2" Visible="False" Height="20px" Width="175px" />
                            <asp:Label ID="Label12" class="lblRegistrar" runat="server" Text="Empresa.com" /></td>
                        <td><asp:LinkButton class="Link" runat="server" ID="LinkButton2" text="Editar"  /></td>
           </tr>
            <tr>
                    <td class="tdleft"><asp:Label ID="Label13" class="lblRegistrar" runat="server" Text="Descripción:" /></td>
                    <td class="tdleft"><asp:TextBox class="txta" runat="server" TextMode="MultiLine" ID="TextBox3" Visible="False" Width="160px" />
                        <asp:Label ID="Label14" class="lblRegistrar" runat="server" Text="Descripción de la empresa" /></td>
                    <td class="tdleft"><asp:LinkButton class="Link" runat="server" ID="LinkButton3" text="Editar" OnClick="hplDireccion_Click" /></td>
           </tr>
            <tr><td></td><td></td></tr>
           <tr>
                <th class="tdborderbot"colspan="3">
               Configuracion
                </th> 
            </tr>
            <tr>
                    <td class="tdleft"><asp:Label ID="lblContrasena1" class="lblRegistrar" runat="server" Text="Contraseña:" /></td>
                    <td class="tdleft"><asp:TextBox ID="txtContrasena1" class="txt" runat="server"  TextMode="Password" Visible="False" Height="20px" Width="144px" />
                        <asp:Label ID="lblContrasena" class="lblRegistrar" runat="server" Text="&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;" /></td>
                    <td class="tdleft"><asp:LinkButton ID="hplContrasena" class="Link" runat="server"  text="Editar" OnClick="hplContrasena_Click" /></td>
                </tr>
                <tr>
                    <td class="tdleft"><asp:Label ID="lblContrasena2" class="lblRegistrar" runat="server" Text="Nueva contraseña:" visible="false" /></td>
                     <td class="tdleft"><asp:TextBox ID="txtContrasena2" class="txt" runat="server"  TextMode="Password" Visible="False" Height="20px" Width="144px" /></td>
                </tr>
                <tr>
                    <td class="tdleft"><asp:Label ID="lblContrasena3" class="lblRegistrar" runat="server" Text="Confirmar contraseña:" visible="false" /></td>
                    <td class="tdleft"><asp:TextBox ID="txtContrasena3" class="txt" runat="server"  TextMode="Password" Visible="False" Height="20px" Width="144px" /></td>
                </tr>
        </table>
        </div>
    </div>
    </form>
</asp:Content>