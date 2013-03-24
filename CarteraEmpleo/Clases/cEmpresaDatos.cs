/////////////////////////////////////////////////////////////////////////////
// Instituto Tecnológico de Costa Rica
// Proyecto: Framework Bolsa de empleo de la carrera de turismo
// Descripción: Clase de acceso a datos para tabla 'CEEMPRESAS'
// Generado por ITCR Gen v1.0.0.0 
// Fecha: Miercoles, 20 de Marzo de 2013, 3:30:00 p.m.
////////////////////////////////////////////////////////////////////////////

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CarteraEmpleo
{
    public class cEmpresaDatos
    {
        cDBService webservice = new cDBService();
        // telefono
        public void insertar(String p_nombre, String p_cedula, String p_correo, String p_telefono, String p_sitio, 
                             String p_contrasena, String p_descripcion, String p_direccion)
        {
            try
            {
                webservice.Insert_Empresa(p_correo, p_contrasena, p_descripcion, p_direccion, p_nombre, p_cedula, p_sitio);
            } 
            catch(Exception e) {}
        }

        public void modificar(String p_nombre, String p_cedula, String p_correo, String p_sitio, 
                             String p_contrasena, String p_descripcion, String p_direccion)
        {
            try
            {
                webservice.Update_Empresa(p_correo, p_contrasena, p_descripcion, p_direccion, p_nombre, p_cedula, p_sitio);
            } 
            catch(Exception e) {}
        }

        public void eliminar()
        {
        }
    }
}