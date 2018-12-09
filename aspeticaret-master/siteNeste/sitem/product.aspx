<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="sitem.product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Left" runat="server">

    <div class="span9">
        <div class="row">
            <div class="span12">
                <h4 class="title">
                    <span class="pull-left"><span class="text"><span class="line"><%#Eval("CatName") %> <strong>Ürünler</strong></span></span></span>
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


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Right" runat="server">
    <div class="span3 col">
        <div class="block">
            <ul class="nav nav-list">
                <li class="nav-header">SUB CATEGORIES</li>
                <li><a href="products.html">Nullam semper elementum</a></li>
                <li class="active"><a href="products.html">Phasellus ultricies</a></li>
                <li><a href="products.html">Donec laoreet dui</a></li>
                <li><a href="products.html">Nullam semper elementum</a></li>
                <li><a href="products.html">Phasellus ultricies</a></li>
                <li><a href="products.html">Donec laoreet dui</a></li>
            </ul>
            <br />
            <ul class="nav nav-list below">
                <li class="nav-header">MANUFACTURES</li>
                <li><a href="products.html">Adidas</a></li>
                <li><a href="products.html">Nike</a></li>
                <li><a href="products.html">Dunlop</a></li>
                <li><a href="products.html">Yamaha</a></li>
            </ul>
        </div>
        <div class="block">
            <h4 class="title">
                <span class="pull-left"><span class="text">Randomize</span></span>
                <span class="pull-right">
                    <a class="left button" href="#myCarousel" data-slide="prev"></a><a class="right button" href="#myCarousel" data-slide="next"></a>
                </span>
            </h4>
            <div id="myCarousel" class="carousel slide">
                <div class="carousel-inner">
                    <div class="active item">
                        <ul class="thumbnails listing-products">
                            <li class="span3">
                                <div class="product-box">
                                    <span class="sale_tag"></span>
                                    <a href="product_detail.html">
                                        <img alt="" src="themes/images/ladies/7.jpg"></a><br />
                                    <a href="product_detail.html" class="title">Fusce id molestie massa</a><br />
                                    <a href="#" class="category">Suspendisse aliquet</a>
                                    <p class="price">$261</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="item">
                        <ul class="thumbnails listing-products">
                            <li class="span3">
                                <div class="product-box">
                                    <a href="product_detail.html">
                                        <img alt="" src="themes/images/ladies/8.jpg"></a><br />
                                    <a href="product_detail.html" class="title">Tempor sem sodales</a><br />
                                    <a href="#" class="category">Urna nec lectus mollis</a>
                                    <p class="price">$134</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="block">
            <h4 class="title"><strong>Best</strong> Seller</h4>
            <ul class="small-product">
                <li>
                    <a href="#" title="Praesent tempor sem sodales">
                        <img src="themes/images/ladies/1.jpg" alt="Praesent tempor sem sodales">
                    </a>
                    <a href="#">Praesent tempor sem</a>
                </li>
                <li>
                    <a href="#" title="Luctus quam ultrices rutrum">
                        <img src="themes/images/ladies/2.jpg" alt="Luctus quam ultrices rutrum">
                    </a>
                    <a href="#">Luctus quam ultrices rutrum</a>
                </li>
                <li>
                    <a href="#" title="Fusce id molestie massa">
                        <img src="themes/images/ladies/3.jpg" alt="Fusce id molestie massa">
                    </a>
                    <a href="#">Fusce id molestie massa</a>
                </li>
            </ul>
        </div>
    </div>


</asp:Content>
