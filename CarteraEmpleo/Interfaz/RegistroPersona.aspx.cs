using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CarteraEmpleo.Clases;
 
 
 namespace CarteraEmpleo
 {
     public partial class RegistroPersona : System.Web.UI.Page
     {
        cGeneralMetodos insMetodos = new cGeneralMetodos();

        protected void Page_Load(object sender, EventArgs e)
        {
            String[] usuario = insMetodos.UsuarioLogin();
 
                ClientScript.RegisterStartupScript(GetType(), "UsuarioActual", "Sesion('" + usuario[0] + "','0')", true);
            
        }
        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            cPersonaDatos persona = new cPersonaDatos();
            msgError.Text = persona.Insertar(txtNombre.Text, txtCorreo.Text, txtTelefono.Text, cmbCondicion.Text, 
                                             txtContrasena.Text, txtConfirmarContrasena.Text, txtDireccion.Text);
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
            Response.Redirect("~/Interfaz/Default.aspx");
            Limpiar();
        }

        protected void Limpiar()
        {
            imgError.Visible = false;
            txtNombre.Text = "";
            txtCorreo.Text = "";
            txtTelefono.Text = "";
            cmbCondicion.SelectedIndex = 0;
            txtDireccion.Text = "";
            msgError.Text = "";
        }
    }
}