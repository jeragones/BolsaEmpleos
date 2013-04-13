using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace CarteraEmpleo.Clases
{
    public class cGeneralMetodos
    {
        Service1 webservice = new Service1();

        public String IniciarSesion(String p_usuario, String p_contrasena)
        {
            DataTable usuario = webservice.Select_Persona(p_usuario, p_contrasena);
            string user = "";
            int tipo = 0;
            if (usuario.Rows.Count != 0)
            {
                foreach (DataRow row in usuario.Rows)
                {
                    user = row["TXT_NOMBRE"].ToString() + " " +
                           row["TXT_APELLIDO1"].ToString() + " " +
                           row["TXT_APELLIDO2"].ToString();
                    cPersonaDatos.NOMBRE = user;
                    cPersonaDatos.CONDICION = char.Parse(row["TXT_COND_LABORAL"].ToString());
                    cPersonaDatos.DIRECCION = row["DIR_DIRECCION"].ToString();
                    //cPersonaDatos.EXPERIENCIA = row["TXT_CONOCIMIENTOS"].ToString();
                    //cPersonaDatos.IDIOMA = ConsultaIdiomas(p_usuario);
                    //cPersonaDatos.TELEFONO = ConsultaTelefonos(p_usuario);
                }
                tipo = 3;
            }
            usuario = webservice.Select_Empresa(p_usuario, p_contrasena);
            if (usuario.Rows.Count != 0)
            {
                foreach (DataRow row in usuario.Rows)
                {
                    user = row["TXT_NOMBRE"].ToString();
                }
                tipo = 2;
            }
            //usuario = webservice.Select_Administrador(p_usuario, p_contrasena);
            if (usuario.Rows.Count != 0)
            {
                foreach (DataRow row in usuario.Rows)
                {
                    user = "Administrador";
                }
                tipo = 1;
            }
            Site.USUARIO = p_usuario;
            Site.TIPO = tipo;
            return user;
        }

        public String UsuarioLogin()
        {
            return Site.USUARIO;
        }

        /*protected String[] ConsultaIdiomas(String p_usuario) {
            DataTable idiomas = webservice.Select_Persona_Idioma(p_usuario);
            string temp = "";
            
            foreach (DataRow row in idiomas.Rows)
            {
                
                user = row["TXT_NOMBRE"].ToString() + " " +
                        row["TXT_APELLIDO1"].ToString() + " " +
                        row["TXT_APELLIDO2"].ToString();
                cPersonaDatos.NOMBRE = user;
                cPersonaDatos.CONDICION = char.Parse(row["TXT_COND_LABORAL"].ToString());
                cPersonaDatos.DIRECCION = row["DIR_DIRECCION"].ToString();
                cPersonaDatos.EXPERIENCIA = row["TXT_CONOCIMIENTOS"].ToString();
                cPersonaDatos.IDIOMA = ConsultaIdiomas(p_usuario);
                cPersonaDatos.TELEFONO = ConsultaTelefonos(p_usuario);
            }
                tipo = 3;
            }
        }*/

        public String[] Fragmentar(String p_cadena, char[] p_separador)
        {
            String[] vector = p_cadena.Split(p_separador);
            return vector;
        }

        public Boolean Numero(String p_numero)
        {
            int _iNumero = 0;
            return (int.TryParse(p_numero, out _iNumero));
        }
    }
}