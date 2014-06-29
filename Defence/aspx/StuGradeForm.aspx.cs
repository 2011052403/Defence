using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Defence
{
    public partial class StuGradeForm : System.Web.UI.Page
    {
        private SqlHelper m_sqlHelper;

        protected void Page_Load(object sender, EventArgs e)
        {

            m_sqlHelper = new SqlHelper();

            string id = Session["Id"].ToString();
            string commandText = "select distinct Stu_Paper.S_id as 学号, Stu.Name as 姓名, Stu_Paper.P_id as 论文编号, Paper.Title as 论文题目, Teacher.Name as 指导老师, Stu_Paper.P_score as 论文成绩, Stu_Paper.RP_score as 答辩成绩, Stu_Paper.Total_score as 总成绩 " +
                                 "from Stu_Paper, Stu, Teacher, Paper " +
                                 "where Stu_Paper.S_id = " + id + " and Stu_Paper.S_id = Stu.S_id and Paper.P_id = Stu_Paper.P_id and Paper.T_id = Teacher.T_id";

            DataTable dt = m_sqlHelper.Query(commandText);

            if (dt.Rows.Count != 0)
            {
                m_Grade_StuIdLabel.Text = dt.Rows[0][0].ToString();
                m_Grade_StuNameLabe1.Text = dt.Rows[0][1].ToString();
                m_Grade_TitleIdLabel.Text = dt.Rows[0][2].ToString();
                m_Grade_TitleNameLabel.Text = dt.Rows[0][3].ToString();
                m_Grade_AdvisorLabel.Text = dt.Rows[0][4].ToString();
                m_Grade_PaperGradeLabel.Text = dt.Rows[0][5].ToString();
                m_Grade_DefenceGradeLabel.Text = dt.Rows[0][6].ToString();
                m_Grade_TotalGradeLabel.Text = dt.Rows[0][7].ToString();
            }
        }

    }
}