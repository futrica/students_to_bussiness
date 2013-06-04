<%@ Page Title="" Language="C#" MasterPageFile="~/CRM.Master" AutoEventWireup="true" CodeBehind="EmpresaCadastradaComSucesso.aspx.cs" Inherits="AllTechFinal.EmpresaCadastradaComSucesso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Empresa cadastrada com sucesso!</h3>

         <asp:Label ID="Label23" runat="server" Text="Id"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblId" runat="server"></asp:Label>
    <br />

         <asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblNome" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="CNPJ"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblCnpj" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Logradouro"></asp:Label>
        <asp:Label ID="lblLogra" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="nº"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblNum" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label5" runat="server" Text="CEP"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblCep" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label11" runat="server" Text="Bairro"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblBairro" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Cidade"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblCidade" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Estado"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblEstado" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label8" runat="server" Text="País"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblPais" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label9" runat="server" Text="Telefone"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblTel" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label10" runat="server" Text="Ramal"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblRamal" runat="server"></asp:Label>

    <br />
    <asp:Button ID="Button2" runat="server" Text="Cadastrar Nova Empresa" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;

    <asp:Button ID="Button1" runat="server" Text="Voltar" OnClick="Button1_Click" />
</asp:Content>
