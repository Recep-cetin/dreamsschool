<%@ Page Title="" Language="C#" MasterPageFile="~/Anasablon.Master" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="hayalerim.giris" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hayalerimConnectionString2 %>" SelectCommand="SELECT * FROM [uyeler] WHERE (([aktif] = @aktif) AND ([silindi] = @silindi))">
            <SelectParameters>
                <asp:Parameter DefaultValue="true" Name="aktif" Type="Boolean" />
                <asp:Parameter DefaultValue="false" Name="silindi" Type="Boolean" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:hayalerimConnectionString3 %>" InsertCommand="INSERT INTO  uyeler (uye_adi,uye_soyadi,uye_dogum_trh,uye_sınıf,uye_il,uye_cnsyt,uye_ePost,parola,silindi,aktif,yetki)
VALUES (@uye_adi,@uye_soyadi,@uye_dogum_trh,@uye_sınıf,@uye_il,@uye_cnsyt,@uye_ePost,@parola,0,1,0)" SelectCommand="SELECT * FROM [uyeler]">
            <InsertParameters>
                <asp:ControlParameter ControlID="txtAdi" Name="uye_adi" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtSoyadi" Name="uye_soyadi" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtDogTar" Name="uye_dogum_trh" PropertyName="Text" />
                <asp:ControlParameter ControlID="DropDownList1" Name="uye_sınıf" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="DropDownList2" Name="uye_il" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="DropDownList3" Name="uye_cnsyt" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="txtEposta" Name="uye_ePost" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox1" Name="parola" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
</p>
    <panel ID="panel1" runat="server" >
   <asp:Panel ID="pnlGiris" runat="server"> <div class="pnl">
      
        <p>
        <p>
            &nbsp;KULANICI ADI ::&nbsp; &nbsp;<asp:TextBox ID="Txtklnadi" runat="server"></asp:TextBox><br />&nbsp;&nbsp;&nbsp;&nbsp; :: &nbsp;&nbsp;
            &nbsp;</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp; SİFRE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :: &nbsp;&nbsp;
            <asp:TextBox ID="Txtparola" runat="server" TextMode="Password"></asp:TextBox>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<asp:Label ID="lblMesaj" runat="server"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
             
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="Btngiris" runat="server" OnClick="Btngiris_Click" Text="BUTON GİRİŞ" Width="180px" />
            &nbsp; &nbsp;</p>
        </div></asp:Panel>
    <p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        </p>
<asp:Panel ID="pnlCikis" runat="server" CssClass="mt-0">
    <div class="pnl"> 
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="GÜVENLİ ÇIKIŞ" Width="220px" />
    <br />
    <br /></div>
</asp:Panel>
        </panel>
<%--    dfvb asdjfbşçfoasudjkfbşsjfauıııııııııııııııııııııııııııııııııııııııııııııııııııııııııııııııııııııııııııııııııııvbvbvbvbvbvbvbvbvbvbvbvbvbvbvbvbvbvbvbvbvbvbvbvbvbvb--%>
    <panel  ID="pnlUye" runat="server"  visible="false">
          <p>
            
            &nbsp;&nbsp;&nbsp;
        </p>

         <div class="pnl">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="auto-style1">
        </div>
       
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
          
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ADI&nbsp; :: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAdi" runat="server"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SOYADI ::&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtSoyadi" runat="server"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SINIF BLGİSİ ::&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" Width="126px">
                <asp:ListItem Value="0">SINIF SEÇİNİZ</asp:ListItem>
                <asp:ListItem Value="1">LİSE BİR</asp:ListItem>
                <asp:ListItem Value="2">LİSE İKİ</asp:ListItem>
                <asp:ListItem Value="3">LİSE ÜÇ</asp:ListItem>
                <asp:ListItem Value="4">LİSE DÖRT</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BULUNDĞU İL ::&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="sdsIller" DataTextField="sehiradi" DataValueField="sehiradi" Height="30px" Width="129px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="sdsIller" runat="server" ConnectionString="<%$ ConnectionStrings:hayalerimConnectionString3 %>" SelectCommand="SELECT * FROM [iller]"></asp:SqlDataSource>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DOĞUM TARİHİ ::&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtDogTar" runat="server" TextMode="DateTime"></asp:TextBox>
             <ajaxToolkit:CalendarExtender ID="txtDogTar_CalendarExtender" runat="server" BehaviorID="txtDogTar_CalendarExtender" TargetControlID="txtDogTar" />
            <br />
&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CİNSİYETİ ::&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList3" runat="server" Height="23px" Width="156px">
                <asp:ListItem Value="0">CİNSİYETİNİZİ SEÇİN</asp:ListItem>
                <asp:ListItem Value="KADIN">KADIN</asp:ListItem>
                <asp:ListItem Value="ERKEK">ERKEK</asp:ListItem>
                <asp:ListItem>EŞCİNSEL</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; E POSTANIZ ::&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtEposta" runat="server" TextMode="Email"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PAROLA&nbsp; ::&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" Text="verilerin benim olup dogrulugunu teyit ederim" />
            <br />
             &nbsp;<asp:Label ID="Label2" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="ONAYLA" />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <asp:RadioButton ID="RadioButton1" runat="server" Text="bu buton gozukmez sadece onaylama ıcın vardır" Visible="False" />
    
        </div>
    
       
    </panel><panel ID="PnlYon" runat="server" >
    <panel ID="PnlAl" runat="server"> <asp:Button ID="Button3" runat="server" Text="ÜYE DEĞİLMİSİN ?" OnClick="Button3_Click1" /></panel> 
    <panel ID="PnlVer" runat="server" Visible="false"><asp:Button ID="Button4" runat="server" Text="ÜYELİĞİM VAR" OnClick="Button4_Click" /></panel>
        </panel>
</asp:Content>
