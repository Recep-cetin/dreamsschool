<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kisilik.aspx.cs" Inherits="hayalerim.kisilik" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>xeyal kur ,hevi durın ..</title>
    <style type="text/css">
        .auto-style1 {
            height: 610px;
        }
        .PNL {
            margin-bottom:auto;
        }
        .auto-style2 {
            height: 90px;
        }
        .auto-style3 {
            width: 100%;
        }
    </style>
</head>
<body style="height: 640px">
    <form id="form1" runat="server" class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
       
        <asp:Panel ID="Panel2" runat="server" Visible="False">
               <asp:Label ID="Label1" runat="server" Text="BU SAYFADA KENDİNİZİ KEŞFEDECEKSİNİZ ..."></asp:Label>
            <br /><br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Button ID="Button1" runat="server" Height="37px" Text="HADİ SENİ TANIYALIM" Width="245px" OnClick="Button1_Click" />
            <ajaxToolkit:ConfirmButtonExtender ID="Button1_ConfirmButtonExtender" runat="server" BehaviorID="Button1_ConfirmButtonExtender" ConfirmText="kucuk bir test cozeceksın sınav başaldıgı andan ıtıbaren sınavdan cıkamazsın" TargetControlID="Button1">
            </ajaxToolkit:ConfirmButtonExtender>
        </asp:Panel>
       
         <asp:Label ID="Lblklncadi" runat="server" Visible="False"></asp:Label> <br />
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblkarakteragrvrs" runat="server" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblMesaj" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>
        &nbsp;
        <asp:Label ID="lblkulanıcıadı" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#009933"></asp:Label>
        <br />
        <asp:Panel ID="Panel1" runat="server" Visible="False" Font-Size="X-Large">
        
        <br />
