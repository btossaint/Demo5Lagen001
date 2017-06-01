using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using Demo5Lagen001.BU;
using Demo5Lagen001.CC;

namespace Demo5Lagen001
{
    public partial class ZoekDocent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bZoek_Click(object sender, EventArgs e)
        {
            //Array docentgegevens;
            CCZoekDocent zd = new CCZoekDocent();

            //docentgegevens = zd.ZoekDocentA(TextBox1.Text);
            //lDocentNaam.Text = (docentgegevens.GetValue(0) as Docent).Naam.ToString();

            GridView1.DataSource = zd.ZoekDocent(TextBox1.Text);
            GridView1.DataBind();
        }
    }
}