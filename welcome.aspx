<%@ Page Title="" Language="C#" MasterPageFile="~/Anasablon.Master" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="hayalerim.welcome" %>
<%@ MasterType VirtualPath ="~/Anasablon.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblkncid" runat="server" Font-Size="16pt" Visible="False"></asp:Label><br />
<br />
<br /><div class="sd">
    <div class="pnl">
         <asp:Label ID="Lbluyeadi" runat="server" Font-Size="40px" ></asp:Label>
         <asp:Label ID="Lbluyesoyd" runat="server" Font-Size="40pt" ></asp:Label>
    </div>
  <br />
    <div class="ort"><h1>Sitemize hoşgeldiniz </h1> <br />
    <h2>Öncelikle sitenin temel önceliği ögrencilerin <br />
       temel ve ileri eğittimsel ihtiyaçlarını karşılayabilmektir . 
         </h2></div>
<br />
<br />
   <asp:Label ID="LblHata" runat="server" Font-Size="16pt"></asp:Label>
    <br />
<br />
<br />
   </div>
</asp:Content>
 