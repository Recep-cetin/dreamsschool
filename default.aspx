<%@ Page Title="" Language="C#" MasterPageFile="~/Anasablon.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="hayalerim._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      
    <asp:Repeater ID="rptIcerik" runat="server" DataSourceID="sdssayfa">
        <ItemTemplate>
           <div class="sayfa"> <h3><%#Eval("sayfa_basligi") %></h3></div>
            <div  class="icerik"><%#Eval("Icerik") %></div>
        </ItemTemplate>
    </asp:Repeater>
  

    <asp:SqlDataSource ID="sdssayfa" runat="server" ConnectionString="<%$ ConnectionStrings:hayalerimConnectionString3 %>" SelectCommand="SELECT * FROM [sayfalar] WHERE ([aktif] = @aktif)">
        <SelectParameters>
            <asp:Parameter DefaultValue="true" Name="aktif" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
  

    <p class="text-center">
        sayfamızı zıyaret etıgınız ıcın teşekürler...</p>
    <p class="text-center">
        &nbsp;sitemiz kendinizi geliştirmeniz amacıyla &nbsp;tasarlanmıştır ..</p>
    <p class="text-center">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sitenın temel prensiblerinden biri kulanıcı memnunıyetını ust sevıyede tutmaktır ..&nbsp;</p>
<p class="text-center">
        hayalerinizi süsleyen her branşa bu site sayesinde ulaşacaksınız ..</p>
    <p>
        &nbsp;</p>
      
</asp:Content>
