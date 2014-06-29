using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Defence
{
    public partial class StuPaperForm : System.Web.UI.Page
    {
        private SqlHelper m_sqlHelper;

        protected void Page_Load(object sender, EventArgs e)
        {
            m_sqlHelper = new SqlHelper();

            string id = Session["Id"].ToString();
            string commandText = "select distinct Paper.P_id as 选题编号, Paper.Title as 选题题目,Teacher.Name as 指导老师 " +
                                 "from Stu_Paper, Teacher, Paper " +
                                 "where Stu_Paper.S_id = " + id + " and Stu_Paper.P_id = Paper.P_id and Paper.T_id = Teacher.T_id";

            DataTable dt = m_sqlHelper.Query(commandText);

            if (dt.Rows.Count != 0)
            {
                m_Report_TitleIdLabel.Text = dt.Rows[0][0].ToString();
                m_Report_TitleNameLabe1.Text = dt.Rows[0][1].ToString();
                m_Report_TitleAdviserLabel.Text = dt.Rows[0][2].ToString();
            }
        }

        protected void Report_SubmitButton_Click(object sender, EventArgs e)
        {
            System.Web.HttpFileCollection files = System.Web.HttpContext.Current.Request.Files;
            for (int fileCount = 0; fileCount < files.Count; fileCount++)
            {
                //定义访问客户端上传文件的对象
                System.Web.HttpPostedFile postedFile = files[fileCount];
                //获取要上传的文件类型
                string FileType = postedFile.ContentType.ToString();
                //取得上传得文件名
                string fileName = System.IO.Path.GetFileName(postedFile.FileName);
                //取得文件的扩展名
                string fileExtension = System.IO.Path.GetExtension(fileName);
                //取得上传文件的大小
                string fileSize = postedFile.ContentLength.ToString();

                //把客户端文件转化为BYTE数组
                byte[] fileByteArray = new byte[postedFile.ContentLength];
                Stream stream = postedFile.InputStream;
                stream.Read(fileByteArray, 0, postedFile.ContentLength);

                //把BYTE数组转换为字符串
                Convert.ToBase64String(fileByteArray);
                string s = fileByteArray.ToString();

                string id = Session["Id"].ToString();          
                string commandText = "update Stu_Paper set P_content = @file where S_id = " + id;
                m_sqlHelper.UpdateFile(commandText, fileByteArray);
     
            }

            Response.Write("<script>alert('上传成功！')</script>");
        }
 
    }
}