<%@ Page Language="C#" MasterPageFile="~/Site.master" CodeBehind="Default.aspx.cs" Inherits="CarteraEmpleo._Default" %>

<asp:Content ID="head2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="../CSS/style-news.css" />

    <script type="text/javascript" src="../Scripts/js/jquery-1.2.6.min.js"></script>
    <script type="text/javascript" src="../Scripts/js/jquery-easing-1.3.pack.js"></script>
    <script type="text/javascript" src="../Scripts/js/jquery-easing-compatibility.1.2.pack.js"></script>
    <script type="text/javascript" src="../Scripts/js/coda-slider.1.1.1.pack.js"></script>
    <script type="text/javascript" src="../Scripts/jQueryDefault.js"></script>

    <script type="text/javascript">

        var theInt = null;
        var $crosslink, $navthumb;
        var curclicked = 0;

        theInterval = function (cur) {
            clearInterval(theInt);

            if (typeof cur != 'undefined')
                curclicked = cur;

            $crosslink.removeClass("active-thumb");
            $navthumb.eq(curclicked).parent().addClass("active-thumb");
            $(".stripNav ul li a").eq(curclicked).trigger('click');

            theInt = setInterval(function () {
                $crosslink.removeClass("active-thumb");
                $navthumb.eq(curclicked).parent().addClass("active-thumb");
                $(".stripNav ul li a").eq(curclicked).trigger('click');
                curclicked++;
                if (6 == curclicked)
                    curclicked = 0;

            }, 3000);
        };

        $(function () {

            $("#main-photo-slider").codaSlider();

            $navthumb = $(".nav-thumb");
            $crosslink = $(".cross-link");

            $navthumb
            .click(function () {
                var $this = $(this);
                theInterval($this.parent().attr('href').slice(1) - 1);
                return false;
            });

            theInterval();
        });
    </script>

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="server">
    <form id="Principal" runat="server">
        <div class="inicio" runat="server">
            <nav class="menu" runat="server">
                <ul>
                    <li><a href="Default.aspx">Inicio</a></li>
                    <!--<li><a href="Default.aspx">Perfil</a></li>-->
                    <li><a href="Default.aspx">Buscar</a></li>
                    <li><a href="RegistroEmpresa.aspx">Contactar</a></li>
                    <li><asp:LinkButton runat="server" Text="Acerca" OnClick="prueba_Click" /></li>
                </ul>
            </nav>
            <div id="Login" class="login">
                <asp:TextBox class="txtLogin" ID="txtCorreo" TextMode="SingleLine" Placeholder="Correo" runat="server" Height="15px" />
                <asp:TextBox class="txtLogin" ID="txtContrasena" TextMode="Password" Placeholder="Contraseña" runat="server" Height="15px" />
                <asp:Button class="btn" ID="btnIniciarSesion" Text="Iniciar Sesión" runat="server" OnClick="btnIniciarSesion_Click" />
            </div>
        </div>
        <div class="register">
            <div class="titulo">Registrarse como:</div>
            <hr />
            <asp:HyperLink ID="btnRegPersona" runat="server" NavigateUrl="~/Interfaz/RegistroPersona.aspx">
                <asp:Image class="RegistroImagen" ID="imgRegPersona" runat="server" ImageUrl="~/Images/Usuario2.png" />
            </asp:HyperLink>
            <asp:Button ID="jdo"></asp:Button>
            <br />
            <asp:HyperLink ID="btnRegEmpresa" runat="server" NavigateUrl="~/Interfaz/RegistroEmpresa.aspx">
                <asp:Image class="RegistroImagen" ID="imgRegEmpresa" runat="server" ImageUrl="~/Images/Empresa2.png" />
            </asp:HyperLink>
        </div>
    </form>
    <div id="page-wrap">


        <div class="slider-wrap">
            <div id="main-photo-slider" class="csw">
                <div class="panelContainer">

                    <div class="panel" title="Panel 1">
                        <div class="wrapper">
                            <img src="../Images/img-news/img1.jpg" alt="temp" />
                            <div class="photo-meta-data">
                                Costa Rica Beautiful Country
                            </div>
                        </div>
                    </div>
                    <div class="panel" title="Panel 2">
                        <div class="wrapper">
                            <img src="../Images/img-news/img2.jpg" alt="temp" />
                            <div class="photo-meta-data">
                                Costa Rica
                            </div>
                        </div>
                    </div>
                    <div class="panel" title="Panel 3">
                        <div class="wrapper">
                            <img src="../Images/img-news/img3.jpg" alt="temp" />
                            <div class="photo-meta-data">
                                Costa Rica
                            </div>
                        </div>
                    </div>
                    <div class="panel" title="Panel 4">
                        <div class="wrapper">
                            <img src="../Images/img-news/img4.jpg" alt="temp" />
                            <div class="photo-meta-data">
                                Costa Rica
                            </div>
                        </div>
                    </div>
                    <div class="panel" title="Panel 5">
                        <div class="wrapper">
                            <img src="../Images/img-news/img5.jpg" alt="temp" />
                            <div class="photo-meta-data">
                                Costa Rica
                            </div>
                        </div>
                    </div>
                    <div class="panel" title="Panel 6">
                        <div class="wrapper">
                            <img src="../Images/img-news/img6.jpg" alt="temp" />
                            <div class="photo-meta-data">
                                Costa Rica
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <a href="#1" class="cross-link active-thumb">
                <img src="../Images/img-news/img1-thumb.jpg" class="nav-thumb" alt="temp-thumb" /></a>
            <div id="movers-row">
                <div><a href="#2" class="cross-link">
                    <img src="../Images/img-news/img2-thumb.jpg" class="nav-thumb" alt="temp-thumb" /></a></div>
                <div><a href="#3" class="cross-link">
                    <img src="../Images/img-news/img3-thumb.jpg" class="nav-thumb" alt="temp-thumb" /></a></div>
                <div><a href="#4" class="cross-link">
                    <img src="../Images/img-news/img4-thumb.jpg" class="nav-thumb" alt="temp-thumb" /></a></div>
                <div><a href="#5" class="cross-link">
                    <img src="../Images/img-news/img5-thumb.jpg" class="nav-thumb" alt="temp-thumb" /></a></div>
                <div><a href="#6" class="cross-link">
                    <img src="../Images/img-news/img6-thumb.jpg" class="nav-thumb" alt="temp-thumb" /></a></div>
            </div>

        </div>

    </div>
</asp:Content>


