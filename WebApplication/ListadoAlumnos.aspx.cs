﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class ListadoAlumnos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ConexionDBDataContext instancia = new ConexionDBDataContext();
            IQueryable consultaLinq = (from t in instancia.Alumnos select new { idAlumno = t.idAlumno, DNI = t.DNI, Nombre = t.Nombre, Apellido = t.Apellido, Email = t.Email, Turno = t.Turno });

            gvAlumnos.DataSource = consultaLinq;
            gvAlumnos.DataBind();
        }

        protected void MyButtonClick(object sender, EventArgs e)
        {
            //Get the button that raised the event
            Button btn = (Button)sender;

            //Get the row that contains this button
            GridViewRow gvr = (GridViewRow) btn.NamingContainer;

            int asd = int.Parse(gvr.Cells[1].Text);

            ConexionDBDataContext instancia = new ConexionDBDataContext();
            var consultaLinq = (from t in instancia.Alumnos where t.idAlumno == asd select t).FirstOrDefault();

            instancia.Alumnos.DeleteOnSubmit(consultaLinq);
            instancia.SubmitChanges();

            Response.Redirect("ListadoAlumnos.aspx");
        }
    }
}