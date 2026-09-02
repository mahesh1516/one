```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NexusShop — Premium Marketplace</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Manrope:wght@600;700;800&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

/* =========================================================
   GLOBAL
========================================================= */

:root{
    --bg:#f4f6fb;
    --white:#ffffff;
    --dark:#10131c;
    --dark-2:#171b27;
    --text:#151923;
    --muted:#737b8c;
    --border:#e7e9ef;

    --purple:#6c5ce7;
    --purple-dark:#5545d4;
    --purple-light:#eeeaff;

    --green:#16a34a;
    --red:#ef4444;
    --orange:#f59e0b;

    --radius:20px;
    --container:1280px;

    --shadow:0 15px 45px rgba(24,31,56,.08);
    --transition:.25s ease;
}

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

html{
    scroll-behavior:smooth;
}

body{
    font-family:"Inter",sans-serif;
    background:var(--bg);
    color:var(--text);
    line-height:1.6;
}

button,
input{
    font:inherit;
}

button{
    cursor:pointer;
}

a{
    text-decoration:none;
    color:inherit;
}

img{
    max-width:100%;
    display:block;
}

.container{
    width:min(100% - 40px,var(--container));
    margin:auto;
}

.section{
    padding:85px 0;
}


/* =========================================================
   TOP ANNOUNCEMENT
========================================================= */

.announcement{
    background:#0d1018;
    color:#fff;
    padding:10px 0;
    font-size:13px;
}

.announcement-inner{
    display:flex;
    justify-content:center;
    align-items:center;
    gap:10px;
}

.announcement strong{
    color:#a99cff;
}


/* =========================================================
   HEADER
========================================================= */

header{
    position:sticky;
    top:0;
    z-index:1000;

    background:rgba(255,255,255,.88);
    backdrop-filter:blur(20px);

    border-bottom:1px solid rgba(0,0,0,.06);
}

.header-inner{
    min-height:78px;

    display:flex;
    align-items:center;
    gap:30px;
}

.logo{
    font-family:"Manrope",sans-serif;
    font-size:25px;
    font-weight:800;
    letter-spacing:-1px;
}

.logo span{
    color:var(--purple);
}

.nav{
    display:flex;
    gap:28px;
    margin-left:20px;
}

.nav a{
    font-size:14px;
    font-weight:600;
    color:#596173;

    transition:var(--transition);
}

.nav a:hover,
.nav a.active{
    color:var(--purple);
}

.search{
    flex:1;
    max-width:360px;
    margin-left:auto;
    position:relative;
}

.search input{
    width:100%;
    height:44px;

    border:1px solid var(--border);
    border-radius:50px;

    padding:0 50px 0 18px;

    background:#f7f8fb;
    outline:none;

    transition:var(--transition);
}

.search input:focus{
    background:#fff;
    border-color:#aaa0ff;
    box-shadow:0 0 0 4px rgba(108,92,231,.08);
}

.search button{
    position:absolute;
    right:5px;
    top:5px;

    width:34px;
    height:34px;

    border:none;
    border-radius:50%;

    background:var(--dark);
    color:white;
}

.header-actions{
    display:flex;
    gap:9px;
}

.icon-btn{
    width:42px;
    height:42px;

    border:1px solid var(--border);
    border-radius:13px;

    background:white;

    position:relative;

    transition:var(--transition);
}

.icon-btn:hover{
    background:var(--dark);
    color:white;
    transform:translateY(-2px);
}

.count{
    position:absolute;

    top:-6px;
    right:-6px;

    width:19px;
    height:19px;

    display:grid;
    place-items:center;

    background:var(--red);
    color:#fff;

    border-radius:50%;

    font-size:10px;
    font-weight:800;
}

.menu-btn{
    display:none;

    width:42px;
    height:42px;

    border:1px solid var(--border);
    border-radius:12px;

    background:white;
}


/* =========================================================
   MOBILE MENU
========================================================= */

.mobile-menu{
    display:none;
    background:white;
    border-top:1px solid var(--border);
    padding:15px 20px;
}

.mobile-menu a{
    display:block;
    padding:13px 0;
    border-bottom:1px solid var(--border);
    font-weight:600;
}


/* =========================================================
   HERO
========================================================= */

.hero{
    padding:45px 0 0;
}

.hero-card{
    min-height:570px;

    border-radius:30px;
    overflow:hidden;

    position:relative;

    display:flex;
    align-items:center;

    background:
        linear-gradient(
            90deg,
            rgba(10,13,22,.97) 0%,
            rgba(10,13,22,.86) 45%,
            rgba(10,13,22,.25) 100%
        ),
        url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1800&q=90")
        center/cover;
}

.hero-content{
    max-width:700px;
    padding:60px;
    color:white;
}

.hero-tag{
    display:inline-flex;
    align-items:center;
    gap:8px;

    padding:8px 14px;

    border:1px solid rgba(255,255,255,.18);
    background:rgba(255,255,255,.08);

    border-radius:50px;

    font-size:12px;
    font-weight:700;

    margin-bottom:22px;
}

.hero-tag i{
    color:#a99cff;
}

.hero h1{
    font-family:"Manrope",sans-serif;

    font-size:clamp(45px,6vw,76px);

    line-height:1.02;
    letter-spacing:-3px;

    margin-bottom:22px;
}

.hero h1 span{
    color:#a99cff;
}

.hero p{
    color:#cbd0dc;
    font-size:17px;

    max-width:570px;

    margin-bottom:30px;
}

.hero-buttons{
    display:flex;
    gap:12px;
    flex-wrap:wrap;
}

.btn{
    border:none;

    padding:13px 22px;

    border-radius:12px;

    display:inline-flex;
    align-items:center;
    justify-content:center;
    gap:9px;

    font-weight:700;

    transition:var(--transition);
}

.btn-primary{
    background:var(--purple);
    color:white;
}

.btn-primary:hover{
    background:var(--purple-dark);
    transform:translateY(-3px);
    box-shadow:0 12px 25px rgba(108,92,231,.3);
}

.btn-light{
    background:white;
    color:var(--dark);
}

.btn-light:hover{
    transform:translateY(-3px);
}


/* =========================================================
   STATS
========================================================= */

.stats{
    margin-top:-35px;
    position:relative;
    z-index:3;
}

.stats-grid{
    display:grid;
    grid-template-columns:repeat(4,1fr);

    background:white;

    border:1px solid var(--border);
    border-radius:20px;

    box-shadow:var(--shadow);

    overflow:hidden;
}

.stat{
    padding:25px;

    display:flex;
    align-items:center;
    gap:15px;

    border-right:1px solid var(--border);
}

.stat:last-child{
    border-right:none;
}

.stat-icon{
    width:48px;
    height:48px;

    display:grid;
    place-items:center;

    border-radius:14px;

    background:var(--purple-light);
    color:var(--purple);
}

.stat h4{
    font-size:14px;
}

.stat p{
    color:var(--muted);
    font-size:12px;
}


/* =========================================================
   SECTION HEADER
========================================================= */

.section-head{
    display:flex;
    justify-content:space-between;
    align-items:end;

    gap:20px;

    margin-bottom:30px;
}

.section-head h2{
    font-family:"Manrope",sans-serif;

    font-size:32px;
    letter-spacing:-1px;
}

.section-head p{
    color:var(--muted);
    margin-top:5px;
}

.view-all{
    color:var(--purple);
    font-weight:700;
    font-size:14px;
}


/* =========================================================
   CATEGORIES
========================================================= */

.category-grid{
    display:grid;
    grid-template-columns:repeat(6,1fr);
    gap:15px;
}

.category{
    background:white;

    border:1px solid var(--border);
    border-radius:18px;

    padding:22px 12px;

    text-align:center;

    transition:var(--transition);
    cursor:pointer;
}

.category:hover{
    transform:translateY(-7px);
    border-color:#bdb5ff;
    box-shadow:var(--shadow);
}

.category-icon{
    width:62px;
    height:62px;

    margin:0 auto 14px;

    display:grid;
    place-items:center;

    border-radius:18px;

    background:#f3f2ff;

    color:var(--purple);

    font-size:22px;
}

.category h4{
    font-size:14px;
}

.category p{
    color:var(--muted);
    font-size:11px;
}


/* =========================================================
   PRODUCTS
========================================================= */

.product-grid{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:20px;
}

.product{
    background:white;

    border:1px solid var(--border);
    border-radius:20px;

    overflow:hidden;

    transition:var(--transition);
}

.product:hover{
    transform:translateY(-7px);
    box-shadow:var(--shadow);
}

.product-image{
    height:280px;
    position:relative;
    overflow:hidden;
    background:#f1f3f7;
}

.product-image img{
    width:100%;
    height:100%;
    object-fit:cover;

    transition:.5s ease;
}

.product:hover img{
    transform:scale(1.07);
}

.badge{
    position:absolute;
    top:14px;
    left:14px;

    padding:6px 10px;

    border-radius:8px;

    background:var(--dark);
    color:white;

    font-size:10px;
    font-weight:800;

    z-index:2;
}

.badge.sale{
    background:var(--red);
}

.wishlist{
    position:absolute;
    top:14px;
    right:14px;

    width:38px;
    height:38px;

    border:none;
    border-radius:50%;

    background:rgba(255,255,255,.95);

    z-index:3;

    transition:var(--transition);
}

.wishlist:hover,
.wishlist.active{
    background:#fee2e2;
    color:var(--red);
}

.product-info{
    padding:18px;
}

.product-category{
    font-size:11px;
    text-transform:uppercase;
    letter-spacing:.7px;

    color:var(--muted);

    font-weight:800;
}

.product-title{
    font-size:15px;
    margin:6px 0;
}

.rating{
    color:var(--orange);
    font-size:12px;
}

.rating span{
    color:var(--muted);
    margin-left:4px;
}

.product-bottom{
    display:flex;
    justify-content:space-between;
    align-items:center;

    margin-top:16px;
}

.price{
    font-size:19px;
    font-weight:800;
}

.old-price{
    color:#a2a7b2;
    text-decoration:line-through;
    font-size:11px;
    margin-left:5px;
}

.add-cart{
    width:42px;
    height:42px;

    border:none;
    border-radius:12px;

    background:var(--dark);
    color:white;

    transition:var(--transition);
}

.add-cart:hover{
    background:var(--purple);
    transform:scale(1.07);
}


/* =========================================================
   DEAL
========================================================= */

.deal{
    background:var(--dark);

    color:white;

    border-radius:28px;

    overflow:hidden;

    display:grid;
    grid-template-columns:1fr 1fr;
}

.deal-image{
    min-height:440px;

    background:
        url("https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=90")
        center/cover;
}

.deal-content{
    padding:65px;

    display:flex;
    flex-direction:column;
    justify-content:center;
}

.deal-label{
    color:#a99cff;

    text-transform:uppercase;
    letter-spacing:2px;

    font-size:11px;
    font-weight:800;

    margin-bottom:12px;
}

.deal h2{
    font-family:"Manrope",sans-serif;

    font-size:42px;
    line-height:1.1;

    margin-bottom:15px;
}

.deal p{
    color:#aeb5c4;

    margin-bottom:25px;
}

.timer{
    display:flex;
    gap:9px;
    margin-bottom:25px;
}

.timer-box{
    min-width:65px;

    padding:10px;

    border:1px solid #303746;
    border-radius:12px;

    text-align:center;
}

.timer-box strong{
    display:block;
    font-size:20px;
}

.timer-box span{
    font-size:9px;
    color:#858d9e;
    text-transform:uppercase;
}

.deal-price{
    margin-bottom:22px;
}

.deal-price strong{
    font-size:31px;
}

.deal-price del{
    color:#737b8c;
    margin-left:8px;
}


/* =========================================================
   TESTIMONIALS
========================================================= */

.testimonials{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:20px;
}

.testimonial{
    background:white;

    border:1px solid var(--border);
    border-radius:20px;

    padding:25px;

    transition:var(--transition);
}

.testimonial:hover{
    transform:translateY(-5px);
    box-shadow:var(--shadow);
}

.stars{
    color:var(--orange);
    margin-bottom:14px;
}

.testimonial p{
    color:#555d6d;
    font-size:14px;

    margin-bottom:22px;
}

.customer{
    display:flex;
    align-items:center;
    gap:12px;
}

.customer img{
    width:45px;
    height:45px;

    border-radius:50%;
    object-fit:cover;
}

.customer strong{
    font-size:13px;
}

.customer span{
    display:block;
    color:var(--muted);
    font-size:11px;
}


/* =========================================================
   NEWSLETTER
========================================================= */

.newsletter{
    background:
        radial-gradient(circle at top right,#8d82ff,transparent 35%),
        #161927;

    color:white;

    border-radius:25px;

    padding:65px 30px;

    text-align:center;
}

.newsletter h2{
    font-family:"Manrope",sans-serif;
    font-size:35px;
}

.newsletter p{
    color:#aeb5c4;
    margin:8px auto 25px;
    max-width:550px;
}

.newsletter-form{
    max-width:520px;

    margin:auto;

    display:flex;
    gap:8px;

    background:white;

    padding:6px;

    border-radius:14px;
}

.newsletter-form input{
    flex:1;

    border:none;
    outline:none;

    padding:0 14px;

    min-width:0;
}


/* =========================================================
   FOOTER
========================================================= */

footer{
    background:#0b0e15;
    color:white;

    margin-top:80px;

    padding:65px 0 25px;
}

.footer-grid{
    display:grid;
    grid-template-columns:2fr repeat(3,1fr);
    gap:50px;
}

.footer-brand p{
    color:#7f8899;

    max-width:330px;

    margin-top:14px;

    font-size:13px;
}

footer h4{
    margin-bottom:15px;
}

footer ul{
    list-style:none;
}

footer li{
    margin-bottom:10px;
}

footer li a{
    color:#7f8899;
    font-size:13px;
}

footer li a:hover{
    color:white;
}

.footer-bottom{
    border-top:1px solid #1e2430;

    margin-top:50px;
    padding-top:20px;

    text-align:center;

    color:#626b7b;

    font-size:11px;
}


/* =========================================================
   CART DRAWER
========================================================= */

.cart-overlay{
    position:fixed;
    inset:0;

    background:rgba(5,7,12,.6);

    z-index:2000;

    opacity:0;
    pointer-events:none;

    transition:.3s ease;
}

.cart-overlay.show{
    opacity:1;
    pointer-events:auto;
}

.cart{
    position:absolute;

    right:0;
    top:0;

    height:100%;
    width:min(430px,100%);

    background:white;

    transform:translateX(100%);

    transition:.3s ease;

    display:flex;
    flex-direction:column;
}

.cart-overlay.show .cart{
    transform:translateX(0);
}

.cart-header{
    padding:22px;

    display:flex;
    align-items:center;
    justify-content:space-between;

    border-bottom:1px solid var(--border);
}

.close-cart{
    width:36px;
    height:36px;

    border:none;
    border-radius:50%;

    background:#f1f2f5;
}

.cart-items{
    flex:1;
    overflow-y:auto;

    padding:20px;
}

.cart-item{
    display:flex;
    gap:12px;

    padding-bottom:18px;
    margin-bottom:18px;

    border-bottom:1px solid var(--border);
}

.cart-item img{
    width:75px;
    height:75px;

    border-radius:12px;

    object-fit:cover;
}

.cart-item-info{
    flex:1;
}

.cart-item-info h4{
    font-size:13px;
    margin-bottom:5px;
}

.cart-price{
    font-weight:800;
}

.quantity{
    display:flex;
    align-items:center;
    gap:9px;

    margin-top:8px;
}

.quantity button{
    width:26px;
    height:26px;

    border:1px solid var(--border);

    background:white;

    border-radius:7px;
}

.cart-footer{
    padding:20px;

    border-top:1px solid var(--border);
}

.cart-total{
    display:flex;
    justify-content:space-between;

    font-size:18px;
    font-weight:800;

    margin-bottom:15px;
}

.checkout{
    width:100%;
}


/* =========================================================
   TOAST
========================================================= */

.toast{
    position:fixed;

    right:25px;
    bottom:25px;

    background:#111827;
    color:white;

    padding:14px 20px;

    border-radius:12px;

    z-index:3000;

    transform:translateY(100px);
    opacity:0;

    transition:.3s ease;
}

.toast.show{
    transform:translateY(0);
    opacity:1;
}


/* =========================================================
   RESPONSIVE
========================================================= */

@media(max-width:1100px){

    .nav{
        gap:15px;
    }

    .category-grid{
        grid-template-columns:repeat(3,1fr);
    }

    .product-grid{
        grid-template-columns:repeat(3,1fr);
    }
}


@media(max-width:900px){

    .nav{
        display:none;
    }

    .menu-btn{
        display:block;
    }

    .search{
        max-width:280px;
    }

    .stats-grid{
        grid-template-columns:repeat(2,1fr);
    }

    .stat:nth-child(2){
        border-right:none;
    }

    .deal{
        grid-template-columns:1fr;
    }

    .deal-image{
        min-height:300px;
    }

    .testimonials{
        grid-template-columns:1fr;
    }

    .footer-grid{
        grid-template-columns:1fr 1fr;
    }
}


@media(max-width:650px){

    .container{
        width:min(100% - 24px,var(--container));
    }

    .announcement{
        display:none;
    }

    .header-inner{
        min-height:65px;
        gap:9px;
    }

    .logo{
        font-size:21px;
    }

    .search{
        display:none;
    }

    .header-actions .icon-btn:first-child{
        display:none;
    }

    .hero{
        padding-top:15px;
    }

    .hero-card{
        min-height:530px;
        border-radius:22px;
    }

    .hero-content{
        padding:30px 24px;
    }

    .hero h1{
        font-size:44px;
        letter-spacing:-2px;
    }

    .hero p{
        font-size:14px;
    }

    .stats{
        margin-top:-20px;
    }

    .stats-grid{
        grid-template-columns:1fr;
    }

    .stat{
        border-right:none;
        border-bottom:1px solid var(--border);
    }

    .stat:last-child{
        border-bottom:none;
    }

    .section{
        padding:55px 0;
    }

    .section-head{
        flex-direction:column;
        align-items:flex-start;
    }

    .section-head h2{
        font-size:27px;
    }

    .category-grid{
        grid-template-columns:repeat(2,1fr);
        gap:10px;
    }

    .product-grid{
        grid-template-columns:1fr 1fr;
        gap:10px;
    }

    .product-image{
        height:185px;
    }

    .product-info{
        padding:12px;
    }

    .product-title{
        font-size:12px;
    }

    .price{
        font-size:15px;
    }

    .add-cart{
        width:36px;
        height:36px;
    }

    .deal-content{
        padding:35px 23px;
    }

    .deal h2{
        font-size:32px;
    }

    .timer{
        gap:5px;
    }

    .timer-box{
        min-width:55px;
    }

    .newsletter{
        padding:45px 20px;
    }

    .newsletter h2{
        font-size:27px;
    }

    .newsletter-form{
        flex-direction:column;
        background:none;
        padding:0;
    }

    .newsletter-form input{
        height:48px;
        border-radius:10px;
    }

    .newsletter-form button{
        width:100%;
    }

    .footer-grid{
        grid-template-columns:1fr 1fr;
        gap:30px;
    }
}


@media(max-width:400px){

    .product-grid{
        grid-template-columns:1fr;
    }

    .hero h1{
        font-size:38px;
    }
}

</style>
</head>


<body>


<!-- =========================================================
     ANNOUNCEMENT
========================================================= -->

<div class="announcement">

    <div class="container announcement-inner">

        <i class="fas fa-bolt"></i>

        <span>
            <strong>Weekend Sale:</strong>
            Up to 40% off selected products
        </span>

    </div>

</div>


<!-- =========================================================
     HEADER
========================================================= -->

<header>

<div class="container header-inner">

    <button class="menu-btn" id="mobileMenuBtn">
        <i class="fas fa-bars"></i>
    </button>


    <a href="#" class="logo">
        Nexus<span>Shop</span>
    </a>


    <nav class="nav">

        <a href="#home" class="active">Home</a>
        <a href="#categories">Categories</a>
        <a href="#products">Shop</a>
        <a href="#deals">Deals</a>
        <a href="#reviews">Reviews</a>

    </nav>


    <div class="search">

        <input
            type="search"
            id="searchInput"
            placeholder="Search products...">

        <button id="searchBtn">
            <i class="fas fa-search"></i>
        </button>

    </div>


    <div class="header-actions">

        <button class="icon-btn">

            <i class="far fa-heart"></i>

            <span
                class="count"
                id="wishlistCount">
                0
            </span>

        </button>


        <button
            class="icon-btn"
            id="cartBtn">

            <i class="fas fa-bag-shopping"></i>

            <span
                class="count"
                id="cartCount">
                0
            </span>

        </button>

    </div>

</div>


<div class="mobile-menu" id="mobileMenu">

    <a href="#home">Home</a>
    <a href="#categories">Categories</a>
    <a href="#products">Shop</a>
    <a href="#deals">Deals</a>
    <a href="#reviews">Reviews</a>

</div>

</header>


<!-- =========================================================
     MAIN
========================================================= -->

<main>


<!-- HERO -->

<section class="hero" id="home">

<div class="container">

<div class="hero-card">

<div class="hero-content">

    <div class="hero-tag">

        <i class="fas fa-sparkles"></i>

        New Season Collection

    </div>


    <h1>

        Shop smarter.
        <span>Live better.</span>

    </h1>


    <p>

        Discover premium technology, fashion and lifestyle
        products curated for modern living.

    </p>


    <div class="hero-buttons">

        <button
            class="btn btn-primary"
            id="shopNow">

            Explore Collection

            <i class="fas fa-arrow-right"></i>

        </button>


        <button
            class="btn btn-light"
            id="heroDeals">

            Today's Deals

        </button>

    </div>

</div>

</div>

</div>

</section>


<!-- STATS -->

<section class="stats">

<div class="container">

<div class="stats-grid">

    <div class="stat">

        <div class="stat-icon">
            <i class="fas fa-truck-fast"></i>
        </div>

        <div>
            <h4>Free Delivery</h4>
            <p>Orders over $100</p>
        </div>

    </div>


    <div class="stat">

        <div class="stat-icon">
            <i class="fas fa-shield-halved"></i>
        </div>

        <div>
            <h4>Secure Checkout</h4>
            <p>100% protected</p>
        </div>

    </div>


    <div class="stat">

        <div class="stat-icon">
            <i class="fas fa-rotate-left"></i>
        </div>

        <div>
            <h4>Easy Returns</h4>
            <p>30-day guarantee</p>
        </div>

    </div>


    <div class="stat">

        <div class="stat-icon">
            <i class="fas fa-headset"></i>
        </div>

        <div>
            <h4>24/7 Support</h4>
            <p>Always here for you</p>
        </div>

    </div>

</div>

</div>

</section>


<!-- CATEGORIES -->

<section
    class="section"
    id="categories">

<div class="container">

<div class="section-head">

<div>

    <h2>Explore Categories</h2>

    <p>
        Everything you need, organized for you.
    </p>

</div>

<a
    href="#products"
    class="view-all">

    View all →

</a>

</div>


<div
    class="category-grid"
    id="categoryGrid">
</div>

</div>

</section>


<!-- PRODUCTS -->

<section
    class="section"
    id="products">

<div class="container">

<div class="section-head">

<div>

    <h2>Trending Now</h2>

    <p>
        Popular products customers are loving.
    </p>

</div>

<a
    href="#products"
    class="view-all"
    id="showAll">

    View all →

</a>

</div>


<div
    class="product-grid"
    id="productGrid">
</div>

</div>

</section>


<!-- DEAL -->

<section
    class="section"
    id="deals">

<div class="container">

<div class="deal">

<div class="deal-image"></div>


<div class="deal-content">

    <div class="deal-label">
        Flash Deal
    </div>


    <h2>
        Upgrade your workspace.
    </h2>


    <p>
        Get the MacBook Pro at an exclusive price
        before this limited-time offer ends.
    </p>


    <div class="timer">

        <div class="timer-box">
            <strong id="days">00</strong>
            <span>Days</span>
        </div>

        <div class="timer-box">
            <strong id="hours">00</strong>
            <span>Hours</span>
        </div>

        <div class="timer-box">
            <strong id="minutes">00</strong>
            <span>Minutes</span>
        </div>

        <div class="timer-box">
            <strong id="seconds">00</strong>
            <span>Seconds</span>
        </div>

    </div>


    <div class="deal-price">

        <strong>$999</strong>

        <del>$1,199</del>

    </div>


    <button
        class="btn btn-primary"
        id="buyDeal">

        Grab the Deal

        <i class="fas fa-arrow-right"></i>

    </button>

</div>

</div>

</div>

</section>


<!-- REVIEWS -->

<section
    class="section"
    id="reviews">

<div class="container">

<div class="section-head">

<div>

    <h2>Loved by Customers</h2>

    <p>
        Real experiences from our community.
    </p>

</div>

</div>


<div class="testimonials">

    <div class="testimonial">

        <div class="stars">
            ★★★★★
        </div>

        <p>
            "The shopping experience was fantastic.
            Delivery was fast and the product quality
            was even better than expected."
        </p>

        <div class="customer">

            <img src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80">

            <div>
                <strong>Sarah Johnson</strong>
                <span>Verified Customer</span>
            </div>

        </div>

    </div>


    <div class="testimonial">

        <div class="stars">
            ★★★★★
        </div>

        <p>
            "Excellent website and very easy checkout.
            I found exactly what I needed within minutes."
        </p>

        <div class="customer">

            <img src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80">

            <div>
                <strong>David Miller</strong>
                <span>Verified Customer</span>
            </div>

        </div>

    </div>


    <div class="testimonial">

        <div class="stars">
            ★★★★☆
        </div>

        <p>
            "Great selection of products and excellent
            customer support. I'll definitely shop here again."
        </p>

        <div class="customer">

            <img src="https://images.unsplash.com/photo-1531123897727-8f129e1688ce?auto=format&fit=crop&w=100&q=80">

            <div>
                <strong>Emily Wilson</strong>
                <span>Verified Customer</span>
            </div>

        </div>

    </div>

</div>

</div>

</section>


<!-- NEWSLETTER -->

<section class="section">

<div class="container">

<div class="newsletter">

    <h2>Stay ahead of the trends.</h2>

    <p>
        Get exclusive deals, new arrivals and special offers
        directly in your inbox.
    </p>


    <form
        class="newsletter-form"
        id="newsletterForm">

        <input
            type="email"
            id="email"
            placeholder="Enter your email"
            required>

        <button class="btn btn-primary">
            Subscribe
        </button>

    </form>

</div>

</div>

</section>

</main>


<!-- =========================================================
     FOOTER
========================================================= -->

<footer>

<div class="container">

<div class="footer-grid">

<div class="footer-brand">

    <div class="logo">
        Nexus<span>Shop</span>
    </div>

    <p>
        Your destination for premium technology,
        fashion and lifestyle products.
    </p>

</div>


<div>

    <h4>Shop</h4>

    <ul>

        <li><a href="#">New Arrivals</a></li>
        <li><a href="#">Best Sellers</a></li>
        <li><a href="#">Deals</a></li>
        <li><a href="#">Categories</a></li>

    </ul>

</div>


<div>

    <h4>Company</h4>

    <ul>

        <li><a href="#">About Us</a></li>
        <li><a href="#">Careers</a></li>
        <li><a href="#">Contact</a></li>
        <li><a href="#">Privacy</a></li>

    </ul>

</div>


<div>

    <h4>Support</h4>

    <ul>

        <li><a href="#">Help Center</a></li>
        <li><a href="#">Shipping</a></li>
        <li><a href="#">Returns</a></li>
        <li><a href="#">Track Order</a></li>

    </ul>

</div>

</div>


<div class="footer-bottom">

    © <span id="year"></span>
    NexusShop. All rights reserved.

</div>

</div>

</footer>


<!-- =========================================================
     CART
========================================================= -->

<div
    class="cart-overlay"
    id="cartOverlay">

<div class="cart">

    <div class="cart-header">

        <h3>
            Your Cart
        </h3>

        <button
            class="close-cart"
            id="closeCart">

            <i class="fas fa-xmark"></i>

        </button>

    </div>


    <div
        class="cart-items"
        id="cartItems">

        <p style="
            text-align:center;
            color:#737b8c;
            padding:40px 0;
        ">

            Your cart is empty.

        </p>

    </div>


    <div class="cart-footer">

        <div class="cart-total">

            <span>Total</span>

            <span id="cartTotal">
                $0
            </span>

        </div>


        <button
            class="btn btn-primary checkout"
            id="checkoutBtn">

            Proceed to Checkout

        </button>

    </div>

</div>

</div>


<!-- TOAST -->

<div
    class="toast"
    id="toast">

    Product added to cart ✓

</div>


<script>

/* =========================================================
   PRODUCTS
========================================================= */

const products = [

{
    id:1,
    name:"iPhone 14 Pro Max",
    category:"Smartphones",
    price:1099,
    oldPrice:1199,
    rating:5,
    reviews:128,
    badge:"New",
    image:"https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?auto=format&fit=crop&w=700&q=85"
},

{
    id:2,
    name:'MacBook Pro 14"',
    category:"Laptops",
    price:1999,
    oldPrice:null,
    rating:5,
    reviews:86,
    badge:"Popular",
    image:"https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=85"
},

{
    id:3,
    name:"Apple Watch Series 8",
    category:"Accessories",
    price:349,
    oldPrice:399,
    rating:5,
    reviews:214,
    badge:"-25%",
    image:"https://images.unsplash.com/photo-1544117519-31a4b719223d?auto=format&fit=crop&w=700&q=85"
},

{
    id:4,
    name:"Nike Air Max",
    category:"Footwear",
    price:150,
    oldPrice:180,
    rating:4,
    reviews:53,
    badge:"Sale",
    image:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
},

{
    id:5,
    name:"Sony A7 IV Camera",
    category:"Cameras",
    price:2499,
    oldPrice:null,
    rating:5,
    reviews:42,
    badge:"Pro",
    image:"https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85"
},

{
    id:6,
    name:"Premium Fragrance",
    category:"Beauty",
    price:120,
    oldPrice:150,
    rating:5,
    reviews:189,
    badge:"Sale",
    image:"https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=700&q=85"
},

{
    id:7,
    name:"Travel Backpack",
    category:"Accessories",
    price:79,
    oldPrice:99,
    rating:4,
    reviews:67,
    badge:"Sale",
    image:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
},

{
    id:8,
    name:"Wireless Headphones",
    category:"Audio",
    price:399,
    oldPrice:null,
    rating:5,
    reviews:156,
    badge:"Best Seller",
    image:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"
}

];


/* =========================================================
   CATEGORIES
========================================================= */

const categories = [

["Smartphones","fa-mobile-screen-button"],
["Laptops","fa-laptop"],
["Fashion","fa-shirt"],
["Audio","fa-headphones"],
["Footwear","fa-shoe-prints"],
["Accessories","fa-bag-shopping"]

];


const categoryGrid =
document.getElementById("categoryGrid");


categories.forEach(category=>{

    const card =
    document.createElement("div");

    card.className="category";

    card.innerHTML=`

        <div class="category-icon">
            <i class="fas ${category[1]}"></i>
        </div>

        <h4>${category[0]}</h4>

        <p>Explore collection</p>

    `;

    card.addEventListener("click",()=>{

        searchInput.value=category[0];

        filterProducts(category[0]);

        document
        .getElementById("products")
        .scrollIntoView({
            behavior:"smooth"
        });

    });

    categoryGrid.appendChild(card);

});


/* =========================================================
   PRODUCT RENDER
========================================================= */

const productGrid =
document.getElementById("productGrid");


function renderProducts(list){

    productGrid.innerHTML="";


    if(!list.length){

        productGrid.innerHTML=`

        <div style="
            grid-column:1/-1;
            text-align:center;
            padding:60px;
            color:#737b8c;
        ">

            <i
                class="fas fa-box-open"
                style="
                    font-size:40px;
                    margin-bottom:15px;
                ">
            </i>

            <h3>No products found</h3>

            <p>Try another search.</p>

        </div>

        `;

        return;
    }


    list.forEach(product=>{

        const card =
        document.createElement("article");

        card.className="product";


        const badgeClass =
        product.badge.includes("%") ||
        product.badge==="Sale"
        ? "sale"
        : "";


        card.innerHTML=`

        <div class="product-image">

            <span class="badge ${badgeClass}">
                ${product.badge}
            </span>


            <button
                class="wishlist"
                data-id="${product.id}">

                <i class="far fa-heart"></i>

            </button>


            <img
                src="${product.image}"
                alt="${product.name}"
                loading="lazy">

        </div>


        <div class="product-info">

            <div class="product-category">
                ${product.category}
            </div>


            <h3 class="product-title">
                ${product.name}
            </h3>


            <div class="rating">

                ${"★".repeat(product.rating)}

                <span>
                    (${product.reviews})
                </span>

            </div>


            <div class="product-bottom">

                <div>

                    <span class="price">
                        $${product.price.toLocaleString()}
                    </span>

                    ${
                        product.oldPrice
                        ?
                        `
                        <span class="old-price">
                            $${product.oldPrice.toLocaleString()}
                        </span>
                        `
                        :""
                    }

                </div>


                <button
                    class="add-cart"
                    data-id="${product.id}">

                    <i class="fas fa-plus"></i>

                </button>

            </div>

        </div>

        `;

        productGrid.appendChild(card);

    });


    attachProductEvents();

}


/* =========================================================
   PRODUCT EVENTS
========================================================= */

function attachProductEvents(){

    document
    .querySelectorAll(".add-cart")
    .forEach(button=>{

        button.addEventListener("click",()=>{

            addToCart(
                Number(button.dataset.id)
            );

        });

    });


    document
    .querySelectorAll(".wishlist")
    .forEach(button=>{

        button.addEventListener("click",()=>{

            button.classList.toggle("active");

            const icon =
            button.querySelector("i");

            icon.classList.toggle("far");
            icon.classList.toggle("fas");

            updateWishlistCount();

        });

    });

}


/* =========================================================
   SEARCH
========================================================= */

const searchInput =
document.getElementById("searchInput");


function filterProducts(query){

    const q =
    query.trim().toLowerCase();


    if(!q){

        renderProducts(products);
        return;

    }


    const result =
    products.filter(product=>

        product.name
        .toLowerCase()
        .includes(q)

        ||

        product.category
        .toLowerCase()
        .includes(q)

    );


    renderProducts(result);

}


document
.getElementById("searchBtn")
.addEventListener("click",()=>{

    filterProducts(searchInput.value);

});


searchInput
.addEventListener("keydown",event=>{

    if(event.key==="Enter"){

        filterProducts(event.target.value);

    }

});


/* =========================================================
   CART
========================================================= */

let cart=[];


function addToCart(productId){

    const product =
    products.find(
        p=>p.id===productId
    );


    const existing =
    cart.find(
        item=>item.id===productId
    );


    if(existing){

        existing.quantity++;

    }else{

        cart.push({
            ...product,
            quantity:1
        });

    }


    updateCart();


    showToast(
        `${product.name} added to cart`
    );

}


function updateCart(){

    const count =
    cart.reduce(
        (sum,item)=>
        sum+item.quantity,
        0
    );


    document
    .getElementById("cartCount")
    .textContent=count;


    const cartItems =
    document.getElementById("cartItems");


    if(!cart.length){

        cartItems.innerHTML=`

        <p style="
            text-align:center;
            color:#737b8c;
            padding:40px 0;
        ">
            Your cart is empty.
        </p>

        `;

        document
        .getElementById("cartTotal")
        .textContent="$0";

        return;

    }


    cartItems.innerHTML="";


    let total=0;


    cart.forEach(item=>{

        total+=
        item.price*item.quantity;


        const element =
        document.createElement("div");

        element.className="cart-item";


        element.innerHTML=`

        <img
            src="${item.image}"
            alt="${item.name}">


        <div class="cart-item-info">

            <h4>
                ${item.name}
            </h4>


            <div class="cart-price">
                $${item.price.toLocaleString()}
            </div>


            <div class="quantity">

                <button
                    onclick="changeQuantity(${item.id},-1)">
                    −
                </button>


                <span>
                    ${item.quantity}
                </span>


                <button
                    onclick="changeQuantity(${item.id},1)">
                    +
                </button>


                <button
                    onclick="removeFromCart(${item.id})"
                    style="
                        margin-left:auto;
                        border:none;
                        background:none;
                        color:#ef4444;
                    ">

                    <i class="fas fa-trash"></i>

                </button>

            </div>

        </div>

        `;


        cartItems.appendChild(element);

    });


    document
    .getElementById("cartTotal")
    .textContent=
    "$"+total.toLocaleString();

}


function changeQuantity(id,change){

    const item =
    cart.find(
        item=>item.id===id
    );


    if(!item) return;


    item.quantity+=change;


    if(item.quantity<=0){

        removeFromCart(id);

        return;

    }


    updateCart();

}


function removeFromCart(id){

    cart=
    cart.filter(
        item=>item.id!==id
    );

    updateCart();

}


/* =========================================================
   CART DRAWER
========================================================= */

const cartOverlay =
document.getElementById("cartOverlay");


document
.getElementById("cartBtn")
.addEventListener("click",()=>{

    cartOverlay.classList.add("show");

});


document
.getElementById("closeCart")
.addEventListener("click",()=>{

    cartOverlay.classList.remove("show");

});


cartOverlay.addEventListener("click",event=>{

    if(event.target===cartOverlay){

        cartOverlay.classList.remove("show");

    }

});


/* =========================================================
   WISHLIST
========================================================= */

function updateWishlistCount(){

    const count =
    document.querySelectorAll(
        ".wishlist.active"
    ).length;


    document
    .getElementById("wishlistCount")
    .textContent=count;

}


/* =========================================================
   MOBILE MENU
========================================================= */

const mobileMenu =
document.getElementById("mobileMenu");


document
.getElementById("mobileMenuBtn")
.addEventListener("click",()=>{

    mobileMenu.style.display =
    mobileMenu.style.display==="block"
    ? "none"
    : "block";

});


/* =========================================================
   HERO BUTTONS
========================================================= */

document
.getElementById("shopNow")
.addEventListener("click",()=>{

    document
    .getElementById("products")
    .scrollIntoView({
        behavior:"smooth"
    });

});


document
.getElementById("heroDeals")
.addEventListener("click",()=>{

    document
    .getElementById("deals")
    .scrollIntoView({
        behavior:"smooth"
    });

});


/* =========================================================
   FLASH TIMER
========================================================= */

const targetDate =
new Date(
    Date.now()+24*60*60*1000
);


function updateTimer(){

    const difference =
    targetDate-new Date();


    if(difference<=0) return;


    const days =
    Math.floor(
        difference/
        (1000*60*60*24)
    );


    const hours =
    Math.floor(
        difference/
        (1000*60*60)%24
    );


    const minutes =
    Math.floor(
        difference/
        (1000*60)%60
    );


    const seconds =
    Math.floor(
        difference/1000%60
    );


    document.getElementById("days")
    .textContent=
    String(days).padStart(2,"0");


    document.getElementById("hours")
    .textContent=
    String(hours).padStart(2,"0");


    document.getElementById("minutes")
    .textContent=
    String(minutes).padStart(2,"0");


    document.getElementById("seconds")
    .textContent=
    String(seconds).padStart(2,"0");

}


setInterval(updateTimer,1000);

updateTimer();


/* =========================================================
   DEAL
========================================================= */

document
.getElementById("buyDeal")
.addEventListener("click",()=>{

    addToCart(2);

    cartOverlay.classList.add("show");

});


/* =========================================================
   NEWSLETTER
========================================================= */

document
.getElementById("newsletterForm")
.addEventListener("submit",event=>{

    event.preventDefault();


    const email =
    document.getElementById("email").value;


    showToast(
        `Thanks! ${email} is subscribed.`
    );


    event.target.reset();

});


/* =========================================================
   CHECKOUT
========================================================= */

document
.getElementById("checkoutBtn")
.addEventListener("click",()=>{

    if(!cart.length){

        showToast(
            "Your cart is empty"
        );

        return;

    }


    showToast(
        "Checkout is ready to integrate!"
    );

});


/* =========================================================
   TOAST
========================================================= */

let toastTimer;


function showToast(message){

    const toast =
    document.getElementById("toast");


    toast.textContent=message;

    toast.classList.add("show");


    clearTimeout(toastTimer);


    toastTimer =
    setTimeout(()=>{

        toast.classList.remove("show");

    },2500);

}


/* =========================================================
   INITIALIZE
========================================================= */

renderProducts(products);

updateCart();


document
.getElementById("year")
.textContent=
new Date().getFullYear();

</script>

</body>
</html>
```
