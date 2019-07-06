<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Detail</title>
    <meta charset="utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/main.css" />
  </head>
  <body class="animsition">
    <div class="shop-detail-1 woocommerce" id="page">
      <nav id="menu">
        <ul>
          <li><a href="index">Home</a></li>
		  <li><a href="shop">Shop List</a></li>
		  <li><a href="detail">Shop Detail</a><li>
		  <li><a href="wish-list">Wishlist</a></li>
		  <li><a href="shop-cart">Shop Cart</a></li>
		  <li><a href="check-out">Checkout</a></li>
		  <li><a href="per_index">Center</a></li>
        </ul>
      </nav>
      <header class="header-style-1 static">
        <div class="container">
          <div class="row">
            <div class="header-1-inner">
              <a class="brand-logo animsition-link" href="index">
                <img class="img-responsive" src="images/logo-web.png" alt="" />
              </a>
              <nav>
                <ul class="menu hidden-xs">
                  <li><a href="index">Home</a></li>
				  <li><a href="shop">Shop List</a></li>
				  <li><a href="detail">Shop Detail</a><li>
				  <li><a href="wish-list">Wishlist</a></li>
				  <li><a href="shop-cart">Shop Cart</a></li>
				  <li><a href="check-out">Checkout</a></li>
				  <li><a href="per_index">Center</a></li>
                </ul>
              </nav>
                   <!-- 这里是搜索啊 -->>
                <div class="widget widget-control-header widget-search-header">
                  <a class="control btn-open-search-form js-open-search-form-header" href="#">
                    <span class="lnr lnr-magnifier"></span>
                  </a>
                  <div class="form-outer">
                    <button class="btn-close-form-search-header js-close-search-form-header">
                      <span class="lnr lnr-cross"></span>
                    </button>
                    
                    <form method="post" action="searchresult" enctype="multipart/form-data">
                    
                    <div class="header_search">
                    
                      <input type="text" name="keyword" class="search" placeholder="Search" />
                      <button type="submit" class="search" >
                        <span class="lnr lnr-magnifier"></span>
                      </button>
                       
                    </div>
                      
                    </form>
                  </div>
                </div>
                <!-- 这里是搜索啊 -->>
                <div class="widget widget-control-header widget-shop-cart js-widget-shop-cart">
                  <a class="control" href="shop-cart">
                    <p class="counter">0</p>
                    <span class="lnr lnr-cart"></span>
                  </a>
                </div>
                <div class="widget widget-control-header hidden-lg hidden-md hidden-sm">
                  <a class="navbar-toggle js-offcanvas-has-events" type="button" href="#menu">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </a>
                </div>
              </aside>
            </div>
          </div>
        </div>
      </header>
      <section class="sub-header shop-detail-1">
        <img class="rellax bg-overlay" src="images/sub-header/01.jpg" alt="">
        <div class="overlay-call-to-action"></div>
        <h3 class="heading-style-3">Shop Detail</h3>
      </section>
      <section class="boxed-sm">
        <div class="container">
        
         
          <div class="row product-detail">
            <div class="row main">
              <div class="col-md-6">
                <div class="woocommerce-product-gallery">
                
                  <div class="main-carousel">
                  <div class="item">
                      <img class="img-responsive" src="images/product/01.jpg" alt="product thumbnail">
                    </div>
                    <div class="item">
                      <img class="img-responsive" src="images/product/02.jpg" alt="product thumbnail">
                    </div>
                    <div class="item">
                      <img class="img-responsive" src="images/product/03.jpg" alt="product thumbnail">
                    </div>
                    <div class="item">
                      <img class="img-responsive" src="images/product/04.jpg" alt="product thumbnail">
                    </div>
                    <div class="item">
                      <img class="img-responsive" src="images/product/05.jpg" alt="product thumbnail">
                    </div>
                  </div>
                  
                  <div class="thumbnail-carousel">
                    <div class="item">
                      <img class="img-responsive" src="images/product/01.jpg" alt="product thumbnail">
                    </div>
                    <div class="item">
                      <img class="img-responsive" src="images/product/02.jpg" alt="product thumbnail">
                    </div>
                    <div class="item">
                      <img class="img-responsive" src="images/product/03.jpg" alt="product thumbnail">
                    </div>
                    <div class="item">
                      <img class="img-responsive" src="images/product/04.jpg" alt="product thumbnail">
                    </div>
                    <div class="item">
                      <img class="img-responsive" src="images/product/05.jpg" alt="product thumbnail">
                    </div>
                  </div>
                </div>
              </div>
              
              
              <div class="col-md-6">
                <div class="summary">
                  <div class="desc">
                    <div class="header-desc">
                      <h2 class="product-title">Shop Detail</h2>
                      <p class="price"></p>
                    </div>
                    <div class="body-desc">
                      <div class="woocommerce-product-details-short-description">
                        <p>在这里您可以看到商品的大图，加入购物车和心愿单，并且可以分享到自己的社交软件上。下面是我们为本商品加上的标签，您可以点击相关标签查看更多类似商品
                           下方是细节、额外信息和用户评论。
                        </p>
                      </div>
                    </div>
                    <div class="footer-desc">
                      <form class="cart">
                        <div class="quantity buttons-added">
                          <input class="minus" value="-" type="button">
                          <input class="input-text qty text" step="1" min="1" max="10000" name="quantity" value="1" title="Qty" size="4" pattern="[0-9]*" inputmode="numeric" type="number">
                          <input class="plus" value="+" type="button">
                        </div>
                        <button class="btn btn-brand no-radius">ADD TO CART</button>
                        <button class="btn btn-wishlist btn-brand-ghost no-radius">
                          <i class="fa fa-heart"></i>
                        </button>
                      </form>
                    </div>
                  </div>
                  <div class="product-meta">
                    <p class="posted-in">Categories:
                      <a rel="tag">Food</a>
                    </p>
                    <p class="tagged-as">Tags:
                      <a href="#" rel="tag">Natural</a>,
                      <a href="#" rel="tag">Organic</a>,
                      <a href="#" rel="tag">Health</a>,
                      <a href="#" rel="tag">Green</a>,
                      <a href="#" rel="tag">Vegetable</a>
                    </p>
                    <p class="id">
                    </p>
                  </div>
                  <div class="widget-social align-left">
                    <ul>
                      <li>
                        <a class="facebook" data-toggle="tooltip" title="Facebook" href="http://www.facebook.com/authemes">
                          <i class="fa fa-facebook"></i>
                        </a>
                      </li>
                      <li>
                        <a class="pinterest" data-toggle="tooltip" title="Pinterest" href="http://www.pinterest.com/authemes">
                          <i class="fa fa-pinterest"></i>
                        </a>
                      </li>
                      <li>
                        <a class="twitter" data-toggle="tooltip" title="Twitter" href="http://www.twitter.com/authemes">
                          <i class="fa fa-twitter"></i>
                        </a>
                      </li>
                      <li>
                        <a class="google-plus" data-toggle="tooltip" title="Google Plus" href="https://plus.google.com/authemes">
                          <i class="fa fa-google-plus"></i>
                        </a>
                      </li>
                      <li>
                        <a class="instagram" data-toggle="tooltip" title="Instagram" href="https://instagram.com/authemes">
                          <i class="fa fa-instagram"></i>
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          
          
          <div class="woocommerce-tabs">
            <div class="row">
              <div class="col-md-6">
                <div class="tab-content tab-content-style-1">
                  <div class="tab-pane fade in active" id="Description" role="tabpanel">
                    <h3 class="title-tab">Description</h3>
                    <ul class="arrow">
                      <li>Using energy and natural resources responsibly</li>
                      <li>Maintaining biodiversity</li>
                      <li>Respecting regional environmental balances</li>
                      <li>Enhancing soil fertility</li>
                      <li>Preserving water quality</li>
                      <li>Promoting animal health and welfare</li>
                      <li>Catering for animals' specific needs</li>
                    </ul>
                  </div>
                  <div class="tab-pane fade" id="Additional-Information" role="tabpanel">
                    <h3 class="title-tab">Additional Information</h3>
                    <table class="shop_attributes table table-striped table-bordered">
                      <tbody>
                        <tr>
                          <th>Country</th>
                          <td>
                            <p>England, London</p>
                          </td>
                        </tr>
                        <tr>
                          <th></th>
                          <td>
                            <p>102 kcal/100 g</p>
                          </td>
                        </tr>
                        <tr>
                          <th>Next Day Delivery Available</th>
                          <td>
                            <p>Yes</p>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                  <div class="tab-pane fade" id="Review" role="tabpanel">
                    <h3 class="title-tab">reviews for Shop</h3>
                    <ol class="comment-list">
                      <li>
                        <div class="the-comment">
                          <div class="avatar">
                            <img class="avatar" alt="avatar" src="images/comment/01.png">
                          </div>
                          <div class="comment-box">
                            <div class="comment-author meta">
                              <p class="author">Mark Hunt</p>
                              <p class="time">15 March 2018</p>
                            </div>
                            <div class="comment-text">
                              <p>This is salad</p>
                            </div>
                          </div>
                        </div>
                      </li>
                      <li>
                        <div class="the-comment">
                          <div class="avatar">
                            <img class="avatar" alt="avatar" src="images/comment/02.png">
                          </div>
                          <div class="comment-box">
                            <div class="comment-author meta">
                              <p class="author">Lori Peters</p>
                              <p class="time">16 March 2018</p>
                            </div>
                            <div class="comment-text">
                              <p>This is salad</p>
                            </div>
                          </div>
                        </div>
                      </li>
                    </ol>
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <ul class="tabs tab-style-1" role="tablist">
                  <li class="active" role="presentation">
                    <a href="#Description" aria-controls="Description" role="tab" data-toggle="tab">Description
                      <i class="more-less fa fa-angle-down"></i>
                    </a>
                  </li>
                  <li role="presentation">
                    <a href="#Additional-Information" aria-controls="Additional-Information" role="tab" data-toggle="tab">Additional Information
                      <i class="more-less fa fa-angle-down"></i>
                    </a>
                  </li>
                  <li role="presentation">
                    <a href="#Review" aria-controls="Review" role="tab" data-toggle="tab">Reviews
                      <i class="more-less fa fa-angle-down"></i>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="container">
          <div class="relate-product">
          </div>
        </div>
      </section>
    </div>
    <footer class="footer-style-1">
      <div class="container">
        <div class="row">
          <div class="footer-style-1-inner">
            <div class="widget-footer widget-text col-first col-small">
              <a href="#">
                <img class="logo-footer" src="images/logo.png" alt="Logo Organic" />
              </a>
              <div class="widget-link">
                <ul>
                  <li>
                    <span class="lnr lnr-map-marker icon"></span>
                    <span>379 5th Ave New York, NYC 10018</span>
                  </li>
                  <li>
                    <span class="lnr lnr-phone-handset icon"></span>
                    <a href="tel:0123456789">(+1) 96 716 6879</a>
                  </li>
                  <li>
                    <span class="lnr lnr-envelope icon"></span>
                    <a href="mailto: contact@site.com">contact@site.com </a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="widget-footer widget-link col-second col-medium">
              <div class="list-link">
                <h4 class="h4 heading">SHOP</h4>
                <ul>
                  <li>
                    <a href="#">Food</a>
                  </li>
                  <li>
                    <a href="#">Farm</a>
                  </li>
                  <li>
                    <a href="#">Health</a>
                  </li>
                  <li>
                    <a href="#">Organic</a>
                  </li>
                </ul>
              </div>
              <div class="list-link">
                <h4 class="h4 heading">SUPPORT</h4>
                <ul>
                  <li>
                    <a href="#">Contact Us</a>
                  </li>
                  <li>
                    <a href="#">FAQ</a>
                  </li>
                  <li>
                    <a href="#">Privacy Policy</a>
                  </li>
                  <li>
                    <a href="#">Blog</a>
                  </li>
                </ul>
              </div>
              <div class="list-link">
                <h4 class="h4 heading">MY ACCOUNT</h4>
                <ul>
                  <li>
                    <a href="#">Sign In</a>
                  </li>
                  <li>
                    <a href="#">My Cart</a>
                  </li>
                  <li>
                    <a href="#">My Wishlist</a>
                  </li>
                  <li>
                    <a href="#">Check Out</a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="widget-footer widget-newsletter-footer col-last col-small">
              <h4 class="h4 heading">NEWSLETTER</h4>
              <p>Subscribe now to get daily updates</p>
              <form class="organic-form form-inline btn-add-on circle border">
                <div class="form-group">
                  <input class="form-control pill transparent" placeholder="Your Email..." type="email" />
                  <button class="btn btn-brand circle" type="submit">
                    <i class="fa fa-envelope-o"></i>
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <div class="copy-right style-1">
        <div class="container">
          <div class="row">
            <div class="copy-right-inner">
              <p>Copyright © 2017 Designed by AuThemes. All rights reserved.</p>
              <div class="widget widget-footer widget-footer-creadit-card">
                <ul class="list-unstyle">
                  <li>
                    <a href="#">
                      <img src="images/icons/creadit-card-01.png" alt="creadit card" />
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <img src="images/icons/creadit-card-02.png" alt="creadit card" />
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <img src="images/icons/creadit-card-03.png" alt="creadit card" />
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <img src="images/icons/creadit-card-04.png" alt="creadit card" />
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <div class="modal fade" id="quick-view-product" tabindex="-1" role="dialog">
      <div class="modal-dialog modal-lg modal-quickview woocommerce" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">
            <div class="row">
              <div class="col-md-6">
                <div class="woocommerce-product-gallery">
                  <div class="main-carousel-product-quick-view">
                    <div class="item">
                      <img class="img-responsive" src="images/product/01.jpg" alt="product thumbnail" />
                    </div>
                    <div class="item">
                      <img class="img-responsive" src="images/product/02.jpg" alt="product thumbnail" />
                    </div>
                    <div class="item">
                      <img class="img-responsive" src="images/product/03.jpg" alt="product thumbnail" />
                    </div>
                    <div class="item">
                      <img class="img-responsive" src="images/product/04.jpg" alt="product thumbnail" />
                    </div>
                    <div class="item">
                      <img class="img-responsive" src="images/product/05.jpg" alt="product thumbnail" />
                    </div>
                  </div>
                  <div class="thumbnail-carousel-product-quickview">
                    <div class="item">
                      <img class="img-responsive" src="images/product/01.jpg" alt="product thumbnail" />
                    </div>
                    <div class="item">
                      <img class="img-responsive" src="images/product/02.jpg" alt="product thumbnail" />
                    </div>
                    <div class="item">
                      <img class="img-responsive" src="images/product/03.jpg" alt="product thumbnail" />
                    </div>
                    <div class="item">
                      <img class="img-responsive" src="images/product/04.jpg" alt="product thumbnail" />
                    </div>
                    <div class="item">
                      <img class="img-responsive" src="images/product/05.jpg" alt="product thumbnail" />
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="summary">
                  <div class="desc">
                    <div class="header-desc">
                      <h2 class="product-title">Salad</h2>
                      <p class="price">$2.00</p>
                    </div>
                    <div class="body-desc">
                      <div class="woocommerce-product-details-short-description">
                        <p>Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis
                          sem dapibus, varius egestas lorem a sollicitudin. </p>
                      </div>
                    </div>
                    <div class="footer-desc">
                      <form class="cart">
                        <div class="quantity buttons-added">
                          <input class="minus" value="-" type="button" />
                          <input class="input-text qty text" step="1" min="1" max="" name="quantity" value="1" title="Qty" size="4" pattern="[0-9]*" inputmode="numeric" type="number" />
                          <input class="plus" value="+" type="button" />
                        </div>
                        <div class="group-btn-control-wrapper">
                          <button class="btn btn-brand no-radius">ADD TO CART</button>
                          <button class="btn btn-wishlist btn-brand-ghost no-radius">
                            <i class="fa fa-heart"></i>
                          </button>
                        </div>
                      </form>
                    </div>
                  </div>
                  <div class="product-meta">
                    <p class="posted-in">Categories:
                      <a href="#" rel="tag">Food</a>
                    </p>
                    <p class="tagged-as">Tags:
                      <a href="#" rel="tag">Natural</a>,
                      <a href="#" rel="tag">Organic</a>,
                      <a href="#" rel="tag">Health</a>,
                      <a href="#" rel="tag">Green</a>,
                      <a href="#" rel="tag">Vegetable</a>
                    </p>
                    <p class="id">ID:
                      <a href="#">A203</a>
                    </p>
                  </div>
                  <div class="widget-social align-left">
                    <ul>
                      <li>
                        <a class="facebook" data-toggle="tooltip" title="Facebook" href="http://www.facebook.com/authemes">
                          <i class="fa fa-facebook"></i>
                        </a>
                      </li>
                      <li>
                        <a class="pinterest" data-toggle="tooltip" title="Pinterest" href="http://www.pinterest.com/authemes">
                          <i class="fa fa-pinterest"></i>
                        </a>
                      </li>
                      <li>
                        <a class="twitter" data-toggle="tooltip" title="Twitter" href="http://www.twitter.com/authemes">
                          <i class="fa fa-twitter"></i>
                        </a>
                      </li>
                      <li>
                        <a class="google-plus" data-toggle="tooltip" title="Google Plus" href="https://plus.google.com/authemes">
                          <i class="fa fa-google-plus"></i>
                        </a>
                      </li>
                      <li>
                        <a class="instagram" data-toggle="tooltip" title="Instagram" href="https://instagram.com/authemes">
                          <i class="fa fa-instagram"></i>
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script src="js/library/jquery.min.js"></script>
    <script src="js/library/bootstrap.min.js"></script>
    <script src="js/function-check-viewport.js"></script>
    <script src="js/library/slick.min.js"></script>
    <script src="js/library/select2.full.min.js"></script>
    <script src="js/library/imagesloaded.pkgd.min.js"></script>
    <script src="js/library/jquery.mmenu.all.min.js"></script>
    <script src="js/library/rellax.min.js"></script>
    <script src="js/library/isotope.pkgd.min.js"></script>
    <script src="js/library/bootstrap-notify.min.js"></script>
    <script src="js/library/bootstrap-slider.js"></script>
    <script src="js/library/in-view.min.js"></script>
    <script src="js/library/countUp.js"></script>
    <script src="js/library/animsition.min.js"></script>
    <script src="js/global.js"></script>
    <script src="js/config-mm-menu.js"></script>
    <script src="js/config-carousel.js">


    </script>
    <script src="js/config-carousel-thumbnail.js">


    </script>
    <script src="js/config-carousel-product-quickview.js"></script>
    <!-- Demo Only-->
    <script src="js/demo-add-to-cart.js">


    </script>
  </body>
</html>

