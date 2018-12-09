<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="sitem.cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="main-content">
        <div class="row">
            <div class="span9">
                <h4 class="title"><span class="text"><strong>SEPET</strong> İŞLEMLERİ</span></h4>
                <table class="table table-striped">
                    <thead>
                        <asp:Repeater ID="rpcarttitle" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <th><%#Eval("ProductName") %></th>
                                    <th><%#("Picture") %></th>
                                    <th><%#Eval("ProductName") %></th>
                                    <th><%#Eval("Quantity") %></th>
                                    <th><%#Eval("Price") %></th>
                                    <th><%#Eval("TotalPrice")%></th>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rpCartDetails" runat="server">
                            <ItemTemplate>
                        <tr>
                            <td>
                                <input type="checkbox" value="option1"></td>
                            <td><a href="Product.aspx">
                                <img alt="" src="themes/images/ladies/<%#Eval("Picture") %>"></a></td>
                            <td><%#Eval("ProductName") %></td>
                            <td>
                                <input type="text" placeholder="1" class="input-mini"></td>
                            <td><%#Eval("Price")%></td>
                            <td><%#Eval("TotalPrice")%></td>
                        </tr>
                       
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td><strong><%#Eval("TotalPrice")%></strong></td>
                        </tr>
                     
                        
                    </tbody>
                </table>
                <h4>What would you like to do next?</h4>
                <p>Choose if you have a discount code or reward points you want to use or would like to estimate your delivery cost.</p>
                <label class="radio">
                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
                    Use Coupon Code
                </label>
                <label class="radio">
                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                    Estimate Shipping &amp; Taxes
                </label>
                <hr>
                <p class="cart-total right">
                    <strong>TOPLAM TUTAR </strong>:><%#Eval("Price") %><br>
                    <strong>KDV(%18)</strong>:KDV<br>
                    <strong>Total</strong>: <%#Eval("TotalPrice")%>₺<br>
                </p>
                            </ItemTemplate>
                        </asp:Repeater>
                <hr />
                <p class="buttons center">
                    <button class="btn" type="button">Update</button>
                    <button class="btn" type="button">Continue</button>
                    <button class="btn btn-inverse" type="submit" id="checkout">Checkout</button>
                </p>
            </div>
        
        </div>
    </section>
</asp:Content>
