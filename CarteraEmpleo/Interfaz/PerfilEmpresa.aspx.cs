using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CarteraEmpleo.Interfaz
{
    public partial class PerfilEmpresa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try {
                cargarGV1();
                //Service1 webservice = new Service1();
                //webservice.Insert_Categoria ("mesero");
              //  webservice.Insert_Puesto("persona con disponibilidad de horario",1);
                //DataTable dbResultado = webservice.Querry
                //("insert into CECAT_PUESTO values ('mesero')");
                //("insert into CEPUESTOS values ('persona con disponibilidad de horario',1)");
            }
            catch(Exception ex){
                //return ex.Message;
            }
        }

        protected void cargarGV1() {
            Service1 webservice = new Service1();
            DataTable dbResultado = webservice.Querry
                //   ("select * from CEPUESTOS");
                // webservice.Insert_Puesto("persona con disponibilidad de horario", 1);
                // ("select TXT_CATEGORIA , TXT_NOMBRE from CEPUESTOS inner join CECAT_PUESTO on CECAT_PUESTO.NUM_CAT=CEPUESTOS.NUM_CATEGORIA");
            //("Select * from CEPUBLICACIONES");
            //("Select NUM_JORNADALAB as Jornada, TXT_HORARIOS as Horario,TXT_CONOCIMIENTOS as Conocimientos, NUM_SALARIO as Salario from CEPUBLICACIONES");
            ("Select * from CEPUBLICACIONES");
            GridView1.DataSource = dbResultado;
            GridView1.DataBind();
        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btEliminarOfertasEmpleo_Click(object sender, EventArgs e)
        {
            Service1 webservice = new Service1();
           // webservice.Insert_Empresa("empresa@gmail.com","12345678","es una empresa que se dedica al turismo","san carlos","Empresa","1-123-123456","www.empresa.com");
          //  DataTable dbResultado = webservice.Querry("insert CEPUBLICACIONES values ('empresa@gmail.com',1,'tardes','bachiller en GTRS',50000)");
            // webservice.Insert_Puesto("persona con disponibilidad de horario",3);
           // DataTable dbResultado = webservice.Querry("exec pr_CEEMPRESAS_Insertar 'empresa@gmail.com','123456789','es una empresa que se dedica al turismo','san carlos','Empresa','1-123-123456','www.empresa.com'");
//insert CEEMPRESAS values (@ID_CORREO,@TXT_NOMBRE,@TXT_CED_JURIDICA,@TXT_PAG_WEB));
                //("insert CEPUESTOS values ('persona con disponibilidad de horario',2)");
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            Service1 webservice = new Service1();
            //webservice.Update_Categoria(GridView1.SelectedRow[0],GridView1.SelectedRow.ToString[1])
        }

        protected void InsertarPublicacion_Click(object sender, EventArgs e)
        {
            Clases.cEmpleosDatos ins = new Clases.cEmpleosDatos();
            ins.insertar("empresa@gmail.com", NumJornada.Text, Horario.Text, Conocimientos.Text, Salario.Text);
            //Service1 webservice = new Service1();
            //webservice.Insert_Empresa("empresa3@gmail.com", "12345678", "es una empresa que se dedica al turismo", "san carlos", "Empresa", "1-123-123456", "www.empresa.com");
            cargarGV1();
        }
    }
}