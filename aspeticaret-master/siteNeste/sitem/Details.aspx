﻿<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="sitem.Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Left" runat="server">

    <div class="span9">
        <div class="row">
            <div class="span4">
                <asp:Repeater ID="rpDetails" runat="server">
                    <ItemTemplate>

                        <a href="themes/images/ladies/<%#Eval("Picture")%>" class="thumbnail" data-fancybox-group="group1" title="Description 1">
                            <img alt="Resim Yüklenemedi" src="themes/images/ladies/<%#Eval("Picture")%>"></a>


                        <ul class="thumbnails small">
                            <li class="span1">
                                <a href="themes/images/ladies/<%#Eval("Picture")%>" class="thumbnail" data-fancybox-group="group1" title="Description 2">
                                    <img src="themes/images/ladies/<%#Eval("Picture")%>" alt=""></a>
                            </li>
                            <li class="span1">
                                <a href="themes/images/ladies/<%#Eval("Picture")%>" class="thumbnail" data-fancybox-group="group1" title="Description 3">
                                    <img src="themes/images/ladies/<%#Eval("Picture")%>" alt=""></a>
                            </li>
                            <li class="span1">
                                <a href="themes/images/ladies/<%#Eval("Picture")%>" class="thumbnail" data-fancybox-group="group1" title="Description 4">
                                    <img src="themes/images/ladies/<%#Eval("Picture")%>" alt=""></a>
                            </li>
                            <li class="span1">
                                <a href="themes/images/ladies/<%#Eval("Picture")%>" class="thumbnail" data-fancybox-group="group1" title="Description 5">
                                    <img src="themes/images/ladies/<%#Eval("Picture")%>" alt=""></a>
                            </li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="span5">
                <asp:Repeater ID="rpdata" runat="server">
                    <ItemTemplate>
                        <address>
                            <strong>Ürün Adı:</strong> <span><%#Eval("ProductName") %></span><br>
                            <strong>Ürün Kodu:</strong> <span><%#Eval("ProductCode") %></span><br>
                            <strong>Kumaş:</strong> <span><%#Eval("clouth") %></span><br>
                            <strong>Stok Durumu:</strong> <span><%#Eval("StockFinished")%></span><br>
                        </address>
                        <h4><strong>Fiyat:<%#Eval("ProductPrice")%>₺</strong></h4>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="span5">
                <form class="form-inline">
                    <label class="checkbox">
                        <input type="checkbox" value="">
                        Option one is this and that
                    </label>
                    <br />
                    <label class="checkbox">
                        <input type="checkbox" value="">
                        Be sure to include why it's great
                    </label>
                    <p>&nbsp;</p>
                    <label>Adet:</label>
                  
                    <asp:DropDownList ID="ddlAdet" runat="server">
                        <asp:ListItem>Seçin</asp:ListItem>
                         <asp:ListItem>1</asp:ListItem>
                         <asp:ListItem>2</asp:ListItem>
                          <asp:ListItem>3</asp:ListItem>
                          <asp:ListItem>4</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="btnCardAdd" runat="server" Text="Sepete Ekle" OnClick="btnCardAdd_Click" Visible='<%#Convert.ToInt32(Eval("ProductStock"))!=0?true:false%>' />
                    <asp:Button ID="btnFinish" runat="server" Text="Tükendi" Visible='<%#Convert.ToInt32(Eval("urunstok"))==0?true:false%>' />
                </form>
            </div>
        </div>
        <div class="row">
            <div class="span9">
                <ul class="nav nav-tabs" id="myTab">
                    <li class="active"><a href="#home">Description</a></li>
                    <li class=""><a href="#profile">Additional Information</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="home">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem</div>
                    <div class="tab-pane" id="profile">
                        <table class="table table-striped shop_attributes">
                            <tbody>
                                <tr class="">
                                    <th>Size</th>
                                    <td>Large, Medium, Small, X-Large</td>
                                </tr>
                                <tr class="alt">
                                    <th>Colour</th>
                                    <td>Orange, Yellow</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="span9">
                <br>
                <h4 class="title">
                    <span class="pull-left"><span class="text"><strong>Related</strong> Products</span></span>
                    <span class="pull-right">
                        <a class="left button" href="#myCarousel-1" data-slide="prev"></a><a class="right button" href="#myCarousel-1" data-slide="next"></a>
                    </span>
                </h4>
                <div id="myCarousel-1" class="carousel slide">
                    <div class="carousel-inner">
                        <div class="active item">
                            <ul class="thumbnails listing-products">
                                <asp:Repeater ID="rpProductRelated" runat="server">
                                    <ItemTemplate>
                                        <li class="span3">
                                            <div class="product-box">
                                               
                                                <a href="Details.aspx?ProductId=<%#Eval("ProductId")%>">
                                                    <img alt="" src="themes/images/ladies/<%#Eval("Picture")%>"></a><br />
                                                <span class="sale_tag"></span>
                                                <a href="#" class="title"><%#Eval("ProductName")%></a><br />
                                                <a href="#" class="category"><%#Eval("ProductDetails")%></a>
                                                <p class="price"><%#Eval("ProductPrice")%></p>
                                            </div>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                        <div class="item">
                            <ul class="thumbnails listing-products">
                                <li class="span3">
                                    <div class="product-box">
                                        <span class="sale_tag"></span>

                                        <a href="products.aspx">
                                            <img alt="" src="themes/images/ladies/<%#Eval("Picture")%>"></a><br />
                                        <a href="product_detail.html" class="title"><%#Eval("ProductName") %></a><br />
                                        <a href="#" class="category"><%#Eval("ProductDetails") %></a>
                                        <p class="price"><%#Eval("ProductPrice") %></p>
                                    </div>
                                </li>
                                <li class="span3">
                                    <div class="product-box">
                                        <a href="product_detail.html">
                                            <img alt="" src="themes/images/ladies/2.jpg"></a><br />
                                        <a href="product_detail.html">Praesent tempor sem</a><br />
                                        <a href="#" class="category">Erat gravida</a>
                                        <p class="price">$28</p>
                                    </div> 
                                </li>
                                <li class="span3">
                                    <div class="product-box">
                                        <span class="sale_tag"></span>
                                        <a href="product_detail.html">
                                            <img alt="" src="themes/images/ladies/3.jpg"></a><br />
                                        <a href="product_detail.html" class="title">Wuam ultrices rutrum</a><br />
                                        <a href="#" class="category">Suspendisse aliquet</a>
                                        <p class="price">$341</p>
                                    </div>
                                </li>
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
