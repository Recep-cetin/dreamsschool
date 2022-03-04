<%@ Page Title="" Language="C#" MasterPageFile="~/Anasablon.Master" AutoEventWireup="true" CodeBehind="sınvsnclst.aspx.cs" Inherits="hayalerim.egitimseviyem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
      
        .auto-style1 {
            margin-left: 303;
        }
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <table class="w-100">
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" CssClass="auto-style1" DataKeyNames="snf_id" DataSourceID="sdssınavListesi" GridLines="Horizontal" Height="631px" Width="365px">
                    <Columns>
                        <asp:BoundField DataField="snf_id" HeaderText="snf_id" InsertVisible="False" ReadOnly="True" SortExpression="snf_id" />
                        <asp:BoundField DataField="snf_blrtc" HeaderText="snf_blrtc" SortExpression="snf_blrtc" />
                        <asp:BoundField DataField="kacıncı_sınıf" HeaderText="kacıncı_sınıf" SortExpression="kacıncı_sınıf" />
                        <asp:BoundField DataField="sınıf_ozelg" HeaderText="sınıf_ozelg" SortExpression="sınıf_ozelg" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
                <asp:SqlDataSource ID="sdssınavListesi" runat="server" ConnectionString="<%$ ConnectionStrings:hayalerimConnectionString3 %>" SelectCommand="SELECT * FROM [sinif_bilgileri]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
   
    <br />
    <br />
    <a href="default.aspx">&lt;&lt; BACK TO MASTER PAGE <br />
    <br />
    <a href="default.aspx">&lt;&lt; BACK TO MASTER PAGE</a><br />
</asp:Content>
