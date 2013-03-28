using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarteraEmpleo.Interfaz
{
    public partial class ModificarEmpresa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCancelar_Click(object sender, EventArgs e)
        {

        }

        protected void hplNombre_Click(object sender, EventArgs e)
        {
            lblNombre.Visible = false;
            txtNombre.Visible = true;
            txtNombre.Text = lblNombre.Text;
            hplNombre.Visible = false;
        }

        protected void hplCedula_Click(object sender, EventArgs e)
        {
            lblCedula.Visible = false;
            txtCedula1.Visible = true;
            txtCedula2.Visible = true;
            txtCedula3.Visible = true;

            char[] _cSeparador = { '-' };
            String[] _sCedula = Fragmentar(lblCedula.Text, _cSeparador);

            txtCedula1.Text = _sCedula[0];
            txtCedula2.Text = _sCedula[1];
            txtCedula3.Text = _sCedula[2];
            hplCedula.Visible = false;
        }

        protected void hplTelefono_Click(object sender, EventArgs e)
        {
            lblTelefono.Visible = false;
            txtTelefono.Visible = true;
            txtTelefono.Text = lblTelefono.Text;
            hplTelefono.Visible = false;
        }

        protected void hplSitio_Click(object sender, EventArgs e)
        {
            lblSitio.Visible = false;
            txtSitio.Visible = true;
            txtSitio.Text = lblSitio.Text;
            hplSitio.Visible = false;
        }

        protected void hplContrasena_Click(object sender, EventArgs e)
        {

        }

        protected void hplDescripcion_Click(object sender, EventArgs e)
        {
            lblDescripcion.Visible = false;
            txtDescripcion.Visible = true;
            txtDescripcion.Text = lblDescripcion.Text;
            hplDescripcion.Visible = false;
        }

        protected void hplDireccion_Click(object sender, EventArgs e)
        {
            lblDireccion.Visible = false;
            txtDireccion.Visible = true;
            txtDireccion.Text = lblDireccion.Text;
            hplDireccion.Visible = false;
        }

        protected String[] Fragmentar(String p_cadena, char[] p_separador)
        {
            String[] vector = p_cadena.Split(p_separador);
            return vector;
        }
    }
}