using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarteraEmpleo.Interfaz
{
    public partial class ModificarPersona : System.Web.UI.Page
    {
        cPersonaDatos insPersona = new cPersonaDatos();

        protected void Page_Load(object sender, EventArgs e)
        {
            String idioma = "Turco,Romano,Haitiano,Español";
            String telefono = "1234-1236,1278-5691";
            ClientScript.RegisterStartupScript(GetType(), "UsuarioActual", "Sesion('" + cPersonaDatos.NOMBRE + "','3')", true);
            lblNombre.Text = cPersonaDatos.NOMBRE;
            lblDireccion.Text = cPersonaDatos.DIRECCION;
            if (cPersonaDatos.CONDICION == 'd')
            {
                lblCondicion.Text = "Desempleado";
            }
            else 
            {
                lblCondicion.Text = "Empleado";
            }
            /*for (int i = 0; i < cPersonaDatos.IDIOMA.Length; i++) 
            {
                idioma += cPersonaDatos.IDIOMA[i] + ",";
            }*/
            ScriptManager.RegisterStartupScript(this, GetType(), "AgregaroIdioma", "Idiomas('" + idioma + "')", true);
            //ClientScript.RegisterStartupScript(GetType(), "AgregarIdioma", "Idiomas('" + idioma + "')", true);
            /*for (int i = 0; i < cPersonaDatos.TELEFONO.Length; i++)
            {
                telefono += cPersonaDatos.TELEFONO[i] + ",";
            }*/
            ClientScript.RegisterStartupScript(GetType(), "AgregarTelefono", "Telefonos('" + telefono + "')", true);
        }

        protected void hplCedula_Click(object sender, EventArgs e)
        { }

        protected void hplNombre_Click(object sender, EventArgs e)
        {
            lblNombre.Visible = false;
            txtNombre.Visible = true;
            txtNombre.Text = lblNombre.Text;
            hplNombre.Visible = false;
            DesactivarTelefono();
            DesactivarIdioma();
            DesactivarCondicion();
            DesactivarContrasena();
            DesactivarDireccion();
        }

        protected void hplTelefono_Click(object sender, EventArgs e)
        {
            lblTelefono.Visible = false;
            txtTelefono.Visible = true;
            txtTelefono.Text = lblTelefono.Text;
            hplTelefono.Visible = false;
            DesactivarNombre();
            DesactivarIdioma();
            DesactivarCondicion();
            DesactivarContrasena();
            DesactivarDireccion();
        }

        protected void hplIdioma_Click(object sender, EventArgs e)
        {
            imgIdioma.Visible = true;
            cmbIdioma.Visible = true;
            hplIdioma.Visible = false;
            DesactivarNombre();
            DesactivarTelefono();
            DesactivarCondicion();
            DesactivarContrasena();
            DesactivarDireccion();
        }

        protected void hplCondicion_Click(object sender, EventArgs e)
        {
            lblCondicion.Visible = false;
            cmbCondicion.Visible = true;
            cmbCondicion.Text = lblCondicion.Text;
            hplCondicion.Visible = false;
            DesactivarNombre();
            DesactivarTelefono();
            DesactivarIdioma();
            DesactivarContrasena();
            DesactivarDireccion();
        }

        protected void hplContrasena_Click(object sender, EventArgs e)
        {
            lblContrasena1.Text = "Contraseña actual:";
            lblContrasena.Visible = false;
            txtContrasena1.Visible = true;
            lblContrasena2.Visible = true;
            txtContrasena2.Visible = true;
            lblContrasena3.Visible = true;
            txtContrasena3.Visible = true;
            hplContrasena.Visible = false;
            DesactivarNombre();
            DesactivarTelefono();
            DesactivarIdioma();
            DesactivarCondicion();
            DesactivarDireccion();
        }

        protected void hplDireccion_Click(object sender, EventArgs e)
        {
            lblDireccion.Visible = false;
            txtDireccion.Visible = true;
            txtDireccion.Text = lblDireccion.Text;
            hplDireccion.Visible = false;
            DesactivarNombre();
            DesactivarTelefono();
            DesactivarIdioma();
            DesactivarCondicion();
            DesactivarContrasena();
        }

        protected void DesactivarNombre()
        {
            lblNombre.Visible = true;
            txtNombre.Visible = false;
            lblNombre.Text = txtNombre.Text;
            hplNombre.Visible = true;
        }

        protected void DesactivarTelefono()
        {
            lblTelefono.Visible = true;
            txtTelefono.Visible = false;
            lblTelefono.Text = txtTelefono.Text;
            hplTelefono.Visible = true;
        }

        protected void DesactivarIdioma()
        {
            cmbIdioma.Visible = false;
            hplIdioma.Visible = true;
        }

        protected void DesactivarCondicion()
        {
            lblCondicion.Visible = true;
            cmbCondicion.Visible = false;
            lblCondicion.Text = cmbCondicion.Text;
            hplCondicion.Visible = true;
        }

        protected void DesactivarContrasena()
        {
            lblContrasena1.Text = "Contraseña:";
            lblContrasena.Visible = true;
            txtContrasena1.Visible = false;
            lblContrasena2.Visible = false;
            txtContrasena2.Visible = false;
            lblContrasena3.Visible = false;
            txtContrasena3.Visible = false;
            hplContrasena.Visible = true;
        }

        protected void DesactivarDireccion()
        {
            lblDireccion.Visible = true;
            txtDireccion.Visible = false;
            lblDireccion.Text = txtDireccion.Text;
            hplDireccion.Visible = true;
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            DesactivarNombre();
            DesactivarTelefono();
            DesactivarIdioma();
            DesactivarCondicion();
            DesactivarContrasena();
            DesactivarDireccion();
            Response.Redirect("~/Interfaz/Default.aspx");
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            DesactivarNombre();
            DesactivarTelefono();
            DesactivarIdioma();
            DesactivarCondicion();
            DesactivarContrasena();
            DesactivarDireccion();

            /*msgError.Text = insPersona.Modificar(txtContrasena1.Text, txtNombre.Text, "telefonos", cmbCondicion.Text,
                                                 txtContrasena3.Text, txtContrasena2.Text, txtDireccion.Text,
                                                 txtExperiencia.Text);
            if (msgError.Text.Equals(""))
            {
                //persona.EnviarCorreo();
                Response.Redirect("~/Interfaz/Default.aspx");
            }
            else 
            {
                imgError.Visible = true;
            }*/
            
            //Response.Redirect("~/Interfaz/Default.aspx");

            String tmp = "Ingles  ,Aleman  ,Ruso  ,Ucraniano  ,Velvet  ";
            ClientScript.RegisterStartupScript(GetType(), "AgregarIdiomas", "Idiomas('"+ tmp +"')", true);
            ScriptManager.RegisterStartupScript(btnGuardar, GetType(), "Idioma", "Idiomas('" + tmp + "')", true);

        }
    }
}