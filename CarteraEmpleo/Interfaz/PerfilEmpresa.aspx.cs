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
            }
            catch(Exception ex){
                //return ex.Message;
            }
        }

        protected void cargarGV1() {
            Service1 webservice = new Service1();
            DataTable dbResultado = webservice.Querry("Select * from CEPUBLICACIONES");
            GridView1.DataSource = dbResultado;
            GridView1.DataBind();
        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btEliminarOfertasEmpleo_Click(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            int _iNUM_PUBLIACIONES = Convert.ToInt32(GridView1.SelectedDataKey.Value);
            Clases.cEmpleosDatos ins = new Clases.cEmpleosDatos();
            ins.eliminar(_iNUM_PUBLIACIONES);
            cargarGV1();
        }

        protected void InsertarPublicacion_Click(object sender, EventArgs e)
        {
            Clases.cEmpleosDatos ins = new Clases.cEmpleosDatos();
            Response.Write("<script language=javascript>alert('" + ins.insertar("empresa@gmail.com", NumJornada.Text, Horario.Text, Conocimientos.Text, Salario.Text) + "');</script>");
            limpiarTextBoxIP();
            cargarGV1();
        }

        protected void limpiarTextBoxIP()
        {
            NumJornada.Text = "";
            Horario.Text = "";
            Conocimientos.Text = "";
            Salario.Text = "";
        }
    }
}