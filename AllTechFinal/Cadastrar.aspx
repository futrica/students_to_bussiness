<%@ Page Title="" Language="C#" MasterPageFile="~/CRM.Master" AutoEventWireup="true" CodeBehind="Cadastrar.aspx.cs" Inherits="AllTechFinal.Cadastrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
     <div class="well">
        <div class="row">
        <div class="span3">
            <h4>Cadastrar nova empresa.</h4>
            <p>
                <asp:Button ID="btnempresa" runat="server" Text="Nova Empresa" OnClick="Button7_Click"  />
            </p>
        </div>
        <div class="span3">
            <h4>Cadastrar novo usuário.</h4>
            <p>
                <asp:Button ID="btnusuario" runat="server" Text="Novo Usuário" OnClick="btnusuario_Click" />
            </p>
        </div>
      
    </div>   
         </div>
</asp:Content>
