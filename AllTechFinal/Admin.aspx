<%@ Page Title="" Language="C#" MasterPageFile="~/CRM.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="AllTechFinal.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<div class="well">
    Olá <asp:Label ID="lblNome" runat="server" Text=""></asp:Label>!
    <br />
    Data e Hora atual <asp:Label ID="lblData" runat="server" Text=""></asp:Label>.&nbsp;
</div>  
</asp:Content>
