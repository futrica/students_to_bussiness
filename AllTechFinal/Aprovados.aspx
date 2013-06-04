<%@ Page Title="" Language="C#" MasterPageFile="~/CRM.Master" AutoEventWireup="true" CodeBehind="Aprovados.aspx.cs" Inherits="AllTechFinal.Aprovados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="well">
    <div class="row">
          <div class="span3">
            <h4>Gerar Ordem de serviço.</h4>
            <p>
                <asp:Button ID="btnOS" runat="server" Text="Gerar OS" OnClick="btnOS_Click" />
            </p>
        </div>     
    </div>   
        </div>
</asp:Content>
