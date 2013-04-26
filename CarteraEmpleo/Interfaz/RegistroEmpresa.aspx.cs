using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CarteraEmpleo.Clases;
 
 namespace CarteraEmpleo
 {
     public partial class RegistroEmpresa : System.Web.UI.Page
     {
         cGeneralMetodos insMetodos = new cGeneralMetodos();
         cEmpresaDatos insEmpresa = new cEmpresaDatos();

         protected void Page_Load(object sender, EventArgs e)
         {
            ClientScriptManager cs = Page.ClientScript;
            String[] usuario = insMetodos.UsuarioLogin();
            
                //ClientScript.RegisterStartupScript(GetType(), "UsuarioActual", "Sesion('" + usuario[0] + "','0')", true);
            
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            
            String _sCedula = txtCedula1.Text + "-" + txtCedula2.Text + "-" + txtCedula3.Text;
            msgError.Text = insEmpresa.insertar(txtNombre.Text, txtContrasena.Text, txtContrasena.Text, _sCedula, txtCorreo.Text, txtWeb.Text);
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
            txtCedula2.Text = "";
            txtCedula3.Text = "";
            txtCorreo.Text = "";
            txtTelefono.Text = "";
            txtWeb.Text = "";
            txtContrasena.Text = "";
            txtDireccion.Text = "";
            txtDescripcion.Text = "";
        }
    }
}