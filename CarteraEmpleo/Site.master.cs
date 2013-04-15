using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Web.DynamicData;
using CarteraEmpleo.Clases;
using CarteraEmpleo.Interfaz;

namespace CarteraEmpleo
{
    public partial class Site : System.Web.UI.MasterPage
    {
        public static string USUARIO = "";
        public static string CONTRASENA = "";
        public static int TIPO = 0;

        Service1 webservice = new Service1();
        _Default insDefault = new _Default();
        cPersonaDatos insPersona = new cPersonaDatos();
        cEmpresaDatos insEmpresa = new cEmpresaDatos();
        cGeneralMetodos insMetodos = new cGeneralMetodos();

        public Boolean Usuario()
        {
            if (USUARIO.Equals(""))
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            String usuario = "";
            usuario = insMetodos.IniciarSesion(txtCorreo.Text, txtContrasena.Text);
            if (usuario.Equals(""))
            {
                // mensaje error, no existe el usuario
                txtCorreo.Text = "";
                txtContrasena.Text = "";
            }
            else
            {
                //insDefault.Login(usuario);*/
                ScriptManager.RegisterStartupScript(btnIniciarSesion, GetType(), "UsuarioActual", "Sesion('" + usuario + "')", true);
                //ScriptManager.RegisterStartupScript(GetType(), "UsuarioActual", "Sesion('" + usuario + "')", true);
            }
        }
    }
}
