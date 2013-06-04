<%@ Page Title="" Language="C#" MasterPageFile="~/ClieCRM.Master" AutoEventWireup="true" CodeBehind="ConsultarOrcamento.aspx.cs" Inherits="AllTechFinal.ConsultarOrcamento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="well">
        <h3>Consultar Orçamentos.</h3>
        <asp:Button ID="Button1" runat="server" Text="Listar" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp; Código da empresa a listar
        <asp:Label ID="lblInfo" runat="server"></asp:Label>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>

    </div>
</asp:Content>
