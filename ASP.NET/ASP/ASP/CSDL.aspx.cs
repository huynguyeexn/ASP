using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP
{
    public partial class CSDL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label lbCod = GridView2.Rows[GridView2.SelectedIndex].Cells[2].Controls[1] as Label;

            txt1.Text = lbCod.Text;
        }
    }
}