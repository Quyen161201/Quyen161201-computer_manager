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
    public partial class dangnhap : System.Web.UI.Page
    {
        SqlConnection sqlCnn = new SqlConnection();
        SqlDataAdapter sqlda = new SqlDataAdapter();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            string sql1 = "select * from tbl_users where name='" + txt_name.Text + "' and password='" + txt_pass.Text + "'";

            SqlConnection sqlCnn = new SqlConnection(ConfigurationManager.ConnectionStrings["computer_managerConnectionString2"].ToString());

            try
            {
                sqlCnn.Open();
                String ten, mk;
                ten = txt_name.Text;
                mk = txt_pass.Text;
              
                SqlDataAdapter ad = new SqlDataAdapter(sql1, sqlCnn);
                ad.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["makhach"] = txt_name.Text;
                    Response.Redirect("trangchu.aspx");
                }
                else
                {
                    lbl_err.Text = "Tên đăng nhập hoặc mật khẩu ko đúng";
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            { sqlCnn.Close(); }

        }
    }
}