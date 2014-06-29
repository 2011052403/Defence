using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Defence
{
    public partial class c_topwin : System.Web.UI.UserControl
    {

        protected void m_exitLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("LandForm.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            m_welcomeLabel.Text = "欢迎您 : " + Session["UserName"].ToString();
        }

        protected void m_stuTitleSelectButton_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("StuTitleSelectForm1.aspx");
        }

        protected void m_stuTitleReportButton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("StuTitleReportForm.aspx");
        }

        protected void m_stuPaperButton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("StuPaperForm.aspx");
        }

        protected void m_onlineTeachButton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("OnlineTeachForm.aspx");
        }

        protected void m_stuDefenceButton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("StuDefenceForm.aspx");
        }

        protected void m_stuGradeButton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("StuGradeForm.aspx");
        }

        protected void m_stuAccountManageButton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("StuAccountManageForm.aspx");
        }

    }
}