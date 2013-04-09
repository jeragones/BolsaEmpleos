<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="PerfilEmpresa.aspx.cs" Inherits="CarteraEmpleo.Interfaz.PerfilEmpresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
        <div id="2" class="borderPerfilEmpresaPersona">
        <div class="titulo">Perfil Empresa</div>
        <br />
        Nombre:
        <asp:Label runat="server" ID="lbl_NombreEmpresa">Nombre de la empresa</asp:Label>
        <br />        
        <form id="Form1" runat="server">
        <br />        
        
         <div id="DatosBasicosEmpresa2" class="datosBasicosEmpresa">
         <asp:Button ID="btModificarEmpresa" runat="server" CssClass="btmodificarEmpr" Text="Editar Información" />
        <h4>Datos Básicos</h4>
        
        <hr/>        
        <table>
            <tr>
                <td>
                   
                    Cedúla Jurídica: <asp:Label runat="server" ID="CedulaJuridica2">Cedúla Jurídica</asp:Label>
                    <br/>
                    Correo Electronico: <asp:Label runat="server" ID="Mail2">ContactoEmpresa@mail.com</asp:Label>
                    <br />
                    Teléfonos: <asp:Label runat="server" ID="Telefonos2">telefonos</asp:Label>
                    <br />
                    Fax: <asp:Label runat="server" ID="fax2">Número Fax</asp:Label>
                    <br />
                    Ubicación: <asp:Label runat="server" ID="Ubicación2">Ubicación de la empresa</asp:Label>
                </td>
                <td>
                    Pagina Web: <asp:Label runat="server" ID="PaginaWeb2">Empresa.com</asp:Label>
                    <br />
                    Descripción: <asp:Label runat="server" ID="Descripcion2">Descripción general de la empresa</asp:Label>
                </td>
             </tr>
        </table>
        </div>
        <div id="PuestosLaborales1" class="puestosLaboralesEmpresa">
            
        <h4>Puestos Laborales en Oferta</h4>
        <hr/>
            <table>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" >
                            <Columns>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:CommandField ShowDeleteButton="True" />
                            </Columns>
                        </asp:GridView>
                    </td>
                    <td>
                        <asp:Button ID="btEliminarOfertasEmpleo" runat="server" CssClass="" Text="Eliminar" />
                    </td>
                </tr>
            </table>
            
        </div>
            
        </form>
    </div>

</asp:Content>
