﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CarteraEmpleo.Clases;

namespace CarteraEmpleo.Interfaz
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        cGeneralMetodos insMetodos = new cGeneralMetodos();
        cEmpresaDatos insEmpresa = new cEmpresaDatos();

        protected void Page_Load(object sender, EventArgs e)
        {
            String usuario = Request.QueryString["U"];
            String accion = Request.QueryString["T"];
            lblMensaje.Text = insMetodos.Registrar(usuario, Convert.ToInt32(accion));
            if (Convert.ToInt32(accion) == 3) 
            {
                btnAceptar.Text = "Aprobar";
                btnRechazar.Visible = true;
            }
            
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            String usuario = Request.QueryString["U"];
            String accion = Request.QueryString["T"];
            lblMensaje.Text = "";

            if (Convert.ToInt32(accion) == 3)
            {
                insEmpresa.AprobarEmpresa(usuario);
            }

            Response.Redirect("~/Interfaz/Default.aspx");
        }
    }
}