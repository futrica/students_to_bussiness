<%@ Page Title="" Language="C#" MasterPageFile="~/CRM.Master" AutoEventWireup="true" CodeBehind="NovaEmpresa.aspx.cs" Inherits="AllTechFinal.NovaEmpresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="modal_body">
    <div class="form-horizontal">
        <h3>Cadastrar nova empresa</h3>

        <asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="CNPJ"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCnpj" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Logradouro"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtRua" runat="server"></asp:TextBox>
&nbsp;&nbsp;<br />
        <asp:Label ID="Label4" runat="server" Text="nº"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtNumero" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="CEP"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="txtCep" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label11" runat="server" Text="Bairro"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtBairro" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Cidade"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCidade" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Estado"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="txtEstado" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label8" runat="server" Text="País"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPais" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label9" runat="server" Text="Telefone"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label10" runat="server" Text="Ramal"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="txtRamal" runat="server"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" OnClick="bntCadastrar_Click" />


        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Voltar" />


    </div>
        </div>
</asp:Content>
