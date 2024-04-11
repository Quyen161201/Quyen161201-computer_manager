using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace qlmaytinh_khaquyen.user_control
{
    public partial class uc_timkiem : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_timkiem_Click(object sender, EventArgs e)
        {
            Session["tenmay"] = txt_name.Text;
            
            Response.Redirect("~/kqtimkiem.aspx");
        }

        protected void txt_name_TextChanged(object sender, EventArgs e)
        {

        }
    }
}