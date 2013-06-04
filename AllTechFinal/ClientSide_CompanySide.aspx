<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientSide_CompanySide.aspx.cs" Inherits="AllTechFinal.ClientSide_CompanySide" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" class="well" runat="server">
        <h3> Por favor 
            <asp:Label ID="lblNome" runat="server"></asp:Label>
            &nbsp;escolha:</h3>
            <asp:Button ID="Button1" runat="server" Text="Cliente" OnClick="Button1_Click" />


        <br />
        <br />


        <br />
        <asp:Button ID="Button2" runat="server" Text="Admin " OnClick="Button2_Click" />
        
        <div style="margin-left: 360px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>


</form>  
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
