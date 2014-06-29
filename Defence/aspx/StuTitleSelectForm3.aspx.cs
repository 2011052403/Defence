using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Defence
{
    public partial class StuTitleSelectForm3 : System.Web.UI.Page
    {
        private SqlHelper m_sqlHelper;

        protected void Page_Load(object sender, EventArgs e)
        {
            m_selectableePaperGridView.Attributes.Add("style", "word-break:break-all;word-wrap:break-word");

            m_sqlHelper = new SqlHelper();

            string id = Session["Id"].ToString();

            string commandText = "select distinct Stu.S_id as 学号, Stu.Name as 姓名, Stu.College as 学院, Stu.Specialty as 专业, Paper.P_id as 选题编号, Title as 选题题目,Teacher.Name as 指导老师, Result as 选题状态 " +
                                 "from Stu, Paper, Stu_Topic,Teacher " +
                                 "where Stu.S_id = " + id + " and Stu.S_id = Stu_Topic.S_id and Paper.P_id = Stu_Topic.P_id and Paper.T_id = Teacher.T_id";

            DataTable dt = m_sqlHelper.Query(commandText);
            m_selectableePaperGridView.DataSource = dt;
            m_selectableePaperGridView.DataBind();

        }
        
        protected void m_availableTitleButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("StuTitleSelectForm1.aspx");
        }

        protected void m_myTitleButton_Click(object sender, EventArgs e)
        {
        }

        protected void SelectedGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
             if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)

            {

               // ((LinkButton)e.Row.Cells[2].Controls[0]).Attributes.Add("onclick", "javascript:return confirm('你确认要删除：\"" + e.Row.Cells[1].Text + "\"吗?')");

            }

        
        }
    }
}