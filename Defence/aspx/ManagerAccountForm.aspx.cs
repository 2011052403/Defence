using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Defence.aspx
{
    public partial class ManagerAccountForm : System.Web.UI.Page
    {
        private SqlHelper m_sqlHelper;


        protected void Page_Load(object sender, EventArgs e)
        {
            m_Account_ConfirmButton.Attributes.Add("onclick", "check();");
            m_Account_IdLabel.Text = Session["Id"].ToString();
            m_sqlHelper = new SqlHelper();
        }

        protected void Account_ConfirmButton_Click(object sender, EventArgs e)
        {
            string pwd = Session["Password"].ToString();
            string oldPwd = m_Account_OriginalPasswordTextBox.Text.ToString();

            //后期改为js判断
            if (pwd != oldPwd)
            {
                Response.Write("<script>alert('原密码不正确')</script>");
                return;
            }
            else
            {
                if (m_Account_NewPasswordTextBox.Text.ToString() != m_Account_ConfirmNewPasswordTextBox.Text.ToString())
                {
                    Response.Write("<script>alert('输入密码不一致')</script>");
                    return;
                }
                else
                {
                    string id = Session["Id"].ToString();
                    string commandText = "update Manager " +
                                         "set Manager.Pwd = '" + m_Account_NewPasswordTextBox.Text.ToString() + "' " +
                                         "where Manager.M_id = " + id;

                    m_sqlHelper.Update(commandText);
                    Response.Write("<script>alert('修改成功')</script>");
                    return;

                }
            }
        }
    }
}