using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Defence
{
    public partial class c_topwin_tch : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void m_exitLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("LandForm.aspx");
        }
    }
}