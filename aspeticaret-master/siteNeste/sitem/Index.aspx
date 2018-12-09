<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="sitem.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="homepage-slider" id="home-slider">
        <div class="flexslider">
            <ul class="slides">
                <li>
                    <img src="themes/images/carousel/banner-1.jpg" alt="" />
                </li>
                <li>
                    <img src="themes/images/carousel/banner-2.jpg" alt="" />
                    <div class="intro">
                        <h1>Mid season sale</h1>
                        <p><span>Up to 50% Off</span></p>
                        <p><span>On selected items online and in stores</span></p>
                    </div>
                </li>
            </ul>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <section class="main-content">
        <div class="row">
            <div class="span12">
                <div class="row">
                    <div class="span12">
                        <h4 class="title">
                            <span class="pull-left"><span class="text"><span class="line">Yeni <strong>Ürünler</strong></span></span></span>
                            <span class="pull-right">
                                <a class="left button" href="#myCarousel" data-slide="prev"></a><a class="right button" href="#myCarousel" data-slide="next"></a>
                            </span>
                        </h4>

                        <div id="myCarousel" class="myCarousel carousel slide">
                            <div class="carousel-inner">
                                <div class="active item">
                                    <ul class="thumbnails">


                                        <asp:Repeater ID="rpProduct" runat="server">
                                            <ItemTemplate>
                                                <li class="span3">
                                                    <span class="sale_tag">daf</span>
                                                    <div class="product-box">
                                                        <p>
                                                            <a href="Details.aspx?ProductId=<%#Eval("ProductId")%>">
                                                                <img src="../themes/images/ladies/<%#Eval("Picture")%>" width="230" height="308" />
                                                            </a>
                                                        </p>

                                                        <a href="#" class="title"><%#Eval("ProductName")%></a><br />
                                                        <p class="price"><%#Eval("ProductPrice")%>  </p>

                                                    </div>
                                                </li>
                                            </ItemTemplate>
                                        </asp:Repeater>


                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
      <div class="row">
        <div class="span12">
            <h4 class="title">
                <span class="pull-left"><span class="text"><span class="line">En Çok Satan <strong>Ürünler</strong></span></span></span>
                <span class="pull-right">
                    <a class="left button" href="#myCarousel-2" data-slide="prev"></a><a class="right button" href="#myCarousel-2" data-slide="next"></a>
                </span>
            </h4>
            <div id="myCarousel-2" class="myCarousel carousel slide">
                <div class="carousel-inner">
                    <div class="active item">
                        <ul class="thumbnails">
                            <asp:Repeater ID="rpProductLast" runat="server">
                                <ItemTemplate>
                                    <li class="span3">
                                        <span class="sale_tag">daf</span>

                                        <p>
                                            <a href="Details.aspx?ProductId=<%#Eval("ProductId")%>">
                                                <img src="../themes/images/ladies/<%#Eval("Picture")%>" width="230" height="308" />
                                            </a>
                                        </p>
                                        <div class="product-box">
                                            <a href="#" class="title"><%#Eval("ProductName")%></a><br />
                                            <p class="price"><%#Eval("ProductPrice")%>  </p>

                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>


                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
