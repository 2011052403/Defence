using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Defence
{
    public partial class c_topwin_manager : System.Web.UI.UserControl
    {

        protected void m_exitLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("LandForm.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            m_welcomeLabel.Text = "欢迎您 : " + Session["UserName"].ToString();
        }

        protected void m_StuManagerBtnClick(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ManageStuForm.aspx");
        }

        protected void m_TeacherManageBtn_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ManageTeacherForm.aspx");
        }

        protected void m_stuAccountManageButton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ManagerAccountForm.aspx");           
        }


    }
}