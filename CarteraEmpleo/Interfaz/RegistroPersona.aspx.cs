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
            msgError.Text = persona.insertar(txtNombre.Text, txtCorreo.Text, txtTelefono.Text, cmbCondicion.Text, 
                                             txtContrasena.Text, txtConfirmarContrasena.Text, txtDireccion.Text);
            Limpiar();
            Response.Redirect("~/Interfaz/Default.aspx");
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Limpiar();
            Response.Redirect("~/Interfaz/Default.aspx");
        }

        protected void Limpiar()
        {
            txtNombre.Text = "";
            txtCorreo.Text = "";
            txtTelefono.Text = "";
            cmbCondicion.SelectedIndex = 0;
            txtDireccion.Text = "";
        }
    }

    
}