<%@ Page Title="" Language="C#" MasterPageFile="~/CRM.Master" AutoEventWireup="true" CodeBehind="GerarOs.aspx.cs" Inherits="AllTechFinal.GerarOs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="well">
        <h3>Orçamentos Aprovados</h3>
            <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </div>    
    <div>
        <asp:TextBox ID="txtValor" runat="server" Height="16px" Width="99px"></asp:TextBox>
    &nbsp;Coloque o número da Orçamento que deseja gerar OS.<br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Gerar OS" />
    </div>
</asp:Content>
