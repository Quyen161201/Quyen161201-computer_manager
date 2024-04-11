using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using Microsoft.Ajax.Utilities;

namespace qlmaytinh_khaquyen
{
    public partial class dangky : System.Web.UI.Page
    {
        SqlConnection sqlCnn = new SqlConnection();
        SqlDataAdapter sqlda = new SqlDataAdapter();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_dangky_Click(object sender, EventArgs e)
        {
            SqlConnection sqlCnn = new SqlConnection(ConfigurationManager.ConnectionStrings["computer_managerConnectionString2"].ToString());
            string sql1 = "select * from tbl_users where name='" + txt_dangnhap.Text + "'";
            int flag = 0;
            if(txt_dangnhap.Text.Length < 6)
            {
                txt_email.Text = "";
                txt_pass.Text = "";
                lbl_err.Text = "Tên tài khoản phải lớn 6 ký tự";
                flag = 1;
               
            }
            if (txt_pass.Text != txt_confirm_pass.Text)
            {
                lbl_err.Text = "Password nhập lại không chính xác";
                flag = 1;
            }
            if(flag == 0)
            {
                try
                {
                    sqlCnn.Open();
                    String ten, mk, email;
                    ten = txt_dangnhap.Text;
                    mk = txt_pass.Text;
                    email = txt_email.Text;
                    string sql2 = "insert into tbl_users values('" + ten + "','" + mk + "','" + email + "')";
                    SqlDataAdapter ad = new SqlDataAdapter(sql1, sqlCnn);
                    ad.Fill(dt);
                    SqlCommand cmd = new SqlCommand(sql2);
                    cmd.Connection = sqlCnn;

                    if (dt.Rows.Count > 0)
                    {
                        lbl_err.Text = "Tên đăng nhập này đã tồn tại";
                        txt_dangnhap.Focus();
                    }
                    else
                    {
                        int i = cmd.ExecuteNonQuery();
                        if (i > 0)
                        {
                            lbl_err.Text = "";
                            lbl_err2.Text = "Đăng ký thành công";
                        }

                        else
                        {
                            lbl_err.Text = "Lỗi";
                        }
                    }

                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
                finally
                {
                    sqlCnn.Close();
                }

            }
            
            
        }
    }
}