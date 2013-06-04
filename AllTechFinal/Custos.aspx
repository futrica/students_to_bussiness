<%@ Page Title="" Language="C#" MasterPageFile="~/CRM.Master" AutoEventWireup="true" CodeBehind="Custos.aspx.cs" Inherits="AllTechFinal.Custos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <br />
     <div class="well">
    <div class="row">
                <div>

                </div>
        <div class="span3">
            <h4>Buscar novas solitações de orçamento.</h4>
        <asp:HyperLink ID="HyperLink1" runat="server" Target="_blank" NavigateUrl="PesquisaOrcamento.aspx">Listar Orçamentos Abertos</asp:HyperLink>

        </div>
        <div class="span3">
            <h4>Gerar proposta.</h4>
            <p>
                <asp:Button ID="btnProposta" runat="server" Text="Novo Usuário" OnClick="btnProposta_Click" />
            </p>
        </div>
        
    </div> 
        </div>  
</asp:Content>
