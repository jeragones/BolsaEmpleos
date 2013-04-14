﻿using System;
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
                    cPersonaDatos.IDIOMA = ConsultaIdiomas(p_usuario);
                    //cPersonaDatos.TELEFONO = ConsultaTelefonos(p_usuario);
                }
                tipo = 3;
            }
            else
            {
                usuario = webservice.Select_Empresa(p_usuario, p_contrasena);
                if (usuario.Rows.Count != 0)
                {
                    foreach (DataRow row in usuario.Rows)
                    {
                        user = row["TXT_NOMBRE"].ToString();
                    }
                    tipo = 2;
                }
                else 
                {
                    //usuario = webservice.Select_Administrador(p_usuario, p_contrasena);
                    /*if (usuario.Rows.Count != 0)if (usuario.Rows.Count != 0)
                    {
                        foreach (DataRow row in usuario.Rows)
                        {
                            user = "Administrador";
                        }
                        tipo = 1;
                    }*/
                }
            }
            Site.USUARIO = p_usuario;
            Site.TIPO = tipo;
            return user;
        }

        public String[] UsuarioLogin()
        {
            String[] usuario = {"",""};
            switch (Site.TIPO) 
            {
                case 1:
                    usuario[0] = "Administrador";
                    usuario[1] = "1";
                    break;
                case 2:
                    usuario[0] = cEmpresaDatos.NOMBRE;
                    usuario[1] = "2";
                    break;
                case 3:
                    usuario[0] = cPersonaDatos.NOMBRE;
                    usuario[1] = "3";
                    break;
            }
            return usuario;
        }

        protected String[] ConsultaIdiomas(String p_usuario) {
            DataTable idiomas = webservice.Select_Persona_Idioma(p_usuario);
            string temp = "";
            foreach (DataRow row in idiomas.Rows)
            {
                temp += row["TXT_IDIOMA"].ToString() + ",";
            }
            char[] separador = {','};
            return Fragmentar(temp,separador);
        }

        protected String[] ConsultaTelefonos(String p_usuario)
        {
            DataTable telefonos = webservice.Select_Telefono(p_usuario);
            string temp = "";
            foreach (DataRow row in telefonos.Rows)
            {
                temp += row["TXT_TELEFONO"].ToString() + ",";
            }
            char[] separador = { ',' };
            return Fragmentar(temp, separador);
        }

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

        public Boolean ValidarTelefono(String telefono) 
        {
            String[] _sFracmentar;
            char[] separador = { '-' };
            _sFracmentar = Fragmentar(telefono, separador);
            if (telefono.Length != 9 |
                _sFracmentar.Length != 2 |
                !Numero(_sFracmentar[0]) |
                !Numero(_sFracmentar[1]) |
                _sFracmentar[0].Length != _sFracmentar[1].Length)
            {
                return false;
            }
            else 
            {
                return true;
            }
        }
    }
}