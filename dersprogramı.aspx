<%@ Page Title="" Language="C#" MasterPageFile="~/Anasablon.Master" AutoEventWireup="true" CodeBehind="dersprogramı.aspx.cs" Inherits="hayalerim.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 16px;
        }
        .auto-style2 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;&nbsp;
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hayalerimConnectionString3 %>" SelectCommand="SELECT uyeler.uye_adi, uyeler.uye_soyadi, uye_sınav.toplam, uye_sınav.uye_id, uyeler.uye_id AS Expr1 FROM uyeler FULL OUTER JOIN uye_sınav ON uyeler.uye_id = uye_sınav.uye_id WHERE (uyeler.uye_id = @uye_id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Lblid" Name="uye_id" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Lbltop" runat="server" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Label ID="Lblid" runat="server" Visible="False"></asp:Label>
    </p>
    <p>
        &nbsp;&nbsp;</p>
    <asp:Panel ID="Panel4" runat="server" CssClass="mt-0">
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="LblAdi" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Berlin Sans FB Demi" Font-Size="XX-Large"></asp:Label>
        <asp:Label ID="LblSoayadi" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Berlin Sans FB Demi" Font-Size="XX-Large"></asp:Label>
        <br />
        &nbsp;<table class="w-100">
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>SAATLEER&nbsp;&nbsp;</td>
                <td>PAZARTESİ&nbsp;</td>
                <td>SALI&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>ÇARŞAMBA&nbsp;</td>
                <td>PERŞEME&nbsp;&nbsp;&nbsp;</td>
                <td>CUMA&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>CUMARTESİ</td>
                <td>PAZAR&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>&nbsp;&nbsp; 8:00 - 8:45&nbsp;</td>
                <td>okul dersi&nbsp;</td>
                <td>okul dersi&nbsp;&nbsp;</td>
                <td>okul dersi&nbsp;&nbsp;</td>
                <td>okul dersi&nbsp;&nbsp;</td>
                <td>okul dersi&nbsp;&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>&nbsp;&nbsp; 9:00 - 9:45&nbsp;</td>
                <td>okul dersi&nbsp;&nbsp;</td>
                <td>okul dersi&nbsp;&nbsp;</td>
                <td>okul dersi&nbsp;&nbsp;</td>
                <td>okul dersi&nbsp;&nbsp;</td>
                <td>okul dersi&nbsp;&nbsp;</td>
                <td>
                    <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>&nbsp;10:00 -10:45&nbsp;</td>
                <td>okul dersi&nbsp;&nbsp;</td>
                <td>okul dersi&nbsp;&nbsp;</td>
                <td>okul dersi&nbsp;&nbsp;</td>
                <td>okul dersi&nbsp;&nbsp;</td>
                <td>okul dersi&nbsp;&nbsp;</td>
                <td>
                    <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td class="auto-style1">&nbsp;11:00&nbsp;-11:45</td>
                <td class="auto-style1">okul dersi&nbsp;&nbsp;</td>
                <td class="auto-style1">okul dersi&nbsp;</td>
                <td class="auto-style1">okul dersi&nbsp;</td>
                <td class="auto-style1">okul dersi&nbsp;</td>
                <td class="auto-style1">okul dersi&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>öğle molası</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>&nbsp;13:00 -13:45&nbsp;</td>
                <td>okul dersi&nbsp;&nbsp;</td>
                <td>okul dersi&nbsp;&nbsp;</td>
                <td>okul dersi&nbsp;&nbsp;</td>
                <td>okul dersi&nbsp;&nbsp;</td>
                <td>okul dersi&nbsp;&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td class="auto-style1">&nbsp;14:00 -14:45&nbsp;</td>
                <td class="auto-style1">okul dersi&nbsp;</td>
                <td class="auto-style1">okul dersi&nbsp;</td>
                <td class="auto-style1">okul dersi&nbsp;</td>
                <td class="auto-style1">okul dersi&nbsp;</td>
                <td class="auto-style1">okul dersi&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label27" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>&nbsp;15:00 -15:45&nbsp;</td>
                <td>okul dersi&nbsp;&nbsp;</td>
                <td>okul dersi&nbsp;&nbsp;</td>
                <td>okul dersi&nbsp;&nbsp;</td>
                <td>okul dersi&nbsp;&nbsp;</td>
                <td>okul dersi&nbsp;&nbsp;</td>
                <td>
                    <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label28" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td class="auto-style1">&nbsp;16:00 -16:45&nbsp;</td>
                <td class="auto-style1">okul dersi&nbsp;&nbsp;</td>
                <td class="auto-style1">okul dersi&nbsp;</td>
                <td class="auto-style1">okul dersi&nbsp;</td>
                <td class="auto-style1">okul dersi&nbsp;</td>
                <td class="auto-style1">okul dersi&nbsp;</td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>akşam molası</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>&nbsp;19:00 -19:45&nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label29" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>&nbsp;20:00 -20:45&nbsp;</td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label30" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>&nbsp;21:00 -21:45&nbsp;</td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label31" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
</asp:Panel>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Lblhata" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bell MT" Font-Size="18pt" ForeColor="Red"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
