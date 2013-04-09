<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Persona.aspx.cs" Inherits="CarteraEmpleo.Interfaz.Persona" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
     <div id="3">
        <div class="titulo">Candidato</div>
        <br />
         Nombre:
        <asp:Label runat="server" ID="lbl_NombreEmpresa">Nombre del Candidato</asp:Label>
        <form id="Form1" runat="server">
        <asp:Button ID="Button1" runat="server" CssClass="" Text="Enviar Mensaje" />
               
        <table>
            <tr>
                <td>
                    <h4>Datos Básicos</h4>
                    <hr/>
                    Cedúla: <asp:Label runat="server" ID="CedulaPersona">Cedúla Persona</asp:Label>
                    <br/><br />
                    Teléfonos: <asp:Label runat="server" ID="Telefonos1">telefonos de contacto</asp:Label>
                    <br /><br />
                    Idiomas: <asp:Label runat="server" ID="Idiomas1">Español-Ingles-Frances</asp:Label>
                    <br /><br />
                    Dirección: <asp:Label runat="server" ID="Direccion1">Ubicación de la empresa</asp:Label>
                </td>
                <td>
                    <h4>Información Laboral</h4>
                    <hr/>
                    Condición Laboral: <asp:Label runat="server" ID="PaginaWeb1">Empleado-Desempleado</asp:Label>
                    <br /><br />
                    Resumen Laboral: <asp:Label runat="server" ID="Descripcion1">Descripción de trabajos realizados</asp:Label>
                </td>
             </tr>
        </table>
        </form>
    </div>
</asp:Content>
