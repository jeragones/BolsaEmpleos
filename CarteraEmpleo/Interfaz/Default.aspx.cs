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

namespace CarteraEmpleo
{
    public partial class _Default : System.Web.UI.Page
    {
        cGeneralMetodos insMetodos = new cGeneralMetodos(); 
        protected void Page_Load(object sender, EventArgs e)
         {
            String[] usuario = insMetodos.UsuarioLogin();
            ClientScript.RegisterStartupScript(GetType(), "UsuarioActual", "Sesion('" + usuario[0] + "', '"+ usuario[1] +"')", true);
            if (!usuario[0].Equals(""))
            {
                Response.Redirect("~/Interfaz/Default.aspx");
                btnRegEmpresa.Visible = false;
                btnRegPersona.Visible = false;
            }
            else 
            {
                btnRegEmpresa.Visible = true;
                btnRegPersona.Visible = true;
            }
            
        }
    }
}
