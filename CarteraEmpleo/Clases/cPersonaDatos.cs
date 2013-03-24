/////////////////////////////////////////////////////////////////////////////
// Instituto Tecnológico de Costa Rica
// Proyecto: Framework Bolsa de empleo de la carrera de turismo
// Descripción: Clase de acceso a datos para tabla 'CEPERSONAS'
// Generado por ITCR Gen v1.0.0.0 
// Fecha: Miercoles, 20 de Marzo de 2013, 3:40:00 p.m.
////////////////////////////////////////////////////////////////////////////

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CarteraEmpleo
{
    public class cPersonaDatos
    {
        cDBService webservice = new cDBService();
        // idioma, cedula, telefono
        public void insertar(String p_nombre, String p_cedula, String p_correo, String p_telefono, String p_idioma, 
                             String p_condicion,  String p_contrasena, String p_direccion, String p_experiencia) 
        {

            char[] _cSeparadorNombre = { ' ' };
            String[] _sNombre = Fragmentar(p_nombre, _cSeparadorNombre);
            char[] _cSeparadorIdioma = { ',' };
            String[] _sIdioma = Fragmentar(p_idioma, _cSeparadorIdioma);
            int _iContador=0;
            while (_iContador < _sIdioma.Length) {
                _sIdioma[_iContador] = _sIdioma[_iContador].Trim();
                // insertar en la tabla de idiomas
                _iContador++;
            }
            
            char _cCondicion = ' ';
            if (p_condicion.Equals("Desempleado"))
            {
                _cCondicion = 'D';
            }
            else
            {
                _cCondicion = 'E';
            }
            if (p_contrasena.Length >= 9) {
                try
                {
                    webservice.Insert_Persona(p_correo, p_contrasena, "Idioma", p_direccion, _sNombre[0], _sNombre[1],
                                              _sNombre[2], _cCondicion, p_experiencia);
                }
                catch (Exception e) { }
            }
        }

        public void modificar(String p_nombre, String p_cedula, String p_correo, String p_telefono, String p_idioma,
                             String p_condicion, String p_contrasena, String p_direccion, String p_experiencia, String p_descripcion)
        {
            char[] _cSeparador = { ' ' };
            String[] _sNombre = Fragmentar(p_nombre, _cSeparador);
            char _cCondicion = ' ';
            if (p_condicion.Equals("Desempleado"))
            {
                _cCondicion = 'N';
            }
            else
            {
                _cCondicion = 'S';
            }
            try
            {
                webservice.Update_Persona(p_correo, p_contrasena, p_descripcion, p_direccion, _sNombre[0], _sNombre[1],
                                          _sNombre[2], _cCondicion, p_experiencia);
            }
            catch (Exception e) { }
        }

        public void eliminar()
        {
        }

        protected String[] Fragmentar(String p_cadena, char[] p_separador) {
            String[] vector = p_cadena.Split(p_separador);
            return vector;
        }
    }
}