<%@ Page Title="" Language="C#" MasterPageFile="~/master_page.Master" AutoEventWireup="true" CodeBehind="trangchu.aspx.cs" Inherits="qlmaytinh_khaquyen.trangchu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lbl_thongbao" runat="server"></asp:Label>
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td>Tên máy:</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("tenmay") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Ảnh:</td>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="145px" ImageUrl='<%# "~/images/"+Eval("anh") %>' Width="126px" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
