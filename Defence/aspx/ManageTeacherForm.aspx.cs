using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Defence.aspx
{
    public partial class ManagerTeacherForm : System.Web.UI.Page
    {
        private SqlHelper m_sqlHelper;

        protected void Page_Load(object sender, EventArgs e)
        {
            m_sqlHelper = new SqlHelper();

            if (!this.IsPostBack)
            {
                Bind();
            }
        }

        protected void OnPageChange(object sender, GridViewPageEventArgs e)
        {
            // 得到该控件
            GridView theGrid = sender as GridView;
            int newPageIndex = 0;
            if (e.NewPageIndex == -3)
            {
                //点击了Go按钮
                TextBox txtNewPageIndex = null;
                GridViewRow pagerRow = theGrid.BottomPagerRow;

                if (pagerRow != null)
                {
                    //得到text控件
                    txtNewPageIndex = pagerRow.FindControl("txtNewPageIndex") as TextBox;
                }
                if (txtNewPageIndex != null)
                {
                    //得到索引
                    newPageIndex = int.Parse(txtNewPageIndex.Text) - 1;
                }
            }
            else
            {
                //点击了其他的按钮
                newPageIndex = e.NewPageIndex;
            }
            //防止新索引溢出
            newPageIndex = newPageIndex < 0 ? 0 : newPageIndex;
            newPageIndex = newPageIndex >= theGrid.PageCount ? theGrid.PageCount - 1 : newPageIndex;

            //得到新的值
            m_teacherGridView.PageIndex = newPageIndex;

            //重新绑定
            Bind();
        }

        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            m_teacherGridView.EditIndex = e.NewEditIndex;
            Bind();
        }

        private void Bind()
        {
            string commandText = "select Teacher.T_id as 工号, Teacher.Pwd as 密码, Teacher.Name as 姓名, Teacher.Collge as 学院, Teacher.Specialty as 专业, Teacher.Department as 部门 " +
                                "from Teacher";

            DataTable dt = m_sqlHelper.Query(commandText);
            m_teacherGridView.DataSource = dt;
            m_teacherGridView.DataKeyNames = new string[] { "工号" };//主键
            m_teacherGridView.DataBind();
        }

        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {     
            try
            {
                string updateText = "update Teacher set " +
               "Pwd = '" + ((TextBox)(m_teacherGridView.Rows[e.RowIndex].Cells[1].Controls[0])).Text.ToString().Trim() +
               "', Name = '" + ((TextBox)(m_teacherGridView.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString().Trim() +
               "', Collge = '" + ((TextBox)(m_teacherGridView.Rows[e.RowIndex].Cells[3].Controls[0])).Text.ToString().Trim() +
               "', Specialty = '" + ((TextBox)(m_teacherGridView.Rows[e.RowIndex].Cells[4].Controls[0])).Text.ToString().Trim() +
               "', Department = '" + ((TextBox)(m_teacherGridView.Rows[e.RowIndex].Cells[5].Controls[0])).Text.ToString().Trim() +
               "' where T_id= " + m_teacherGridView.DataKeys[e.RowIndex].Value.ToString();
                m_sqlHelper.Update(updateText);

                m_teacherGridView.EditIndex = -1;

                Bind();

                Response.Write("<script>alert('更新成功！')</script>");
            }
            catch (System.Exception ex)
            {
                Response.Write("<script>alert('更新失败！')</script>");
            }
                    
        }

        protected void OnRowCanel(object sender, GridViewCancelEditEventArgs e)
        {
            m_teacherGridView.EditIndex = -1;
            Bind();
        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string deleteText = "delete from Stu where T_id = " + m_teacherGridView.DataKeys[e.RowIndex].Value.ToString();
            m_sqlHelper.Delete(deleteText);

            m_teacherGridView.EditIndex = -1;
            Bind();
        }

        protected void OnSearch(object sender, EventArgs e)
        {
            switch (m_searchDropDownList.SelectedIndex)
            {
                case 0:
                    {
                        string commandText = "select Teacher.T_id as 工号, Teacher.Pwd as 密码, Teacher.Name as 姓名, Teacher.Collge as 学院, Teacher.Specialty as 专业, Teacher.Department as 部门 " +
                                             "from Teacher " + "where T_id = " + m_searchTextBox.Text.ToString();

                        DataTable dt = m_sqlHelper.Query(commandText);
                        m_teacherGridView.DataSource = dt;
                        m_teacherGridView.DataKeyNames = new string[] { "工号" };//主键
                        m_teacherGridView.DataBind();
                        break;
                    }
                   
                case 1:
                    {
                        string commandText = "select Teacher.T_id as 工号, Teacher.Pwd as 密码, Teacher.Name as 姓名, Teacher.Collge as 学院, Teacher.Specialty as 专业, Teacher.Department as 部门 " +
                                             "from Teacher " + "where Name = '" + m_searchTextBox.Text.ToString() + "'";

                        DataTable dt = m_sqlHelper.Query(commandText);
                        m_teacherGridView.DataSource = dt;
                        m_teacherGridView.DataKeyNames = new string[] { "工号" };//主键
                        m_teacherGridView.DataBind();
                        break;
                    }

                default:
                    break;

            }
        }

        protected void OnReset(object sender, EventArgs e)
        {
            Bind();
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            int i;

            //执行循环，保证每条数据都可以更新
            for (i = 0; i < m_teacherGridView.Rows.Count; i++)
            {
                //首先判断是否是数据行
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    //鼠标经过时，行背景色变 
                    e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='#FFFFFF'");
                    //鼠标移出时，行背景色变 
                    e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor='#E6F5FA'");
                }
            }

        }

        protected void m_importButton_Click(object sender, EventArgs e)
        {
            try
            {
                if (m_stuFileUpload.HasFile)
                {
                    string savedFilePath = Server.MapPath("..\\FF\\test.xls");
                    m_stuFileUpload.SaveAs(savedFilePath);

                    string sheetname = "Sheet1";

                    string strConn;
                    strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + savedFilePath + ";Extended Properties=Excel 8.0;";
                    OleDbConnection conn = new OleDbConnection(strConn);
                    OleDbDataAdapter oada = new OleDbDataAdapter("select * from [" + sheetname + "$]", strConn);
                    DataTable dt = new DataTable();
                    oada.Fill(dt);

                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        string S_id = dt.Rows[i][0].ToString();
                        string Pwd = dt.Rows[i][1].ToString();
                        string Name = dt.Rows[i][2].ToString();
                        string Collge = dt.Rows[i][3].ToString();
                        string Specialty = dt.Rows[i][4].ToString();
                        string Department = dt.Rows[i][5].ToString();

                        string insertText = "INSERT  INTO  Stu  (S_id, Pwd, Name ,Collge, Specialty, Department) " +

                                            "VALUES  ('" + S_id + " ','" + Pwd + "','" + Name + "','" + Collge + "', '" + Specialty + "', '" + Department + "')";

                        m_sqlHelper.Insert(insertText);
                    }
                    Response.Write("<script>alert('导入成功，数据库完成更新！')</script>");
                }
                else
                {
                    Response.Write("<script>alert('请指定导入文件！')</script>");
                }
            }
            catch (System.Exception ex)
            {
                Response.Write("<script>alert('导入失败， 详细情况：" + ex.ToString() + "')</script>");
            }
            
        }

        protected void m_exportButton_Click(object sender, EventArgs e)
        {
            //取得所有教师的数据
            string commandText = "select * from Teacher";
            System.Data.DataTable dt = m_sqlHelper.Query(commandText);

            Microsoft.Office.Interop.Excel.ApplicationClass excel = new Microsoft.Office.Interop.Excel.ApplicationClass();

            Microsoft.Office.Interop.Excel._Workbook xBk;
            Microsoft.Office.Interop.Excel._Worksheet xSt;
            xBk = excel.Workbooks.Add(true);
            xSt = (Microsoft.Office.Interop.Excel._Worksheet)xBk.ActiveSheet;

            int i = 1;
            foreach (DataColumn col in dt.Columns)
            {
                xSt.Cells[1, i] = col.ColumnName.ToString();
                i++;
            }

            int dataRow = 2;
            for (int j = 0; j < dt.Rows.Count; j++)
            {
                for (int k = 0; k < dt.Columns.Count; k++)
                {
                    xSt.Cells[dataRow, k + 1] = dt.Rows[j][k].ToString();
                }
                dataRow++;              
            }

            xBk.SaveCopyAs(Server.MapPath(".") + "\\" + "Teacher2014.xls");

            dt = null;
            xBk.Close(false, null, null);

            excel.Quit();
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xBk);
            System.Runtime.InteropServices.Marshal.ReleaseComObject(excel);
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xSt);
            xBk = null;
            excel = null;
            xSt = null;
            GC.Collect();
            string path = Server.MapPath("Teacher2014.xls");

            System.IO.FileInfo file = new System.IO.FileInfo(path);
            Response.Clear();
            Response.Charset = "GB2312";
            Response.ContentEncoding = System.Text.Encoding.UTF8;
            // 添加头信息，为"文件下载/另存为"对话框指定默认文件名 
            Response.AddHeader("Content-Disposition", "attachment; filename=" + Server.UrlEncode(file.Name));
            // 添加头信息，指定文件大小，让浏览器能够显示下载进度 
            Response.AddHeader("Content-Length", file.Length.ToString());

            // 指定返回的是一个不能被客户端读取的流，必须被下载 
            Response.ContentType = "application/ms-excel";

            // 把文件流发送到客户端 
            Response.WriteFile(file.FullName);
            // 停止页面的执行 

            Response.End();


        }

    }
}