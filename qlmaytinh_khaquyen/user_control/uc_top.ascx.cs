using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.WebPages;

namespace qlmaytinh_khaquyen.user_control
{
    public partial class uc_top : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["makhach"] != null)
            {
                menu_dangnhap.Visible = false;
                lbl_menu_username.Text = "Xin chào " + Session["makhach"];
                btn_logout.Text = "Đăng xuất";
            }
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session["makhach"] = null;
            Response.Redirect("dangnhap.aspx");
            menu_dangnhap.Visible = false;
        }
    }
}