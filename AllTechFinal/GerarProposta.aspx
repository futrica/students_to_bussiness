<%@ Page Title="" Language="C#" MasterPageFile="~/CRM.Master" AutoEventWireup="true" CodeBehind="GerarProposta.aspx.cs" Inherits="AllTechFinal.GerarProposta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
                <br />
                Insira Código Orçamento<asp:TextBox ID="txtIdOr" runat="server" Height="16px" Width="51px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Carregar" />
                <br />
        <asp:Label ID="Label1" runat="server" Text="Código da Empresa"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblEmpresa" runat="server"></asp:Label>
                <br />
                Código Usuário&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblUser_id" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <asp:Label ID="Label3" runat="server" Text="Data de Abertura"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblTimeNow" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lbl1" runat="server" Text="Descrição do serviço"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblDesc" runat="server"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Adicionar Custo" />
                <br />
                <br />
                Descrição&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtDescServ" runat="server"></asp:TextBox>
                <br />
                Valor&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtValor" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
        <br />
    </div>
</asp:Content>
