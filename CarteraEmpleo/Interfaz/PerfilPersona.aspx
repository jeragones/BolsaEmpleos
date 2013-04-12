<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="PerfilPersona.aspx.cs" Inherits="CarteraEmpleo.Interfaz.PerfilPersona" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
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
        <div id="3" class="borderPerfilEmpresaPersona" >
        <div class="titulo">Candidato</div>
        <asp:Button ID="Button1" runat="server" CssClass="btmodificarEmprPers" Text="Editar Información" />
        <br/>
        <div class="titulosDatosBasicos">Nombre:</div>
        <asp:Label runat="server" ID="lbl_NombreEmpresa">Nombre del Candidato</asp:Label>
        <br/>
        <br/>

        <div runat="server">
       
               
       <table class="datosBasicosPersona">
            <tr>
                <th colspan="2" class="auto-style1" >
                    Datos Básicos
                </th>
                <th colspan="2" class="auto-style2">
               Información Laboral
                </th> 
             </tr>
             <tr>
                <td><asp:Label ID="Label4" runat="server">Cedúla:</asp:Label> </td>
                <td><asp:Label ID="Label1" runat="server">Cedúla Persona</asp:Label></td>
                <td><asp:Label ID="Label2" runat="server">Condición Laboral: </asp:Label></td>
                <td><asp:Label ID="Label3" runat="server">Empleado-Desempleado</asp:Label></td>
             </tr>
             <tr>
                <td><asp:Label ID="Label5" runat="server">Teléfonos:</asp:Label></td>
                <td><div class="titulosDatosBasicos"><asp:Label ID="Label6" runat="server">telefonos de contacto</asp:Label></div></td>
                <th rowspan="3"><asp:Label ID="Label7" runat="server">Resumen Laboral: </asp:Label></th>
                <th rowspan="3"><asp:Label ID="Label8" runat="server">Descripción de trabajos realizados</asp:Label></th>
              </tr>
               <tr>
                <td><asp:Label ID="Label9" runat="server">Idiomas:</asp:Label></td>
                <td><div class="titulosDatosBasicos"><asp:Label ID="Label10" runat="server">Español-Ingles-Frances</asp:Label></div></td>
               </tr>
             <tr>
                <td><asp:Label ID="Label13" runat="server">Idiomas:</asp:Label></td>
                <td><asp:Label ID="Label14" runat="server">Ubicación de la empresa</asp:Label></td>
              </tr>
        </table>
        </div>
    </div>
    </form>
         
</asp:Content>
