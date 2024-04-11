<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uc_timkiem.ascx.cs" Inherits="qlmaytinh_khaquyen.user_control.uc_timkiem" %>
<style type="text/css">
    .auto-style3 {
        margin-left: 0px;
    }
    .auto-style4 {
        height: 217px;
        width: 294px;
        margin-top: 0px;
    }
</style>

<div class="auto-style4" style="background-color: #000000; text-align: center;">
    <br />
    <asp:Label ID="Label1" runat="server" Text="Tên thiết bị" ForeColor="White"></asp:Label>
    <br />
    <br />
            <asp:TextBox ID="txt_name" runat="server" BorderColor="#CCCCCC" BorderStyle="Solid" Height="29px" Width="276px"></asp:TextBox>
        <br />
    <br />
    <asp:Button ID="btn_search" runat="server" BorderColor="#CCCCCC" BorderStyle="Solid" Height="40px" OnClick="btn_timkiem_Click" Text="Tìm kiếm" Width="280px" BackColor="#FF3300" CssClass="auto-style3" ForeColor="White" />
        <br />
    <br />

<asp:Label ID="lbl_tb" runat="server" ForeColor="#CC3300"></asp:Label>


</div>



