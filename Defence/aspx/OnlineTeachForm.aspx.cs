using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Defence
{
    public partial class OnlineTeachForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.c_topwin4.m_stuTitleSelectButton.Click += new ImageClickEventHandler(m_stuTitleSelectButton_Click);
            this.c_topwin4.m_stuTitleReportButton.Click += new ImageClickEventHandler(m_stuTitleReportButton_Click);
            this.c_topwin4.m_stuPaperButton.Click += new ImageClickEventHandler(m_stuPaperButton_Click);
            this.c_topwin4.m_stuDefenceButton.Click += new ImageClickEventHandler(m_stuDefenceButton_Click);
            this.c_topwin4.m_stuGradeButton.Click += new ImageClickEventHandler(m_stuGradeButton_Click);
            this.c_topwin4.m_stuAccountManageButton.Click += new ImageClickEventHandler(m_stuAccountManageButton_Click);
        }

        void m_stuTitleSelectButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("StuTitleSelectForm.aspx");
        }
        void m_stuTitleReportButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("StuTitleReportForm.aspx");
        }
        void m_stuPaperButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("StuPaperForm.aspx");
        }
        void m_stuDefenceButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("StuDefenceForm.aspx");
        }
        void m_stuGradeButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("StuGradeForm.aspx");
        }
        void m_stuAccountManageButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("StuAccountManageForm.aspx");
        }
    }
}