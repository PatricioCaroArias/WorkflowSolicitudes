﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WorkflowSolicitudes.Negocio;

namespace WorkflowSolicitudes
{
    public partial class Formulario_web21 : System.Web.UI.Page
    {

        public static String StrPrivilegio = "MantPrivilegios.aspx";
        public static String StrRutUsuario { get; set; }
        public static int intCodRoUser { get; set; }


        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                intCodRoUser = Convert.ToInt32(Session["intCodRoUser"]);
                Funciones ExisteAcceso = new Funciones();

                Boolean ExistePrivilegio = ExisteAcceso.TieneAcceso(intCodRoUser, StrPrivilegio);

                if (ExistePrivilegio.Equals(false))
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myScript", "<script>javascript: alertify.alert('ERROR : Usted no tiene acceso a esta opción');</script>");
                                       
                    return;
                }


               


                LoadGrid();

                
            }

        }

        private void LoadGrid()
        {
            NegPrivilegios NegocioPrivi = new NegPrivilegios();
            grvPrivilegios.DataSource = NegocioPrivi.ObtenerPrivilegios();
            grvPrivilegios.DataBind();
            txtDescripcionPrivilegios.Text = string.Empty;
            TxtNombre.Text = string.Empty;
          
        }
        

        protected void grvPrivilegios_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvPrivilegios.PageIndex = e.NewPageIndex;
            LoadGrid();
        }

        protected void grvPrivilegios_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grvPrivilegios.EditIndex = -1;
            LoadGrid();
        }

        protected void grvPrivilegios_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int Existe;
            int id = (int)grvPrivilegios.DataKeys[e.RowIndex].Values[0];

            int intCodPrivilegios = (int)grvPrivilegios.DataKeys[e.RowIndex].Values[0];
            NegPrivilegios ExitePrivi = new NegPrivilegios();
            Existe = ExitePrivi.ExistePrivilegio_RolesPrivilegios(intCodPrivilegios);
            if (Existe > 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myScript", "<script>javascript: alertify.alert('ERROR : No se puede eliminar ya que existe en la tabla Roles Privilegios');</script>");
                 
                return;
            }

            if (id > 0)
            {
                NegPrivilegios Neg = new NegPrivilegios();
                Neg.EliminarPrivilegios(id);
                LoadGrid();
            }

            grvPrivilegios.EditIndex = -1;
            LoadGrid();
        }

        protected void grvPrivilegios_SelectedIndexChanged(object sender, EventArgs e)
        {
        
        }

        protected void grvPrivilegios_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = (int)grvPrivilegios.DataKeys[e.RowIndex].Values[0];
            GridViewRow Fila = grvPrivilegios.Rows[e.RowIndex];
            int intEstadoPrivilegios;

            System.Web.UI.WebControls.TextBox EditDescripcionPrivilegios = (System.Web.UI.WebControls.TextBox)Fila.FindControl("txtEditDescPrivilegios");
            string descripcion = EditDescripcionPrivilegios.Text;

            System.Web.UI.WebControls.TextBox EditNombrePrivi = (System.Web.UI.WebControls.TextBox)Fila.FindControl("txtEditNomPrivilegios");
            string nombre = EditNombrePrivi.Text;

            System.Web.UI.WebControls.CheckBox EditEstadoPrvilegio = (System.Web.UI.WebControls.CheckBox)Fila.FindControl("chkEditEstadoPrvilegio");
            //CheckBox estado = EditEstadoPrvilegio.Checked;



            if (EditEstadoPrvilegio.Checked)
            {
                intEstadoPrivilegios = 1;
            }
            else
            {
                intEstadoPrivilegios = 0;
            }

            (new NegPrivilegios()).ActualizarPrivilegios(id, descripcion, nombre, intEstadoPrivilegios);

            grvPrivilegios.EditIndex = -1;
            LoadGrid();
        
        }

        protected void grvPrivilegios_RowEditing(object sender, GridViewEditEventArgs e)
        {
        
        }

        

        protected void btnGuardar_Click(object sender, ImageClickEventArgs e)
        {
            int intEstadoPrivilegios;
            lblMensaje.Text = String.Empty;

            if (txtDescripcionPrivilegios.Text.Equals(String.Empty))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myScript", "<script>javascript: alertify.alert('ERROR: Ingrese la descripción del privilegios');</script>");
                
               return;
            }

            if (TxtNombre.Text.Equals(String.Empty))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myScript", "<script>javascript: alertify.alert('ERROR: Ingrese el nombre del privilegios');</script>");
                
                return;
            }


             if (txtDescripcionPrivilegios.Equals(String.Empty))
            {

                return;
            }

             if (chkEstado.Checked)
             {
                 intEstadoPrivilegios = 1;
             }
             else
             {
                 intEstadoPrivilegios = 0;
             }
             NegPrivilegios NegocioPrivilegios = new NegPrivilegios();

             int intExistePrivi;

             intExistePrivi = NegocioPrivilegios.select_ExistePrivi_Privi(txtDescripcionPrivilegios.Text);


             if (!intExistePrivi.Equals(0))
             {
                 ClientScript.RegisterStartupScript(this.GetType(), "myScript", "<script>javascript: alertify.alert('ERROR: Privilegio ya existe');</script>");
                                
                 txtDescripcionPrivilegios.Text = String.Empty;
                 return;
             }

             //NegPrivilegios NegocioPrivilegios = new NegPrivilegios();

             int intExisteNomPrivi;

             intExisteNomPrivi = NegocioPrivilegios.select_ExistePrivi_NomPrivi(TxtNombre.Text);


             if (!intExisteNomPrivi.Equals(0))
             {
                 ClientScript.RegisterStartupScript(this.GetType(), "myScript", "<script>javascript: alertify.alert('ERROR: Nombre ya existe');</script>");
                                  
                 TxtNombre.Text = String.Empty;
                 return;
             }


            NegPrivilegios NegocioPrivi = new  NegPrivilegios ();
            NegocioPrivi.AltaPrivilegios(txtDescripcionPrivilegios.Text, TxtNombre.Text, intEstadoPrivilegios);

            {

                LoadGrid();
            }

        }

        protected void chkEstadoPrvilegio_CheckedChanged(object sender, EventArgs e)
        {

        }
        

       


        
    }
}