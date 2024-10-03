<%@ Page Title="" Language="C#" MasterPageFile="~/Users/Index_Users.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Bluesky_Shopping.User2.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Modal ( popup window)-->
    <asp:Panel ID="Panel1" runat="server" Visible="false">
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">

                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body text-center p-5 mx-auto mw-100">
                        <h5 style="color: #05c7f1; font-size: 1.1em; letter-spacing: 1px;">BlueSKy Shopping</h5>
                        <h3>Flash Sale Is about To Begin
                        in  <span style="color: red">5_days</span>
                        </h3>
                        <div class="login newsletter">

                            <div class="form-group">
                                <label class="mb-2">Use Coupon</label>
                                <asp:TextBox ID="TextBox2" runat="server" Text=" Flashsale2024" ForeColor="Orange" ReadOnly="true"> </asp:TextBox>
                                <%--<input type="email" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp" placeholder="" required="">--%>
                            </div>
                            <button type="submit" class="btn btn-primary submit mb-4" data-dismiss="modal">Start Shopping</button>


                        </div>
                    </div>

                </div>
            </div>
        </div>
    </asp:Panel>
    <!-- Modal end -->
   

    <!-- banner -->
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
        <div class="banner">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">
                        <div class="carousel-caption text-center">
                            <h3>Men’s eyewear
								<span>Cool summer sale 50% off</span>
                            </h3>
                            <a href="shop.html" class="btn btn-sm animated-button gibson-three mt-4">Shop Now</a>
                        </div>
                    </div>
                    <div class="carousel-item item2">
                        <div class="carousel-caption text-center">
                            <h3>Women’s eyewear
								<span>Want to Look Your Best?</span>
                            </h3>
                            <a href="shop.html" class="btn btn-sm animated-button gibson-three mt-4">Shop Now</a>

                        </div>
                    </div>
                    <div class="carousel-item item3">
                        <div class="carousel-caption text-center">
                            <h3>Men’s eyewear
								<span>Cool summer sale 50% off</span>
                            </h3>
                            <a href="shop.html" class="btn btn-sm animated-button gibson-three mt-4">Shop Now</a>

                        </div>
                    </div>
                    <div class="carousel-item item4">
                        <div class="carousel-caption text-center">
                            <h3>Women’s eyewear
								<span>Want to Look Your Best?</span>
                            </h3>
                            <a href="shop.html" class="btn btn-sm animated-button gibson-three mt-4">Shop Now</a>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
            </ItemTemplate>
    </asp:DataList>
    <!--//banner -->

    <!--//banner-sec-->
    <section class="banner-bottom-wthreelayouts py-lg-5 py-3">
        <div class="container-fluid">
            <div class="inner-sec-shop px-lg-4 px-3">
                <h3 class="tittle-w3layouts my-lg-4 my-4">New Arrivals for you </h3>

                <div class="row">
                    <!-- /womens -->
                    <asp:DataList ID="DataList3" runat="server">
                        <ItemTemplate>
                            <div class="col-md-3 product-men women_two">
                                <div class="product-googles-info googles">
                                    <div class="men-pro-item">
                                        <div class="men-thumb-item">
                                            <img src="images/s1.jpg" class="img-fluid" alt="">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">New</span>
                                        </div>
                                        <div class="item-info-product">
                                            <div class="info-product-price">
                                                <div class="grid_meta">
                                                    <div class="product_price">
                                                        <h4>
                                                            <a href="single.html">Farenheit (Grey)</a>
                                                        </h4>
                                                        <div class="grid-price mt-2">
                                                            <span class="money ">$575.00</span>
                                                        </div>
                                                    </div>
                                                    <ul class="stars">
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="googles single-item hvr-outline-out">
                                                    <form action="#" method="post">
                                                        <input type="hidden" name="cmd" value="_cart">
                                                        <input type="hidden" name="add" value="1">
                                                        <input type="hidden" name="googles_item" value="Farenheit">
                                                        <input type="hidden" name="amount" value="575.00">
                                                        <button type="submit" class="googles-cart pgoogles-cart">
                                                            <i class="fas fa-cart-plus"></i>
                                                        </button>
                                                    </form>

                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>


                    <div class="col-md-3 product-men women_two">
                        <div class="product-googles-info googles">
                            <div class="men-pro-item">
                                <div class="men-thumb-item">
                                    <img src="images/s2.jpg" class="img-fluid" alt="">
                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="single.html" class="link-product-add-cart">Quick View</a>
                                        </div>
                                    </div>
                                    <span class="product-new-top">New</span>
                                </div>
                                <div class="item-info-product">

                                    <div class="info-product-price">
                                        <div class="grid_meta">
                                            <div class="product_price">
                                                <h4>
                                                    <a href="single.html">Opium (Grey)</a>
                                                </h4>
                                                <div class="grid-price mt-2">
                                                    <span class="money ">$325.00</span>
                                                </div>
                                            </div>
                                            <ul class="stars">
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="googles single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart">
                                                <input type="hidden" name="add" value="1">
                                                <input type="hidden" name="googles_item" value="Opium (Grey)">
                                                <input type="hidden" name="amount" value="325.00">
                                                <button type="submit" class="googles-cart pgoogles-cart">
                                                    <i class="fas fa-cart-plus"></i>
                                                </button>


                                            </form>

                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 product-men women_two">
                        <div class="product-googles-info googles">
                            <div class="men-pro-item">
                                <div class="men-thumb-item">
                                    <img src="images/s3.jpg" class="img-fluid" alt="">
                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="single.html" class="link-product-add-cart">Quick View</a>
                                        </div>
                                    </div>
                                    <span class="product-new-top">New</span>
                                </div>
                                <div class="item-info-product">

                                    <div class="info-product-price">
                                        <div class="grid_meta">
                                            <div class="product_price">
                                                <h4>
                                                    <a href="single.html">Kenneth Cole</a>
                                                </h4>
                                                <div class="grid-price mt-2">
                                                    <span class="money ">$575.00</span>
                                                </div>
                                            </div>
                                            <ul class="stars">
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="googles single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart">
                                                <input type="hidden" name="add" value="1">
                                                <input type="hidden" name="googles_item" value="Kenneth Cole">
                                                <input type="hidden" name="amount" value="575.00">
                                                <button type="submit" class="googles-cart pgoogles-cart">
                                                    <i class="fas fa-cart-plus"></i>
                                                </button>

                                            </form>

                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 product-men women_two">
                        <div class="product-googles-info googles">
                            <div class="men-pro-item">
                                <div class="men-thumb-item">
                                    <img src="images/s4.jpg" class="img-fluid" alt="">
                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="single.html" class="link-product-add-cart">Quick View</a>
                                        </div>
                                    </div>
                                    <span class="product-new-top">New</span>
                                </div>
                                <div class="item-info-product">

                                    <div class="info-product-price">
                                        <div class="grid_meta">
                                            <div class="product_price">
                                                <h4>
                                                    <a href="single.html">Farenheit Oval </a>
                                                </h4>
                                                <div class="grid-price mt-2">
                                                    <span class="money ">$325.00</span>
                                                </div>
                                            </div>
                                            <ul class="stars">
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="googles single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart">
                                                <input type="hidden" name="add" value="1">
                                                <input type="hidden" name="googles_item" value="Farenheit Oval">
                                                <input type="hidden" name="amount" value="325.00">
                                                <button type="submit" class="googles-cart pgoogles-cart">
                                                    <i class="fas fa-cart-plus"></i>
                                                </button>


                                            </form>

                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- //womens -->



                <!-- /mens -->
                <div class="row mt-lg-3 mt-0">
                    <!-- /womens -->
                    <div class="col-md-3 product-men women_two">
                        <div class="product-googles-info googles">
                            <div class="men-pro-item">
                                <div class="men-thumb-item">
                                    <img src="images/m1.jpg" class="img-fluid" alt="">
                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="single.html" class="link-product-add-cart">Quick View</a>
                                        </div>
                                    </div>
                                    <span class="product-new-top">New</span>
                                </div>
                                <div class="item-info-product">

                                    <div class="info-product-price">
                                        <div class="grid_meta">
                                            <div class="product_price">
                                                <h4>
                                                    <a href="single.html">Aislin Wayfarer </a>
                                                </h4>
                                                <div class="grid-price mt-2">
                                                    <span class="money ">$775.00</span>
                                                </div>
                                            </div>
                                            <ul class="stars">
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="googles single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart">
                                                <input type="hidden" name="add" value="1">
                                                <input type="hidden" name="googles_item" value="Aislin Wayfarer">
                                                <input type="hidden" name="amount" value="775.00">
                                                <button type="submit" class="googles-cart pgoogles-cart">
                                                    <i class="fas fa-cart-plus"></i>
                                                </button>

                                            </form>

                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 product-men women_two">
                        <div class="product-googles-info googles">
                            <div class="men-pro-item">
                                <div class="men-thumb-item">
                                    <img src="images/m2.jpg" class="img-fluid" alt="">
                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="single.html" class="link-product-add-cart">Quick View</a>
                                        </div>
                                    </div>
                                    <span class="product-new-top">New</span>
                                </div>
                                <div class="item-info-product">

                                    <div class="info-product-price">
                                        <div class="grid_meta">
                                            <div class="product_price">
                                                <h4>
                                                    <a href="single.html">Azmani Round </a>
                                                </h4>
                                                <div class="grid-price mt-2">
                                                    <span class="money ">$725.00</span>
                                                </div>
                                            </div>
                                            <ul class="stars">
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="googles single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart">
                                                <input type="hidden" name="add" value="1">
                                                <input type="hidden" name="googles_item" value="Azmani Round">
                                                <input type="hidden" name="amount" value="725.00">
                                                <button type="submit" class="googles-cart pgoogles-cart">
                                                    <i class="fas fa-cart-plus"></i>
                                                </button>


                                            </form>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 product-men women_two">
                        <div class="product-googles-info googles">
                            <div class="men-pro-item">
                                <div class="men-thumb-item">
                                    <img src="images/m3.jpg" class="img-fluid" alt="">
                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="single.html" class="link-product-add-cart">Quick View</a>
                                        </div>
                                    </div>
                                    <span class="product-new-top">New</span>
                                </div>
                                <div class="item-info-product">

                                    <div class="info-product-price">
                                        <div class="grid_meta">
                                            <div class="product_price">
                                                <h4>
                                                    <a href="single.html">Farenheit Wayfarer</a>
                                                </h4>
                                                <div class="grid-price mt-2">
                                                    <span class="money ">$475.00</span>
                                                </div>
                                            </div>
                                            <ul class="stars">
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="googles single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart">
                                                <input type="hidden" name="add" value="1">
                                                <input type="hidden" name="googles_item" value="Farenheit Wayfarer">
                                                <input type="hidden" name="amount" value="475.00">
                                                <button type="submit" class="googles-cart pgoogles-cart">
                                                    <i class="fas fa-cart-plus"></i>
                                                </button>

                                            </form>

                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 product-men women_two">
                        <div class="product-googles-info googles">
                            <div class="men-pro-item">
                                <div class="men-thumb-item">
                                    <img src="images/m4.jpg" class="img-fluid" alt="">
                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="single.html" class="link-product-add-cart">Quick View</a>
                                        </div>
                                    </div>
                                    <span class="product-new-top">New</span>
                                </div>
                                <div class="item-info-product">

                                    <div class="info-product-price">
                                        <div class="grid_meta">
                                            <div class="product_price">
                                                <h4>
                                                    <a href="single.html">Fossil Wayfarer </a>
                                                </h4>
                                                <div class="grid-price mt-2">
                                                    <span class="money ">$825.00</span>
                                                </div>
                                            </div>
                                            <ul class="stars">
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="googles single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart">
                                                <input type="hidden" name="add" value="1">
                                                <input type="hidden" name="googles_item" value="Fossil Wayfarer">
                                                <input type="hidden" name="amount" value="825.00">
                                                <button type="submit" class="googles-cart pgoogles-cart">
                                                    <i class="fas fa-cart-plus"></i>
                                                </button>
                                            </form>

                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /mens -->
                </div>
                <!--//row-->



                <!--/meddle-->
                <div class="row">
                    <div class="col-md-12 middle-slider my-4">
                        <div class="middle-text-info ">

                            <h3 class="tittle-w3layouts two text-center my-lg-4 mt-3">Summer Flash sale</h3>
                            <div class="simply-countdown-custom" id="simply-countdown-custom"></div>

                        </div>
                    </div>
                </div>
                <!--//meddle-->


                <!--/Mobiles-->
                <asp:DataList ID="DataList2" runat="server">
                    <ItemTemplate>
                        <div class="slider-img mid-sec">
                            <div class="mid-slider">
                                <div class="owl-carousel owl-theme row">

                                    <%--items start here--%>
                                    <div class="item">
                                        <div class="gd-box-info text-center">
                                            <div class="product-men women_two bot-gd">
                                                <div class="product-googles-info slide-img googles">
                                                    <div class="men-pro-item">
                                                        <div class="men-thumb-item">
                                                            <asp:Image ID="Image2" runat="server" ImageUrl=<%# Eval("Image1") %> class="img-fluid"  />
                                                            <div class="men-cart-pro">
                                                                <div class="inner-men-cart-pro">
                                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                                </div>
                                                            </div>
                                                            <span class="product-new-top">New</span>
                                                        </div>
                                                        <div class="item-info-product">

                                                            <div class="info-product-price">
                                                                <div class="grid_meta">
                                                                    <div class="product_price">
                                                                        <h4>
                                                                            <a href="single.html">
                                                                                <asp:Label ID="Label1" runat="server" Text=<%# Eval("Product_Name") %> ></asp:Label> </a>
                                                                        </h4>
                                                                        <div class="grid-price mt-2">
                                                                            <span class="money ">
                                                                                <asp:Label ID="Label2" runat="server" Text=<%# Eval("Product_Price") %> ></asp:Label></span>
                                                                        </div>
                                                                    </div>
                                                                    <ul class="stars">
                                                                        <li>
                                                                            <a href="#">
                                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                                            </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                                            </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                                            </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                                                            </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                            </a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                                <div class="googles single-item hvr-outline-out">
                                                                    <form action="#" method="post">
                                                                        <input type="hidden" name="cmd" value="_cart">
                                                                        <input type="hidden" name="add" value="1">
                                                                        <input type="hidden" name="googles_item" value=<%# Eval("Product_Name") %>>
                                                                        <input type="hidden" name="amount" value=<%# Eval("Product_Price") %>>
                                                                        <button type="submit" class="googles-cart pgoogles-cart">
                                                                            <i class="fas fa-cart-plus"></i>
                                                                        </button>
                                                                    </form>

                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                <!--/Mobiles end-->

                <!-- /Top Review -->
                <div class="testimonials py-lg-4 py-3 mt-4">
                    <div class="testimonials-inner py-lg-4 py-3">
                        <h3 class="tittle-w3layouts text-center my-lg-4 my-4">Top Review</h3>
                        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner" role="listbox">
                                <div class="carousel-item active">
                                    <div class="testimonials_grid text-center">
                                        <h3>Anamaria
											<span>Customer</span>
                                        </h3>
                                        <label>United States</label>
                                        <p>
                                            Maecenas interdum, metus vitae tincidunt porttitor, magna quam egestas sem, ac scelerisque nisl nibh vel lacus.
											Proin eget gravida odio. Donec ullamcorper est eu accumsan cursus.
                                        </p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="testimonials_grid text-center">
                                        <h3>Esmeralda
											<span>Customer</span>
                                        </h3>
                                        <label>United States</label>
                                        <p>
                                            Maecenas interdum, metus vitae tincidunt porttitor, magna quam egestas sem, ac scelerisque nisl nibh vel lacus.
											Proin eget gravida odio. Donec ullamcorper est eu accumsan cursus.
                                        </p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="testimonials_grid text-center">
                                        <h3>Gretchen
											<span>Customer</span>
                                        </h3>
                                        <label>United States</label>
                                        <p>
                                            Maecenas interdum, metus vitae tincidunt porttitor, magna quam egestas sem, ac scelerisque nisl nibh vel lacus.
											Proin eget gravida odio. Donec ullamcorper est eu accumsan cursus.
                                        </p>
                                    </div>
                                </div>
                                <a class="carousel-control-prev test" href="#carouselExampleControls" role="button" data-slide="prev">
                                    <span class="fas fa-long-arrow-alt-left"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next test" href="#carouselExampleControls" role="button" data-slide="next">
                                    <span class="fas fa-long-arrow-alt-right" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>

                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- //Top Review -->


                <div class="row galsses-grids pt-lg-5 pt-3">
                <h3 class="tittle-w3layouts my-lg-4 my-4">Furniture </h3>

                    <%--Home section starts here--%>
                    <div class="col-lg-6 galsses-grid-left">
                        <figure class="effect-lexi">
                            <!-- ASP.NET Image Control -->
                            <asp:Image ID="ImageBanner" runat="server" CssClass="img-fluid" ImageUrl="~/Images/Home_Section/Mobiles&Tablets.jpg" Alt="Banner Image" />

                            <figcaption>
                                <!-- Literal control for dynamic heading text -->
                                <h3>
                                    <asp:Literal ID="LiteralEditorPick" runat="server" Text=""></asp:Literal>
                                    <span>
                                        <asp:Literal ID="LiteralPick" runat="server" Text="Pick"></asp:Literal></span>
                                </h3>
                                <!-- Literal control for dynamic paragraph text -->
                                <p>
                                    <asp:Literal ID="LiteralMessage" runat="server" Text="Express your style now."></asp:Literal>
                                </p>
                            </figcaption>
                        </figure>
                    </div>
                    <%--Home section Ends here--%>

                     <%--Home section starts here--%>
                    <div class="col-lg-6 galsses-grid-left">
                        <figure class="effect-lexi">
                            <!-- ASP.NET Image Control -->
                            <asp:Image ID="Image1" runat="server" CssClass="img-fluid" ImageUrl="~/Images/Home_Section/Furniture.jpg" Alt="Banner Image" />

                            <figcaption>
                                <!-- Literal control for dynamic heading text -->
                                <h3>
                                    <asp:Literal ID="Literal1" runat="server" Text=""></asp:Literal>
                                    <span>
                                        <asp:Literal ID="Literal2" runat="server" Text="Pick"></asp:Literal></span>
                                </h3>
                                <!-- Literal control for dynamic paragraph text -->
                                <p>
                                    <asp:Literal ID="Literal3" runat="server" Text="Express your style now."></asp:Literal>
                                </p>
                            </figcaption>
                        </figure>
                    </div>
                    <%--Home section Ends here--%>

                </div>
               
                
                <!-- /grids -->
                <div class="bottom-sub-grid-content py-lg-5 py-3">
                    <div class="row">
                        <div class="col-lg-4 bottom-sub-grid text-center">
                            <div class="bt-icon">

                                <span class="far fa-hand-paper"></span>
                            </div>

                            <h4 class="sub-tittle-w3layouts my-lg-4 my-3">Satisfaction Guaranteed</h4>
                            <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>
                            <p>
                                <a href="shop.html" class="btn btn-sm animated-button gibson-three mt-4">Shop Now</a>
                            </p>
                        </div>
                        <!-- /.col-lg-4 -->
                        <div class="col-lg-4 bottom-sub-grid text-center">
                            <div class="bt-icon">
                                <span class="fas fa-rocket"></span>
                            </div>

                            <h4 class="sub-tittle-w3layouts my-lg-4 my-3">Fast Shipping</h4>
                            <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>
                            <p>
                                <a href="shop.html" class="btn btn-sm animated-button gibson-three mt-4">Shop Now</a>
                            </p>
                        </div>
                        <!-- /.col-lg-4 -->
                        <div class="col-lg-4 bottom-sub-grid text-center">
                            <div class="bt-icon">
                                <span class="far fa-sun"></span>
                            </div>

                            <h4 class="sub-tittle-w3layouts my-lg-4 my-3">UV Protection</h4>
                            <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>
                            <p>
                                <a href="shop.html" class="btn btn-sm animated-button gibson-three mt-4">Shop Now</a>
                            </p>
                        </div>
                        <!-- /.col-lg-4 -->
                    </div>
                </div>
                <!-- //grids -->


                <!-- /clients-sec -->
                <div class="testimonials p-lg-5 p-3 mt-4">
                    <div class="row last-section">
                        <div class="col-lg-3 footer-top-w3layouts-grid-sec">
                            <div class="mail-grid-icon text-center">
                                <i class="fas fa-gift"></i>
                            </div>
                            <div class="mail-grid-text-info">
                                <h3>Genuine Product</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur</p>
                            </div>
                        </div>
                        <div class="col-lg-3 footer-top-w3layouts-grid-sec">
                            <div class="mail-grid-icon text-center">
                                <i class="fas fa-shield-alt"></i>
                            </div>
                            <div class="mail-grid-text-info">
                                <h3>Secure Products</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur</p>
                            </div>
                        </div>
                        <div class="col-lg-3 footer-top-w3layouts-grid-sec">
                            <div class="mail-grid-icon text-center">
                                <i class="fas fa-dollar-sign"></i>
                            </div>
                            <div class="mail-grid-text-info">
                                <h3>Cash on Delivery</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur</p>
                            </div>
                        </div>
                        <div class="col-lg-3 footer-top-w3layouts-grid-sec">
                            <div class="mail-grid-icon text-center">
                                <i class="fas fa-truck"></i>
                            </div>
                            <div class="mail-grid-text-info">
                                <h3>Easy Delivery</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- //clients-sec -->


            </div>
        </div>
    </section>
</asp:Content>
