﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Empresa.aspx.cs" Inherits="CarteraEmpleo.Interfaz.Empresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div id="1">
        <div class="titulo">Empresa</div>
        <br/>
        Nombre:
        <asp:Label runat="server" ID="lbl_NombreEmpresa">Nombre de la empresa</asp:Label>
        <form runat="server">
        <asp:Button runat="server" CssClass="" Text="Enviar Mensaje" />
        
        <div id="DatosBasicosEmpresa1">
        <h4>Datos Básicos</h4>
        <hr/>
        
        <table>
            <tr>
                <td>
                   
                    Cedúla Jurídica: <asp:Label runat="server" ID="CedulaJuridica1">Cedúla Jurídica</asp:Label>
                    <br/>
                    Correo Electronico: <asp:Label runat="server" ID="Mail1">ContactoEmpresa@mail.com</asp:Label>
                    <br />
                    Teléfonos: <asp:Label runat="server" ID="Telefonos1">telefonos</asp:Label>
                    <br />
                    Fax: <asp:Label runat="server" ID="fax1">Número Fax</asp:Label>
                    <br />
                    Ubicación: <asp:Label runat="server" ID="Ubicación1">Ubicación de la empresa</asp:Label>
                </td>
                <td>
                    Pagina Web: <asp:Label runat="server" ID="PaginaWeb1">Empresa.com</asp:Label>
                    <br />
                    Descripción: <asp:Label runat="server" ID="Descripcion1">Descripción general de la empresa</asp:Label>
                </td>
             </tr>
        </table>
        </div>
        <div id="PuestosLaborales1">
            
        <h4>Puestos Laborales en Oferta</h4>
        <hr/>
            <asp:ListBox ID="ListBox1" runat="server">
                <asp:ListItem>Guía Turistico</asp:ListItem>
                <asp:ListItem>Chofer</asp:ListItem>
                <asp:ListItem>Servicio General</asp:ListItem>
            </asp:ListBox>        
        </div>
        </form>
    </div>

</asp:Content>

