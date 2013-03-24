using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarteraEmpleo
{
    public partial class RegistroPersona : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            cPersonaDatos persona = new cPersonaDatos();
            String _sCondicion;
            if (rbDesempleado.Checked == true)
            {
                _sCondicion = rbDesempleado.Text;
            }
            else {
                _sCondicion = rbEmpleado.Text;
            }
            persona.insertar(txtNombre.Text, txtCedula.Text, txtCorreo.Text, txtTelefono.Text, "idioma", 
                             _sCondicion,  txtContrasena.Text, txtDireccion.Text, txtExperiencia.Text);
            Limpiar();
            Response.Redirect("~/Default.aspx");
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Limpiar();
            Response.Redirect("~/Default.aspx");
        }

        protected void Limpiar()
        {
            txtNombre.Text = "";
            txtCedula.Text = "";
            txtCorreo.Text = "";
            txtTelefono.Text = "";
            //txtIdioma.Text = "";
            rbDesempleado.Checked = true;
            txtContrasena.Text = "";
            txtDireccion.Text = "";
            txtExperiencia.Text = "";
        }
    }

    
}