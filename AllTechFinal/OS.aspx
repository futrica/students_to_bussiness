<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OS.aspx.cs" Inherits="AllTechFinal.OS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 81px;
        }
        .auto-style2
        {
            width: 332px;
        }
        .auto-style3
        {
            width: 63px;
        }
        .auto-style4
        {
            width: 278px;
        }
        .auto-style5
        {
            width: 136px;
        }
        .auto-style6
        {
            width: 400px;
            height: 123px;
        }
        .auto-style7
        {
            width: 365px;
            height: 123px;
        }
        .auto-style8
        {
            width: 258px;
        }
        .auto-style9
        {
            width: 365px;
            height: 20px;
        }
        .auto-style10
        {
            width: 403px;
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="1px">
            <tr>
                <td class="auto-style1">        <img src="/Images/Ati_logo4.png" alt="" /></td>
                <td class="auto-style4"><h2>Ordem de serviço</h2> </td>
                <td class="auto-style2"><h3>Número da Solicitação:</h3> </td>
                <td class="auto-style3">  <asp:Label ID="lblNumOs" runat="server" Text=""></asp:Label>  </td>
            </tr>
        </table>
        <p>
            
        </p>
        <table border="1px">
            <tr>
                <td class="auto-style1">  <strong>  Empresa: </strong>  </td>
                <td class="auto-style4">     <asp:Label ID="lblEmpresa" runat="server" Text=""></asp:Label>        </td>
                <td class="auto-style8"><strong>Usuário:</strong>  </td>
                <td class="auto-style5"> <asp:Label ID="lblUser" runat="server" Text=""></asp:Label>  </td>
            </tr>
                        <tr>
                <td class="auto-style1"> <strong>   Telefone:</strong>   </td>
                <td class="auto-style4">     <asp:Label ID="lblTel" runat="server"></asp:Label>        </td>
                <td class="auto-style8"> <strong>Ramal:</strong>  </td>
                <td class="auto-style5"> <asp:Label ID="lblRamal" runat="server"></asp:Label>  </td>
            </tr>
            <tr>
                <td class="auto-style1"> <strong>   Rua:</strong>   </td>
                <td class="auto-style4">     <asp:Label ID="lblRua" runat="server" Text=""></asp:Label>        </td>
                <td class="auto-style8"><strong> Número:</strong>  </td>
                <td class="auto-style5"> <asp:Label ID="lblNum" runat="server" Text=""></asp:Label>  </td>
            </tr>

                        <tr>
                <td class="auto-style1"> <strong>   Bairro: </strong>  </td>
                <td class="auto-style4">     <asp:Label ID="lblBairro" runat="server" Text=""></asp:Label>        </td>
                <td class="auto-style8"> <strong> Cidade: </strong> </td>
                <td class="auto-style5"> <asp:Label ID="lblCidade" runat="server" Text=""></asp:Label>  </td>
            </tr>
                        <tr>
                <td class="auto-style1">  <strong> Estado:</strong>   </td>
                <td class="auto-style4">     <asp:Label ID="lblEstado" runat="server" Text=""></asp:Label>        </td>
                <td class="auto-style8"><strong> País: </strong> </td>
                <td class="auto-style5"> <asp:Label ID="lblPais" runat="server" Text=""></asp:Label>  </td>
            </tr>
        </table>
                <table border="1px">
            <tr>
  
                <td class="auto-style7"><h3><strong>Descrição do Serviço:</strong></h3> </td>
                <td class="auto-style6">  <asp:Label ID="lblDescri" runat="server" Text=""></asp:Label>  </td>
            </tr>
        </table>
       
    </div>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <div>
                        <table border="1px">
            <tr>  
                <td class="auto-style9"><strong>Data de Abertura:</strong> </td>
                <td class="auto-style10">  <asp:Label ID="lblData" runat="server"></asp:Label>  </td>
            </tr>
                                        <tr>
  
                <td class="auto-style9"><strong>Data Finalização:</strong> </td>
                <td class="auto-style10">  &nbsp;</td>
            </tr>
             <tr>
  
                <td class="auto-style9"><strong>Assinatura Cliente:</strong> </td>
                <td class="auto-style10">  &nbsp;</td>
            </tr>
        </table>
    </div>
</body>
</html>
