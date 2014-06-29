using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Defence
{
    public partial class StuTitleSelectForm2 : System.Web.UI.Page
    {
        private SqlHelper m_sqlHelper;

        protected void Page_Load(object sender, EventArgs e)
        {
            m_sqlHelper = new SqlHelper();

            string P_id = Request.QueryString["P_id"];
            //string P_id = "054321";

            string commandText = "select distinct Paper.Introduction as 选题简介 " +
                                 "from Paper " +
                                 "where P_id = " + P_id;

            DataTable dt = m_sqlHelper.Query(commandText);

            m_introductionGridView.DataSource = dt;
            m_introductionGridView.DataBind();
             
        }

        protected void m_retrunBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("StuTitleSelectForm1.aspx");
        }

    }
}