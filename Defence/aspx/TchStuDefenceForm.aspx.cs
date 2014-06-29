using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Defence
{
    public partial class TchStuDefenceForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.c_topwin17.m_tchTitleSelectButton.Click += new ImageClickEventHandler(m_tchTitleSelectButton_Click);
            this.c_topwin17.m_tchReleaseTitleButton.Click += new ImageClickEventHandler(m_tchReleaseTitleButton_Click);
            this.c_topwin17.m_tchPaperReviewButton.Click += new ImageClickEventHandler(m_tchPaperReviewButton_Click);
            this.c_topwin17.m_onlineTeachButton.Click += new ImageClickEventHandler(m_onlineTeachButton_Click);
            this.c_topwin17.m_tchReportReviewButton.Click += new ImageClickEventHandler(m_tchReportReviewButton_Click);
            this.c_topwin17.m_tchGradeManageButton.Click += new ImageClickEventHandler(m_tchGradeManageButton_Click);
            this.c_topwin17.m_tchAccountManageButton.Click += new ImageClickEventHandler(m_tchAccountManageButton_Click);
        }
        void m_tchTitleSelectButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("TchTitleSelectForm.aspx");
        }
        void m_tchReleaseTitleButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("TchReleaseTitleForm.aspx");
        }
        void m_tchPaperReviewButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("TchPaperReviewForm.aspx");
        }
        void m_onlineTeachButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("TchOnlineTeachForm.aspx");
        }
        void m_tchReportReviewButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("TchReportReviewForm.aspx");
        }
        void m_tchGradeManageButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("TchGradeManageForm.aspx");
        }
        void m_tchAccountManageButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("TchAccountManageForm.aspx");
        }

        protected void Defence_ReviewLinkButton_Click(object sender, EventArgs e)
        {
            //修改下面Label的text
        }

        protected void Defence_GradeSubmitButton_Click(object sender, EventArgs e)
        {

        }

        protected void Tch_DefenceNoticeButton_Click(object sender, EventArgs e)
        {
            this.Panel1.Visible = true;
            this.Panel2.Visible = false;
        }

        protected void Tch_DefenceGrade_Click(object sender, EventArgs e)
        {
            this.Panel1.Visible = false;
            this.Panel2.Visible = true;
        }
    }
}