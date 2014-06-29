using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Defence
{
    public partial class StuTitleSelectForm : System.Web.UI.Page
    {
        private SqlHelper m_sqlHelper;

        protected void Page_Load(object sender, EventArgs e)
        {
            m_selectableePaperGridView.Attributes.Add("style", "word-break:break-all;word-wrap:break-word");

            m_sqlHelper = new SqlHelper();

            string id = Session["Id"].ToString();
            string pwd = Session["Password"].ToString();

            string commandText = " select distinct Paper.P_id as 选题编号,Paper.Title as 选题题目,Teacher.Name as 指导老师,Teacher.Specialty as 专业 ,Paper.Introduction as 选题简介" +
                                 " from Stu,Teacher,Paper " +
                                 " where S_id = 2011052305 and Stu.College = Teacher.Collge and Teacher.T_id = Paper.T_id";

            DataTable dt = m_sqlHelper.Query(commandText);
            m_selectableePaperGridView.DataSource = dt;
            m_selectableePaperGridView.DataBind();

        }
        
        protected void m_availableTitleButton_Click(object sender, EventArgs e)
        {
            
        }

        protected void m_myTitleButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("StuTitleSelectForm3.aspx");
        }

        protected void m_selectableePaperGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id = Session["Id"].ToString();
            string commandText = " select *" +
                                 " from Stu_Topic " +
                                 " where S_id = " + id;

            DataTable dt = m_sqlHelper.Query(commandText);

            string test = dt.Rows[0]["P_id"].ToString();

            if (test == "")
            {
                Response.Write("<script>alert('选题成功！')</script>");

                string updateText = "update Stu_Topic " +
                                    "set P_id = '" + m_selectableePaperGridView.SelectedRow.Cells[1].Text.ToString() + "', Result = 0 " +
                                    "where S_id = " + id;

                m_sqlHelper.Update(updateText);
            }
            else
            {
                Response.Write("<script>alert('抱歉！您已有选题，请耐心等待老师审阅！')</script>");
            }
        }
    }
}