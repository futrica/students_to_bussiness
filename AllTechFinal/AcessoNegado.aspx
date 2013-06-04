<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AcessoNegado.aspx.cs" Inherits="AllTechFinal.AcessoNegado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
  
    <form id="form1" class="well" runat="server">
        <h1>Ops!</h1>
        <h3>Você não tem permissão para acessar esta página.</h3>
        <asp:Button ID="Button1" runat="server" Text="Voltar" OnClick="Button1_Click1" />
    </form>
  
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
