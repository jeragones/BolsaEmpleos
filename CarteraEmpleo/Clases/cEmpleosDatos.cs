using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CarteraEmpleo.Clases;

namespace CarteraEmpleo.Clases
{
    public class cEmpleosDatos
    {
        Service1 webService = new Service1();

        /**
         * inserta puestos
         */
        public string insertar(string p_Correo, string p_NumJornada, string p_Horario, string p_Conocimientos, string p_Salario)
        {
            if (p_Correo != "" && p_NumJornada != "" && p_Horario != "" && p_Conocimientos != "" && p_Salario != "")
            {
                if (Numero(p_NumJornada) && Numero(p_Salario))
                {
                    int _iNumJornada = Convert.ToInt32(p_NumJornada);
                    int _iSalario = Convert.ToInt32(p_Salario);
                    try
                    {
                        webService.Insert_Publicacion(p_Correo, _iNumJornada, p_Horario, p_Conocimientos, _iSalario);
                        return "Puesto Insertado con Exito";
                    }
                    catch (Exception e)
                    {
                        return e.Message;
                    }
                }
                else {
                    return "En el campo 'Número de Jornada' o 'Salario' no se escribió un valor numérico";
                }
            }else {
                return "Existen Campos sin Completar";
            }
        }

        /**
         * Modificar Puesto
         */
        public void modificar(string p_IdPuesto,string p_Descripcion,string p_IdCatEmpleo) {
            if (p_IdPuesto != "" && p_Descripcion != "" && p_IdCatEmpleo != "")
            {
                if (Numero(p_IdPuesto) && Numero(p_IdCatEmpleo)) {
                    int _iIdPuesto = Convert.ToInt32(p_IdPuesto);
                    int _iIdCatEmpleo = Convert.ToInt32(p_IdCatEmpleo);
                    try
                    {
                        webService.Update_Puesto(_iIdPuesto, p_Descripcion, _iIdCatEmpleo);
                    }
                    catch (Exception e){ }
                }
            }
        }

        /**
         * eliminar puesto
         */
        public void eliminar(int p_IdPuesto) {
            try
            {
                webService.Delete_Publicacion(p_IdPuesto);
            }
            catch (Exception e)
            {
                //e.Message;
            }
        }

        /**
         * valida si el parametro es un numero
         */
        protected Boolean Numero(String p_numero)
        {
            int _iNumero = 0;
            return (int.TryParse(p_numero, out _iNumero));
        }
    }
}