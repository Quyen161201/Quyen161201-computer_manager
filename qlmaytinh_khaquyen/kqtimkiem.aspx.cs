using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace qlmaytinh_khaquyen
{
    public partial class kqtimkiem : System.Web.UI.Page
    {
        SqlConnection sqlCnn = new SqlConnection();
        SqlDataAdapter sqlda = new SqlDataAdapter();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection sqlCnn = new SqlConnection(ConfigurationManager.ConnectionStrings["computer_managerConnectionString2"].ToString());
            string tenmay = Session["tenmay"].ToString();
            string sqlstr = "select * from tbl_maytinh where tenmay like N'%" + tenmay + "%'";

            try
            {

                sqlCnn.Open();
                SqlDataAdapter sqlAdap = new SqlDataAdapter(sqlstr, sqlCnn);
                sqlAdap.Fill(dt);
                //kt ket qua tra ve
                if (dt.Rows.Count > 0)
                {
                    DataList1.DataSource = dt;
                    DataList1.DataBind();

                }
                else
                {
                    lbl_thongbao.Text = "Khong Co Du Lieu";

                }
            }
            catch (Exception ex)
            {


                lbl_thongbao.Text = "Lỗi" + ex.Message;

            }
            finally
            { sqlCnn.Close(); sqlda.Dispose(); dt.Dispose(); }
        }
    }
}