using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace Defence
{
    public partial class LandForm : System.Web.UI.Page
    {
        private SqlHelper m_sqlHelper;

        protected void Page_Load(object sender, EventArgs e)
        {
            m_IdTextBox.Attributes.Add("onfocus", "return onfocus1();");
            m_pwdTextBox.Attributes.Add("onfocus", "return onfocus1();");

            m_sqlHelper = new SqlHelper();
        }

        protected void m_loginBtn_Click1(object sender, EventArgs e)
        {
            string commandText = null;

            //防止sql注入
            MatchCollection matches1 = Regex.Matches(m_IdTextBox.Text, "[(select)|(update)|(insert)|(delete)]");
            MatchCollection matches2 = Regex.Matches(m_pwdTextBox.Text, "[(select)|(update)|(insert)|(delete)]"); 
            if (matches1.Count != 0 || matches2.Count != 0)
            {
                m_failureLabel.Text = "非法字符串!";
                return;
            }
            

            switch (m_identityList.SelectedItem.Text)
            {
                case "学生":
                    {
                        commandText = "select * from Stu where S_id = '" + m_IdTextBox.Text.ToString() + "' and pwd = '" + m_pwdTextBox.Text.ToString() + "'";
                        break;
                    }
                case "教师":
                    {
                        commandText = "select * from Teacher where T_id = " + m_IdTextBox.Text.ToString() + " and pwd = " + m_pwdTextBox.Text.ToString();
                        break;
                    }
                case "管理员":
                    {
                        commandText = "select * from Manager where M_id = " + m_IdTextBox.Text.ToString() + " and pwd = " + m_pwdTextBox.Text.ToString();
                        break;
                    }
            }



            DataTable dt = m_sqlHelper.Query(commandText);

            if (dt.Rows.Count != 0)
            {
                Session["UserName"] = dt.Rows[0]["Name"].ToString().Trim();
                Session["Password"] = dt.Rows[0]["pwd"].ToString().Trim();//改密码的时候可能用到

                switch (m_identityList.SelectedItem.Text)
                {
                    case "学生":
                        {
                            Session["Id"] = dt.Rows[0]["S_id"].ToString().Trim();
                            Response.Redirect("StuDefault.aspx");
                            break;
                        }
                    case "教师":
                        {
                            Session["Id"] = dt.Rows[0]["T_id"].ToString().Trim();
                            Response.Redirect("TchReleaseTitleForm.aspx");
                            break;
                        }
                    case "管理员":
                        {
                            Session["Id"] = dt.Rows[0]["M_id"].ToString().Trim();
                            Response.Redirect("ManagerDefaultForm.aspx");
                            break;
                        }
                }
            }
            else
            {
                m_failureLabel.Text = "登陆失败，请重新尝试!";

            }

        }


    }
}