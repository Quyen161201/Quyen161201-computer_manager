<%@ Page Title="" Language="C#" MasterPageFile="~/master_page.Master" AutoEventWireup="true" CodeBehind="dangnhap.aspx.cs" Inherits="qlmaytinh_khaquyen.dangnhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style13 {
        width: 123px;
    }
    .auto-style15 {
        height: 25px;
    }
    .auto-style16 {
        margin-top: 20px;
        margin-bottom: 20px;
    }
    .auto-style17 {
        width: 123px;
        height: 92px;
    }
    .auto-style18 {
        height: 92px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="background: black; width:100%; text-align: center;">
    <tr>
        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" ForeColor="White" Text="Đăng Nhập" Font-Size="40px"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td class="auto-style13">
            <asp:Label ID="Label2" runat="server" Text="Tên đăng nhập" ForeColor="White"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txt_name" runat="server" Height="40px" Width="397px" CssClass="auto-style16"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style17">
            <asp:Label ID="Label3" runat="server" Text="Password" ForeColor="White"></asp:Label>
        </td>
        <td class="auto-style18">
            <asp:TextBox ID="txt_pass" TextMode="Password" runat="server" Height="40px" Width="397px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td>
            <asp:Button ID="btn_login" runat="server" BackColor="#FF3300" ForeColor="White" Height="50px" OnClick="btn_login_Click" Text="Đăng Nhập" Width="406px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style15" colspan="2">
            <asp:Label ID="lbl_err" runat="server" ForeColor="#FF3300"></asp:Label>
            <asp:Label ID="lbl_success" runat="server" ForeColor="#66FF33"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
