using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Defence
{
    public partial class TchTitleSelectForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.c_topwin13.m_tchReleaseTitleButton.Click += new ImageClickEventHandler(m_tchReleaseTitleButton_Click);
            this.c_topwin13.m_tchReportReviewButton.Click += new ImageClickEventHandler(m_tchReportReviewButton_Click);
            this.c_topwin13.m_tchPaperReviewButton.Click += new ImageClickEventHandler(m_tchPaperReviewButton_Click);
            this.c_topwin13.m_onlineTeachButton.Click += new ImageClickEventHandler(m_onlineTeachButton_Click);
            this.c_topwin13.m_tchStuDefenceButton.Click += new ImageClickEventHandler(m_tchStuDefenceButton_Click);
            this.c_topwin13.m_tchGradeManageButton.Click += new ImageClickEventHandler(m_tchGradeManageButton_Click);
            this.c_topwin13.m_tchAccountManageButton.Click += new ImageClickEventHandler(m_tchAccountManageButton_Click);
        }
        void m_tchReleaseTitleButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("TchReleaseTitleForm.aspx");
        }
        void m_tchReportReviewButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("TchReportReviewForm.aspx");
        }
        void m_tchPaperReviewButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("TchPaperReviewForm.aspx");
        }
        void m_onlineTeachButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("TchOnlineTeachForm.aspx");
        }
        void m_tchStuDefenceButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("TchStuDefenceForm.aspx");
        }
        void m_tchGradeManageButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("TchGradeManageForm.aspx");
        }
        void m_tchAccountManageButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("TchAccountManageForm.aspx");
        }

        protected void m_TchSelectedLinkButton_Click(object sender, EventArgs e)
        {
            this.Select_TchTitleSelectTable.Visible = false;
            this.Select_TchSelectedStuTable.Visible = true;
            this.BackButton.Visible = true;
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            this.Select_TchTitleSelectTable.Visible = true;
            this.Select_TchSelectedStuTable.Visible = false;
            this.BackButton.Visible = false;
        }
    }
}