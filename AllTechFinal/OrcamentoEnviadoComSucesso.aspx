<%@ Page Title="" Language="C#" MasterPageFile="~/ClieCRM.Master" AutoEventWireup="true" CodeBehind="OrcamentoEnviadoComSucesso.aspx.cs" Inherits="AllTechFinal.OrcamentoEnviadoComSucesso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h3>
            Orçamento enviado com sucesso!
        </h3>
        <p>
            <asp:Button ID="btnNovo" runat="server" OnClick="btnNovo_Click" Text="Adicionar outro orçamento." />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnVoltar" runat="server" OnClick="btnVoltar_Click" Text="Voltar" />
        </p> 
    </div>
</asp:Content>
