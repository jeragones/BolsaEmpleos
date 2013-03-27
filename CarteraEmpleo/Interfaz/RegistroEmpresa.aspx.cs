using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarteraEmpleo
{
    public partial class RegistroEmpresa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            cEmpresaDatos empresa = new cEmpresaDatos();
            msgError.Text = empresa.insertar(txtNombre.Text, txtCedula1.Text, txtCorreo.Text, txtWeb.Text);
            if (msgError.Text.Equals(""))
            {
                //persona.EnviarCorreo();
                Response.Redirect("~/Interfaz/Default.aspx");
                Limpiar();
            }
            else
            {
                imgError.Visible = true;
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Limpiar();
            Response.Redirect("~/Default.aspx");
        }

        protected void Limpiar() {
            txtNombre.Text = "";
            txtCedula1.Text = "";
            txtCorreo.Text = "";
            txtTelefono.Text = "";
            txtWeb.Text = "";
            txtContrasena.Text = "";
            txtDireccion.Text = "";
            txtDescripcion.Text = "";
        }
    }
}