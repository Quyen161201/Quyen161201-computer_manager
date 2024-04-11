<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uc_top.ascx.cs" Inherits="qlmaytinh_khaquyen.user_control.uc_top" %>
        <style type="text/css">
            .auto-style1 {
                height: 26px;
            }
        </style>
        <table style="width: 100%; text-align: center;">
            <tr>
                <td class="auto-style1" style="background-color: #000000">&nbsp;<asp:HyperLink ID="menu_trangchu" runat="server" ForeColor="White" NavigateUrl="~/trangchu.aspx" BackColor="Black" Width="200px">Trang chủ</asp:HyperLink>
            <asp:HyperLink ID="menu_lienhe" runat="server" ForeColor="White" NavigateUrl="~/trangchu.aspx" Width="200px">Liên hệ</asp:HyperLink>
            <asp:HyperLink ID="menu_dangnhap" runat="server" ForeColor="White" NavigateUrl="~/dangnhap.aspx" Width="200px" style="height: 22px">Đăng nhập</asp:HyperLink>
            <asp:HyperLink ID="menu_dangki" runat="server" ForeColor="White" NavigateUrl="~/dangky.aspx" Width="150px">Đăng Ký</asp:HyperLink>
                    <asp:Label ID="lbl_menu_username" runat="server" ForeColor="#FF3300"></asp:Label>
                    <asp:Button ID="btn_logout" runat="server" BackColor="Black" BorderStyle="None" ForeColor="White" Height="24px" OnClick="btn_logout_Click" />
                </td>
            </tr>
</table>


<p>
    &nbsp;</p>



