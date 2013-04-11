using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CarteraEmpleo.Clases
{
    public class cEmpleosDatos
    {
        Service1 webService = new Service1();
        public string insertar(string p_IdCatEmpleo,string p_Descripcion) {
            int _iId_CatEmpleo;
            if (p_Descripcion != "" & p_IdCatEmpleo != ""){
               /* try {
                    _iId_CatEmpleo = Convert.ToInt32(p_IdCatEmpleo);
                }
                catch (Exception e) { }*/
            }
            //webService.insertar_Empleos;
            return "";
        }
    }
}