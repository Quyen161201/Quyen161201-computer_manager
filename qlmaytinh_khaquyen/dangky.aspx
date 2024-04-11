<%@ Page Title="" Language="C#" MasterPageFile="~/master_page.Master" AutoEventWireup="true" CodeBehind="dangky.aspx.cs" Inherits="qlmaytinh_khaquyen.dangky" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style16 {
        width: 125px;
        height: 26px;
    }
    .auto-style17 {
        height: 26px;
    }
    .auto-style21 {
        width: 125px;
        height: 60px;
    }
    .auto-style22 {
        height: 60px;
    }
    .auto-style23 {
        width: 125px;
        height: 59px;
    }
    .auto-style24 {
        height: 59px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%; background-color: #000000; text-align: center;">
    <tr>
        <td colspan="2">&nbsp;&nbsp;
            <asp:Label ID="lbl_dangky" runat="server" ForeColor="#FF3300" Text="Đăng Ký Khách Hàng" Font-Size="30px"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style21">
            <asp:Label ID="Label1" runat="server" Text="Tên đăng nhập" ForeColor="White"></asp:Label>
        </td>
        <td class="auto-style22">
            <asp:TextBox ID="txt_dangnhap" runat="server" Height="29px" Width="437px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style21">
            <asp:Label ID="Label2" runat="server" Text="Email" ForeColor="White"></asp:Label>
        </td>
        <td class="auto-style22">
            <asp:TextBox ID="txt_email" TextMode="Email" runat="server" Height="33px" Width="441px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style21">
            <asp:Label ID="Label3" runat="server" Text="Password" ForeColor="White"></asp:Label>
        </td>
        <td class="auto-style22">
            <asp:TextBox ID="txt_pass" TextMode="Password" runat="server" Height="33px" Width="441px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style23">
            <asp:Label ID="Label4" runat="server" Text="Nhập lại password" ForeColor="White"></asp:Label>
        </td>
        <td class="auto-style24">
            <asp:TextBox ID="txt_confirm_pass" TextMode="Password" runat="server" Height="33px" Width="441px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style16">
            <br />
        </td>
        <td class="auto-style17">
            <asp:Button ID="btn_dangky" runat="server" OnClick="btn_dangky_Click" Text="Đăng Ký" Width="442px" BackColor="#FF3300" ForeColor="White" Height="45px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style17" colspan="2">
            <asp:Label ID="lbl_err2" runat="server" ForeColor="Lime"></asp:Label>
            <asp:Label ID="lbl_err" runat="server" ForeColor="#CC3300"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

