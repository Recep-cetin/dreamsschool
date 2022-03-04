<%@ Page Title="" Language="C#" MasterPageFile="~/Anasablon.Master" AutoEventWireup="true" CodeBehind="hesabım.aspx.cs" Inherits="hayalerim.hesabım" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
<p>
    <asp:Label ID="lblkncid" runat="server" Visible="False"></asp:Label>
</p>
<p>
</p>
<p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hayalerimConnectionString3 %>" SelectCommand="SELECT * FROM [uyeler] WHERE ([uye_id] = @uye_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblkncid" Name="uye_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
<p>  
</p>
<p>   <asp:Panel ID="Panel1" runat="server" Visible="false">
</p><div class="profil1">
 
    <asp:Panel ID="pnlerkek" runat="server" Visible="false" ><img src="img/erkek.jpg" style="height:150px;width:150px;"/></asp:Panel>
    <asp:Panel ID="pnlkadın" runat="server" Visible="false" ><img src="img/kadın.jpg" style="height:150px;width:150px;"/> </asp:Panel>
    <asp:Panel ID="pnlbelirsiz" runat="server" Visible="false" ><img src="img/belirsiz.jpg" style="height:150px;width:150px;"/> </asp:Panel>
    </div>
    <br /> <br /><br /> <br />
 <br /> <br /><br /> <br /><br /> <br />
    <div class="pnl">
      
<p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ADI&nbsp; ::&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Lbluyeadi" runat="server" Font-Size="XX-Large"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
    <p>
    &nbsp;
</p>
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SOYADI ::&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Lbluyesoyd" runat="server" Font-Size="XX-Large"></asp:Label>
</p>
<p>
    &nbsp;
</p>
    <p>
&nbsp; DOĞUM TARİHİ :: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LblldgmTrh" runat="server" Font-Size="X-Large"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SINIF&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ::&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblsnf" runat="server" Font-Size="X-Large"></asp:Label>
</p>
    <p>
        &nbsp;</p>
<p>
</p>
<p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; İLİ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ::&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Label ID="lblİl" runat="server" Font-Size="X-Large"></asp:Label>
&nbsp;
</p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CİNSİYETİ ::&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblcnsyet" runat="server" Font-Size="X-Large"></asp:Label>
</p>
    <p>
        &nbsp;</p>
<p>
</p>
<p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; E POSTASI ::&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblEpost" runat="server" Font-Size="X-Large"></asp:Label>
&nbsp;&nbsp;
</p>
    <p>
&nbsp;
</p>
    <p>
&nbsp; YETKİ SEVİYESİ::&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblyet" runat="server" Font-Size="X-Large"></asp:Label>
</p></asp:Panel>
    </div>
<p>
</p>
<p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="LblHata" runat="server" Font-Size="XX-Large"></asp:Label>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
