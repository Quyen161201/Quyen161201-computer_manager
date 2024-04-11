<%@ Page Title="" Language="C#" MasterPageFile="~/master_page.Master" AutoEventWireup="true" CodeBehind="kqtimkiem.aspx.cs" Inherits="qlmaytinh_khaquyen.kqtimkiem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style11 {
        width: 91px;
    }
    .auto-style13 {
        width: 85px;
        height: 235px;
    }
    .auto-style14 {
        height: 235px;
        width: 148px;
    }
    .auto-style17 {
        height: 28px;
        width: 85px;
    }
    .auto-style18 {
        height: 28px;
        width: 148px;
    }
    .auto-style19 {
        width: 148px;
        height: 251px;
    }
    .auto-style20 {
        width: 85px;
        height: 251px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lbl_thongbao" runat="server"></asp:Label>
<asp:DataList ID="DataList1" runat="server">
    <ItemTemplate>
        <table style="border: 1px solid #000000; width:100%;">
            <tr>
                <td class="auto-style20">Tên máy:</td>
                <td class="auto-style19">
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("tenmay") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Ảnh :</td>
                <td class="auto-style14">
                    <asp:Image ID="Image1" runat="server" Height="178px" ImageUrl='<%# "~/images/"+Eval("anh") %>' Width="171px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style18">
                    <asp:Button ID="btn_chonmua" runat="server" BackColor="Black" Text="Chọn mua" Width="174px" ForeColor="White" Height="47px" />
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
