<%@ Page Title="" Language="C#" MasterPageFile="~/CRM.Master" AutoEventWireup="true" CodeBehind="NovoUsuario.aspx.cs" Inherits="AllTechFinal.NovoUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Cadastrar novo usuário.</h3>
        <asp:Label ID="Label111" runat="server" Text="Nome"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label332" runat="server" Text="Email"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label443" runat="server" Text="Empresa"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtEmpresa" runat="server"></asp:TextBox> &nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Target="_blank" NavigateUrl="PesquisarEmpresas.aspx">Pesquisar</asp:HyperLink>
&nbsp;&nbsp;<br />
        <asp:Label ID="Label244" runat="server" Text="Senha"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtSenha" runat="server" TextMode="Password"></asp:TextBox>
        <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cadastrar" />
        <br />

</asp:Content>
