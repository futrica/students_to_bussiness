<%@ Page Title="" Language="C#" MasterPageFile="~/ClieCRM.Master" AutoEventWireup="true" CodeBehind="Cliente.aspx.cs" Inherits="AllTechFinal.Cliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
        <br />         
  
        <div class="span5">
         <div id="myCarousel" class="carousel slide">
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-interval="3000 data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-interval="3000 data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-interval="3000 data-slide-to="2"></li>
                </ol>
                <!-- Carousel items -->
                <div class="carousel-inner">
                    <div class="active item">
                        <img src="/Images/tec4.jpg" />
                        <div class="carousel-caption">
                            <h4>AllTech Atualizada!</h4>
                            <p>Os últimos lancamentos em software.</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="/Images/tec5.jpg" />
                        <div class="carousel-caption">
                            <h4>AllTech Confiavel! </h4>
                            <p>As melhores marcas estão aqui.</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="/Images/tec6.jpg" />
                        <div class="carousel-caption">
                            <h4>AllTech Exclusiva!</h4>
                            <p>Atendimento personalizado.</p>
                        </div>
                    </div>
                </div>
                <!-- Carousel nav -->
                <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                <a class="carousel-control right"  href="#myCarousel" data-slide="next">&rsaquo;</a>
            </div>
        </div>

    <div class="span4">
        <h4> AllTech + perto de você
        </h4>
        <p>O CRM AllTech v1.0, é uma nova facilidade para sua vida,</p>
        <h4>Fique por dentro das novidades da empresa!</h4>
        <p>Acesso nosso site: <a href="#">www.alltech.xxx.br</a>

        </p>
    </div>
         

                              <%: Scripts.Render("~/bundles/jquery") %>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
            <script src="http://code.jquery.com/jquery.js"></script>
        <script src="/Scripts/bootstrap.min.js"></script>                   
         <%: Scripts.Render("/Scripts/bootstrap.min.js") %>
        </asp:Content>
