<%@ Page Title="" Language="C#" MasterPageFile="~/ClieCRM.Master" AutoEventWireup="true" CodeBehind="AprovarOrcamento.aspx.cs" Inherits="AllTechFinal.AprovarOrcamento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
  
<div class="well">   
    <h3>Consultar Orçamentos Enviados</h3>
          <asp:Button ID="Button1" runat="server" Text="Listar" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp; Código da empresa a listar
        <asp:Label ID="lblInfo" runat="server"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>

    <h3>Consultar Custos</h3>
              <asp:Button ID="Button2" runat="server" Text="Listar" OnClick="Button2_Click" />
        &nbsp;&nbsp;&nbsp; 
    <asp:TextBox ID="txtCod" runat="server" Height="16px" Width="70px"></asp:TextBox>
&nbsp;Insira o código do orçamento para verificar se há lançamento de custos.
    <asp:GridView ID="GridView2" runat="server">
      </asp:GridView>

&nbsp;<br />
    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Aprovar Orçamento" />

</div> 

</asp:Content>
