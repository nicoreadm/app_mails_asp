<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="test2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <table class="nav-justified">
            <tr>
                <td style="width: 261px">
                    <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Size="Larger" Text="Casilla de Mails"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 20px; width: 261px">
                    <asp:Label ID="Label2" runat="server" Text="De:"></asp:Label>
                </td>
                <td style="height: 20px">
                    <asp:TextBox ID="txb_remitente" runat="server" Width="165px"></asp:TextBox>
                </td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="width: 261px">
                    <asp:Label ID="Label3" runat="server" Text="Para:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txb_destinatario" runat="server" Width="165px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 261px; height: 20px">
                    <asp:Label ID="Label4" runat="server" Text="Asunto:"></asp:Label>
                </td>
                <td style="height: 20px">
                    <asp:TextBox ID="txb_asunto" runat="server" Width="165px"></asp:TextBox>
                </td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="width: 261px; height: 20px">
                    <asp:Label ID="Label5" runat="server" Text="Mensaje:"></asp:Label>
                </td>
                <td style="height: 20px"></td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="txb_mensaje" runat="server" Height="121px" TextMode="MultiLine" Width="422px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 261px">
                    <asp:Button ID="btn_enviar" runat="server" OnClick="btn_enviar_Click" Text="Enviar" Width="102px" />
                </td>
                <td>
                    <asp:Label ID="LblConfirmacion" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>

</asp:Content>
