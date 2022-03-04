<%@ Page Title="" Language="C#" MasterPageFile="~/Anasablon.Master" AutoEventWireup="true" CodeBehind="mesleksecimi.aspx.cs" Inherits="hayalerim.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <br /><br />
    <asp:Label ID="Label1" runat="server"></asp:Label>  <br /><br />
        <asp:Label ID="Lblkarakter" runat="server"></asp:Label>
    <asp:Label ID="Lblsclmslk" runat="server"></asp:Label>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hayalerimConnectionString3 %>" SelectCommand="SELECT Meslek.uye_id, karakter.uye_id, karakter.karakter, Meslek.meslek FROM karakter FULL OUTER JOIN Meslek ON Meslek.uye_id = karakter.uye_id WHERE (karakter.uye_id = @uye_id)" InsertCommand="INSERT INTO Meslek(meslek,uye_id) VALUES (@meslek,@uye_id)">
        <InsertParameters>
            <asp:ControlParameter ControlID="LblMeslek" Name="meslek" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label1" Name="uye_id" PropertyName="Text" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="Label1" Name="uye_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblMesaj" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>

    <asp:Panel ID="panel1" runat="server"  Visible="false"> <%--buraya dikkat--%>
        <div class="meslek">
            <div class="mes">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" class="linkbtn">Yazılım Mühendisliği</asp:LinkButton> </div><br />
              
            <div class="yaz">
                    <span style="color: rgb(32, 32, 32); font-family: Rubik-Regular; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Yazılım mühendisliği (Software Engineering), yazılımlarla ilgilinen bir bilim dalıdır. Bu bilimin temsilcileri olarak yazılım mühendisleri, kullanıcıların ihtiyaçları doğrultusunda oluşturulacak yazılımın gereksinimlerini, tasarımını ve yapısını inceler ya da programlama dillerini kullanarak yazılımı meydana getirirler.</span></div>   
       </div> 
    </asp:Panel>

    <asp:Panel ID="panel2" runat="server" Visible="false"> <%--buraya dikkat--%>
          <div class="meslek">
            <div class="mes">
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" class="linkbtn"> Yapay Zeka Mühendisliği</asp:LinkButton></div><br />
                 
            <div class="yaz">
                    <span style="color: rgb(32, 32, 32); font-family: Rubik-Regular; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Makineleri insan beyniymiş gibi çalışacak şekilde programlayan, makine öğrenme algoritmalarını tasarlayan kişilere yapay zeka mühendisi denir. Makineleri mantıklı ve verimli bir şekilde hareketler gerçekleştirmek amacıyla programlayan yapay zeka mühendisleri yazılım firmalarında çalışabilir.</span></div>   
       </div> 

    </asp:Panel>

       
    <asp:Panel ID="panel3" runat="server" Visible="false"> <%--buraya dikkat--%>
          <div class="meslek">
            <div class="mes">
                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" class="linkbtn">Makina Mühendisliği</asp:LinkButton>  </div><br />
              
            <div class="yaz">
                    <span>Makine mühendisliği, mekanik sistemler tasarlamak, analiz etmek, üretmek ve bakımını yapmak için mühendislik fiziği ve matematik ilkelerini malzeme bilimi ile birleştiren bir mühendislik disiplinidir. Mühendislik disiplinlerinin en eski ve en genişlerinden biridir.</span></div>   
       </div> 

    </asp:Panel>

    <asp:Panel ID="panel4" runat="server" Visible="false"> <%--buraya dikkat--%>
          <div class="meslek">
            <div class="mes">
                <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" class="linkbtn">Matamatik Öğretmenliği</asp:LinkButton> </div><br />
                 
            <div class="yaz">
                    <span >Matematik; insan hayatına en fazla etkisi bulunan bilim dalıdır. Matematik, gerçek dünyada meydana gelen problemleri çözmek için yararlıdır. Sayılar, şekiller ve desenler üzerine geçmişten günümüze hesaplama içeren tüm çalışmalara verilen genel addır.</span></div>   
       </div> 

    </asp:Panel>
  
    <asp:Panel ID="panel5" runat="server"  Visible="false"> <%--buraya dikkat--%>
          <div class="meslek">
            <div class="mes">
                <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" class="linkbtn"> Muhasebe </asp:LinkButton>  </div><br />
              
            <div class="yaz">
                    <span >Muhasebe, finansal işlemlerin kaydedilmesi, sıralanması, alınması, özetlenmesi ve sonuçların çeşitli rapor ve analizlerde sunulması ile birlikte kaydedilme işlemine verilen genel addır. Muhasebe aynı zamanda bu görevleri yerine getirmeye adanmış bir çalışma ve meslek alanıdır.</span></div>   
       </div> 

    </asp:Panel>
   
    <asp:Panel ID="panel6" runat="server" Visible="false"> <%--buraya dikkat--%>
          <div class="meslek">
            <div class="mes">
                <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" class="linkbtn"> Turizm Sektörü</asp:LinkButton> </div><br />
            
            <div class="yaz">
                   <span> Turizm işletmeciliği ve Otelcilik, turizm geliştirme, seyahat endüstrisinin yönetimi, turizm pazarlaması ve turizm hizmetleri üzerine yoğunlaşırken, otelcilik yönetimi oteller, restoranlar, yolcu gemileri, eğlence parkları, ülke kulüpleri ve kongre merkezleri dahil olmak üzere konaklama faaliyetlerinin tüm yönlerine odaklanan bir alandır.</span>
            </div>   
       </div> 
        <asp:Label ID="LblMeslek" runat="server"></asp:Label>

        

    </asp:Panel>
      

       
</asp:Content>
