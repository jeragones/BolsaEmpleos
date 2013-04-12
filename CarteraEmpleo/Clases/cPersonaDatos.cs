/////////////////////////////////////////////////////////////////////////////
// Instituto Tecnológico de Costa Rica
// Proyecto: Framework Bolsa de empleo de la carrera de turismo
// Descripción: Clase de acceso a datos para tabla 'CEPERSONAS'
// Generado por ITCR Gen v1.0.0.0 
// Fecha: Miercoles, 20 de Marzo de 2013, 3:40:00 p.m.
////////////////////////////////////////////////////////////////////////////

using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using CarteraEmpleo.Clases;

namespace CarteraEmpleo
{
    public class cPersonaDatos
    {
        cCorreoComunicacion insCorreo = new cCorreoComunicacion();
        Service1 webservice = new Service1();

        public String IniciarSesion(String p_usuario, String p_contrasena) 
        {
            DataTable usuario = webservice.Select_Persona(p_usuario, p_contrasena);
            string user = "";
            foreach (DataRow row in usuario.Rows) 
            {
                user = row["TXT_NOMBRE"].ToString();   
            }
            return user;
        }

        public String Insertar(String p_nombre, String p_correo, String p_telefono, 
                               String p_condicion, String p_contrasena, String p_confContrasena, 
                               String p_direccion) 
        {
            if (p_nombre.Equals("") | p_correo.Equals("") | p_telefono.Equals("") | 
                p_contrasena.Equals("") | p_confContrasena.Equals(""))
            {
                return("Existen campos vacíos que son requeridos.");
            } 
            String[] _sFracmentar;
            char[] _cSeparadorCorreo1 = { ' ',',','!','#','$','%','^','&','*','(',
                                          ')','+','/',';',':','"','/' };
            char[] _cSeparadorCorreo2 = { '@','.' };
            _sFracmentar = Fragmentar(p_correo, _cSeparadorCorreo1);
            if (_sFracmentar.Length > 1) 
            {
                return("Correo inválido.");
            }
            _sFracmentar = Fragmentar(p_correo, _cSeparadorCorreo2);
            if (_sFracmentar.Length != 3)
            {
                return ("Correo inválido.");
            }
            if (_sFracmentar[0].Equals("") | _sFracmentar[1].Equals("") | _sFracmentar[2].Equals(""))
            {
                return ("Correo inválido.");
            }
            char[] _cSeparadorTelefono = { '-' };
            _sFracmentar = Fragmentar(p_telefono, _cSeparadorTelefono);
            if (p_telefono.Length != 9 | _sFracmentar.Length != 2 | !Numero(_sFracmentar[0]) |
                !Numero(_sFracmentar[1]) | _sFracmentar[0].Length != _sFracmentar[1].Length) 
            {
                return ("Teléfono inválido.");
            }
            if (p_contrasena.Length >= 9)
            {
                if (!p_contrasena.Equals(p_confContrasena))
                {
                    return ("Las contraseñas no coinciden.");
                }
            } 
            else {
                return ("Contraseña inválida.");
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
            String[] _sNombre = new String[3];
            char[] _cSeparadorNombre = { ' ' };
            _sFracmentar = Fragmentar(p_nombre, _cSeparadorNombre);
            if (_sFracmentar.Length <= 3) 
            {
                for (int i = 0; i < 3; i++) 
                {
                    if (i < _sFracmentar.Length)
                    {
                        _sNombre[i] = _sFracmentar[i];
                    }
                    else 
                    {
                        _sNombre[i] = " ";
                    }
                }
            }
            try
            {
                webservice.Insert_Persona(p_correo, p_contrasena, " ", p_direccion, 
                                           _sNombre[0], _sNombre[1], _sNombre[2], 
                                           _cCondicion, " ");
                return ("");
            }
            catch (Exception e) {
                return ("Error Inserción de datos.");
            }
        }

        public void Modificar(String p_nombre, String p_cedula, String p_correo, 
                              String p_telefono, String p_idioma, String p_condicion, 
                              String p_contrasena, String p_direccion, String p_experiencia, 
                              String p_descripcion)
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
                webservice.Update_Persona(p_correo, p_contrasena, p_descripcion, p_direccion, 
                                          _sNombre[0], _sNombre[1], _sNombre[2], _cCondicion, 
                                          p_experiencia);
            }
            catch (Exception e) { 
                
            }
        }

        public void eliminar()
        {
        }

        protected String[] Fragmentar(String p_cadena, char[] p_separador) {
            String[] vector = p_cadena.Split(p_separador);
            return vector;
        }

        protected Boolean Numero(String p_numero) {
            int _iNumero = 0;
            return(int.TryParse(p_numero, out _iNumero)); 
        }
    }
}