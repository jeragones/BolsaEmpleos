﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CarteraEmpleo.Clases;

namespace CarteraEmpleo.Interfaz
{
    public partial class PerfilPersona : System.Web.UI.Page
    {
        cGeneralMetodos insMetodos = new cGeneralMetodos();

         protected void Page_Load(object sender, EventArgs e)
         {
            String[] usuario = insMetodos.UsuarioLogin();

                ClientScript.RegisterStartupScript(GetType(), "UsuarioActual", "Sesion('" + usuario[0] + "','" + usuario[1] + "')", true);
            
        }

        protected void QuitarIdioma(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(GetType(), "Quitaridiomas", "QuitarIdioma('idioma1')", true);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String tmp = "Ingles  ,Aleman  ,Ruso  ,Ucraniano  ,Velvet  ";
            ClientScript.RegisterStartupScript(GetType(), "AgregarIdiomas", "Idiomas('"+ tmp +"')", true);
        }
    }
}