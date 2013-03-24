<%@ Page Language="C#" MasterPageFile="~/Site.master" CodeBehind="Default.aspx.cs" Inherits="CarteraEmpleo._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="server">
    <form id="Principal" runat="server">
        <div class="inicio" runat="server">
            <nav class="menu" runat="server">
                <ul>
                    <li><a href="Default.aspx">Inicio</a></li>
                    <li><a href="Default.aspx">Perfil</a></li>
                    <li><a href="Default.aspx">Buscar</a></li>
                    <li><a href="Default.aspx">Contactar</a></li>
                    <li><a href="Default.aspx">Acerca</a></li>              
                </ul>
            </nav>
            <div class="login">
                <asp:TextBox class="txtLogin" ID="txtCorreo" TextMode="SingleLine" Placeholder="Correo" runat="server" />
                <asp:TextBox class="txtLogin" ID="txtContrasena" TextMode="Password" Placeholder="Contraseña" runat="server" />
                <asp:Button class="btn" ID="btnIniciarSesion" Text="Iniciar Sesión" runat="server" />            
            </div>
        </div>
        <div class="register">
            <div class="titulo">Registrarse como:</div>
            <hr/>
            <asp:HyperLink ID="btnRegPersona"  runat="server"  NavigateUrl="~/Interfaz/RegistroPersona.aspx">
                <asp:Image class="RegistroImagen" ID="imgRegPersona" runat="server" ImageUrl="~/Images/Usuario2.png" />
            </asp:HyperLink>
            <br/>
            <asp:HyperLink ID="btnRegEmpresa" runat="server"  NavigateUrl="~/Interfaz/RegistroEmpresa.aspx">
                <asp:Image class="RegistroImagen" ID="imgRegEmpresa" runat="server" ImageUrl="~/Images/Empresa2.png" />
            </asp:HyperLink>
         </div>
    </form>
</asp:Content>