&nbsp;<table class="auto-style3">
            <tr>
                <td>Yürüyüş yapmayı severmesin</td>
                <td>
            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="1" Text="HER ZAMAN" />
                </td>
                <td>
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="1" Text="ARA SIRA" />
                </td>
                <td>
            <asp:RadioButton ID="RadioButton3" runat="server" GroupName="1" Text="ASLA" />
                </td>
            </tr>
            <tr>
                <td>Dders çalışmayı severmisin&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>
            <asp:RadioButton ID="RadioButton4" runat="server" GroupName="2" Text="HER ZAMAN" />
                </td>
                <td>
            <asp:RadioButton ID="RadioButton5" runat="server" GroupName="2" Text="ARA SIRA" />
                </td>
                <td>
            <asp:RadioButton ID="RadioButton6" runat="server" GroupName="2" Text="ASLA" />
                </td>
            </tr>
            <tr>
                <td>Bilgisayarla uğraşmayı severmisin&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>
            <asp:RadioButton ID="RadioButton7" runat="server" GroupName="3" Text="HER ZAMAN" OnCheckedChanged="RadioButton7_CheckedChanged" />
                </td>
                <td>
            <asp:RadioButton ID="RadioButton8" runat="server" GroupName="3" Text="ARA SIRA" OnCheckedChanged="RadioButton8_CheckedChanged" />
                </td>
                <td>
            <asp:RadioButton ID="RadioButton9" runat="server" GroupName="3" Text="ASLA" OnCheckedChanged="RadioButton9_CheckedChanged" />
                </td>
            </tr>
            <tr>
                <td>Hobilerin varmıdır </td>
                <td>
            <asp:RadioButton ID="RadioButton10" runat="server" GroupName="4" Text="HER ZAMAN" />
                </td>
                <td>
            <asp:RadioButton ID="RadioButton11" runat="server" GroupName="4" Text="ARA SIRA" />
                </td>
                <td>
            <asp:RadioButton ID="RadioButton12" runat="server" GroupName="4" Text="ASLA" />
                </td>
            </tr>
            <tr>
                <td>Kitap okumayı severmisin&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>
            <asp:RadioButton ID="RadioButton13" runat="server" GroupName="5" Text="HER ZAMAN" />
                </td>
                <td>
            <asp:RadioButton ID="RadioButton14" runat="server" GroupName="5" Text="ARA SIRA" OnCheckedChanged="RadioButton14_CheckedChanged" />
                </td>
                <td>
            <asp:RadioButton ID="RadioButton15" runat="server" GroupName="5" Text="ASLA" />
                </td>
            </tr>
            <tr>
                <td>Arkadaşlarınla anlaşırmısın&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>
            <asp:RadioButton ID="RadioButton16" runat="server" GroupName="6" Text="HER ZAMAN" />
                </td>
                <td>
            <asp:RadioButton ID="RadioButton17" runat="server" GroupName="6" Text="ARA SIRA" />
                </td>
                <td>
            <asp:RadioButton ID="RadioButton18" runat="server" GroupName="6" Text="ASLA" OnCheckedChanged="RadioButton18_CheckedChanged" />
                </td>
            </tr>
            <tr>
                <td>Gülmeyi severmisin&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>
            <asp:RadioButton ID="RadioButton19" runat="server" GroupName="7" Text="HER ZAMAN" />
                </td>
                <td>
            <asp:RadioButton ID="RadioButton20" runat="server" GroupName="7" Text="ARA SIRA" OnCheckedChanged="RadioButton20_CheckedChanged" />
                </td>
                <td>
            <asp:RadioButton ID="RadioButton21" runat="server" GroupName="7" Text="ASLA" OnCheckedChanged="RadioButton21_CheckedChanged" />
                </td>
            </tr>
            <tr>
                <td>Gelecek kaygısı yaşarmısın&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>
            <asp:RadioButton ID="RadioButton22" runat="server" GroupName="8" Text="HER ZAMAN" />
                </td>
                <td>
            <asp:RadioButton ID="RadioButton23" runat="server" GroupName="8" Text="ARA SIRA" />
                </td>
                <td>
            <asp:RadioButton ID="RadioButton24" runat="server" GroupName="8" Text="ASLA" />
                </td>
            </tr>
            <tr>
                <td>Sayısalla aran iyimidir&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>
            <asp:RadioButton ID="RadioButton25" runat="server" GroupName="9" Text="HER ZAMAN" />
                </td>
                <td>
            <asp:RadioButton ID="RadioButton26" runat="server" GroupName="9" Text="ARA SIRA" />
                </td>
                <td>
            <asp:RadioButton ID="RadioButton27" runat="server" GroupName="9" Text="ASLA" />
                </td>
            </tr>
            <tr>
                  
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
   
        </table>
        
            <p>
                <asp:CheckBox ID="CheckBox1" runat="server" Text="soruları okudum , işaretledim ve onaylıyorum" />
        </p>
        <p>
                <asp:Label ID="hatamesaj" runat="server" Font-Size="X-Large"></asp:Label>
        </p>
            <p>
                <asp:Label ID="lblkarakter" runat="server" Visible="False"></asp:Label>
            </p>
        <p>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="TESTİ BİTİR" Width="185px" />
            </p>
        </asp:Panel>
        <div class="auto-style2">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" InsertCommand="INSERT INTO karakter(karakter,uye_id) VALUES (@karakter,@uye_id)" ConnectionString="<%$ ConnectionStrings:hayalerimConnectionString3 %>" SelectCommand="SELECT uyeler.uye_adi, uyeler.uye_soyadi, karakter.karakter, karakter.uye_id, uyeler.uye_id AS Expr1 FROM uyeler FULL OUTER JOIN karakter ON uyeler.uye_id = karakter.uye_id WHERE (uyeler.uye_id = @uye_id)">
                <InsertParameters>
                    <asp:ControlParameter ControlID="lblkarakter" Name="karakter" PropertyName="Text" />
                    <asp:ControlParameter ControlID="Lblklncadi" Name="uye_id" PropertyName="Text" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="Lblklncadi" Name="uye_id" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
           
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
&nbsp;<br />
       
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
    </form>
</body>
</html>
