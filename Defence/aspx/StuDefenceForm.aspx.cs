using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Defence
{
    public partial class StuDefenceForm : System.Web.UI.Page
    {
        private SqlHelper m_sqlHelper;

        protected void Page_Load(object sender, EventArgs e)
        {
            m_sqlHelper = new SqlHelper();

            string id = Session["Id"].ToString();
            string commandText = "select Defence.Title, Defence.Time, Defence.Location, Defence.Defence_Score "  + 
                                " from Defence " +
                                " where S_id = " + id;

            DataTable dt = m_sqlHelper.Query(commandText);

            if (dt.Rows.Count != 0)
            {
                m_Defence_TitleNameLabel.Text = dt.Rows[0][0].ToString();
                m_Defence_TimeLabel.Text = dt.Rows[0][1].ToString();
                m_Defence_PlaceLabel.Text = dt.Rows[0][2].ToString();
                m_Defence_GradeLabel.Text = dt.Rows[0][3].ToString();
            }
        }
        
    }
}