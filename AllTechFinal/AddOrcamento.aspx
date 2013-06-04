<%@ Page Title="" Language="C#" MasterPageFile="~/ClieCRM.Master" AutoEventWireup="true" CodeBehind="AddOrcamento.aspx.cs" Inherits="AllTechFinal.AddOrcamento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="well">
    <h3>Adicionar novo orçamento.</h3>
    


        Cógido Usuário&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblUser_id" runat="server"></asp:Label>
        <br />


        <asp:Label ID="Label2" runat="server" Text="Usuário"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblNome" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Código da Empresa"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblEmpresa" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Data de Abertura"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblTimeNow" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lbl1" runat="server" Text="Descrição do serviço"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtDescricao" runat="server" Height="137px" TextMode="MultiLine" Width="219px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click" />


    </div>
 
</asp:Content>
