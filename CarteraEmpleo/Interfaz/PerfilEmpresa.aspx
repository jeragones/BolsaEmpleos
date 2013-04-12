<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="PerfilEmpresa.aspx.cs" Inherits="CarteraEmpleo.Interfaz.PerfilEmpresa" %>
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
        <div class="borderPerfilEmpresaPersona">
        <div class="titulo">Perfil Empresa</div>
        <br />
        Nombre:
        <asp:Button ID="btModificarEmpresa" runat="server" CssClass="btmodificarEmprPers" Text="Editar Información" />
        <asp:Label runat="server" ID="lbl_NombreEmpresa">Nombre de la empresa</asp:Label>
        <br />        
        <div runat="server">
        <br />        
        
         <div id="DatosBasicosEmpresa2" class="datosBasicosEmpresa">
         
        <h4>Datos Básicos</h4>
        
        <hr/>        
        <table >
            <tr>
                <td >                   
                    <div class="titulosDatosBasicos">Cedúla Jurídica:</div> <asp:Label runat="server" ID="CedulaJuridica2">Cedúla Jurídica</asp:Label>
                    <br/>
                    <br/>
                    <div class="titulosDatosBasicos">Correo Electronico:</div> <asp:Label runat="server" ID="Mail2">ContactoEmpresa@mail.com</asp:Label>
                    <br />
                    <br/>
                    <div class="titulosDatosBasicos">Teléfonos:</div> <asp:Label runat="server" ID="Telefonos2">telefonos</asp:Label>
                    <br />
                    <br/>
                    <div class="titulosDatosBasicos">Fax:</div> <asp:Label runat="server" ID="fax2">Número Fax</asp:Label>
                    <br />
                    <br/>
                    <div class="titulosDatosBasicos">Ubicación: </div><asp:Label runat="server" ID="Ubicación2">Ubicación de la empresa</asp:Label>
                </td>
                <td class="tableDatosBasicos">
                    <div class="titulosDatosBasicos">Pagina Web: </div><asp:Label runat="server" ID="PaginaWeb2">Empresa.com</asp:Label>
                    <br />
                    <br/>
                    <div class="titulosDatosBasicos">Descripción:</div> <asp:Label runat="server" ID="Descripcion2">Descripción general de la empresa</asp:Label>
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
            
        </div>
    </div>
    </form>

        

</asp:Content>
