<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uc_left.ascx.cs" Inherits="qlmaytinh_khaquyen.user_control.WebUserControl1" %>
<asp:DataList ID="DataList1" runat="server" BackColor="Black" Width="291px" CellPadding="20">
    <EditItemStyle BackColor="White" ForeColor="White" />
    <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="White" />
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/theoloai_maytinh.aspx?id="+ Eval("maloai") %>' Text='<%# Eval("ten_loai") %>'></asp:HyperLink>
    </ItemTemplate>
    <SelectedItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="White" />
</asp:DataList>
<asp:Label ID="lbl_thongbao" runat="server"></asp:Label>


