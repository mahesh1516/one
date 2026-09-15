<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NOVARA — Premium Marketplace</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Plus+Jakarta+Sans:wght@600;700;800&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

/* =========================================================
   VARIABLES
========================================================= */

:root{
    --primary:#6c4df6;
    --primary-dark:#5437d8;
    --orange:#ff7a45;
    --green:#20b26b;

    --bg:#f7f7fb;
    --white:#ffffff;
    --surface:#ffffff;
    --surface2:#f1f1f7;

    --text:#181825;
    --muted:#777789;

    --border:#e7e7ef;

    --radius:22px;
    --shadow:0 18px 55px rgba(31,31,55,.09);

    --container:1320px;
    --transition:.3s ease;
}

body.dark{
    --bg:#0d0d14;
    --white:#15151f;
    --surface:#171721;
    --surface2:#20202b;

    --text:#f7f7fb;
    --muted:#9696a8;

    --border:#292936;

    --shadow:0 18px 55px rgba(0,0,0,.3);
}


/* =========================================================
   RESET
========================================================= */

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

html{
    scroll-behavior:smooth;
}

body{
    font-family:"DM Sans",sans-serif;
    background:var(--bg);
    color:var(--text);
    line-height:1.6;
    transition:background .3s,color .3s;
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
    display:block;
}

.container{
    width:min(
        calc(100% - 40px),
        var(--container)
    );
    margin:auto;
}

.section{
    padding:90px 0;
}


/* =========================================================
   TOP BAR
========================================================= */

.topbar{
    background:#17131f;
    color:#fff;
    height:38px;

    display:flex;
    align-items:center;
    justify-content:center;

    font-size:12px;
}

.topbar span{
    color:#d9d0ff;
}

.topbar strong{
    color:#fff;
}

.topbar i{
    color:#ffb84d;
    margin-right:7px;
}


/* =========================================================
   HEADER
========================================================= */

header{
    position:sticky;
    top:0;
    z-index:1000;

    background:rgba(255,255,255,.9);
    backdrop-filter:blur(18px);

    border-bottom:1px solid var(--border);
}

body.dark header{
    background:rgba(13,13,20,.9);
}

.header{
    min-height:78px;

    display:flex;
    align-items:center;
    gap:30px;
}


/* LOGO */

.logo{
    display:flex;
    align-items:center;
    gap:10px;

    font-family:"Plus Jakarta Sans",sans-serif;
    font-size:22px;
    font-weight:800;

    white-space:nowrap;
}

.logo-icon{
    width:38px;
    height:38px;

    display:grid;
    place-items:center;

    border-radius:12px;

    background:
        linear-gradient(
            135deg,
            var(--primary),
            #a78bfa
        );

    color:#fff;

    box-shadow:
        0 9px 25px rgba(108,77,246,.25);
}

.logo span{
    color:var(--primary);
}


/* NAV */

.nav{
    display:flex;
    gap:27px;
}

.nav a{
    color:var(--muted);

    font-size:13px;
    font-weight:700;

    transition:var(--transition);
}

.nav a:hover,
.nav a.active{
    color:var(--primary);
}


/* SEARCH */

.search-box{
    margin-left:auto;

    width:285px;

    position:relative;
}

.search-box input{
    width:100%;
    height:43px;

    border:1px solid var(--border);
    border-radius:12px;

    background:var(--surface);

    color:var(--text);

    padding:0 45px 0 15px;

    outline:none;
}

.search-box input:focus{
    border-color:var(--primary);

    box-shadow:
        0 0 0 4px rgba(108,77,246,.08);
}

.search-box button{
    position:absolute;

    right:5px;
    top:5px;

    width:33px;
    height:33px;

    border:0;
    border-radius:9px;

    background:var(--primary);
    color:#fff;
}


/* HEADER BUTTONS */

.header-actions{
    display:flex;
    gap:8px;
}

.header-btn{
    width:42px;
    height:42px;

    border:1px solid var(--border);
    border-radius:12px;

    background:var(--surface);

    color:var(--text);

    position:relative;

    transition:var(--transition);
}

.header-btn:hover{
    background:var(--primary);
    color:#fff;

    transform:translateY(-2px);
}

.count{
    position:absolute;

    top:-6px;
    right:-6px;

    width:18px;
    height:18px;

    display:grid;
    place-items:center;

    border-radius:50%;

    background:var(--orange);

    color:#fff;

    font-size:9px;
    font-weight:800;
}

.menu-btn{
    display:none;
}


/* =========================================================
   HERO
========================================================= */

.hero{
    padding:45px 0 30px;
}

.hero-grid{
    display:grid;

    grid-template-columns:
        1.15fr
        .85fr;

    gap:25px;
}


/* HERO CONTENT */

.hero-content{
    min-height:590px;

    padding:65px;

    display:flex;
    justify-content:center;
    flex-direction:column;

    border-radius:30px;

    overflow:hidden;

    position:relative;

    background:
        radial-gradient(
            circle at 85% 15%,
            rgba(108,77,246,.22),
            transparent 35%
        ),
        linear-gradient(
            135deg,
            #f0edff,
            #ffffff 55%
        );

    border:1px solid #e4defe;
}

body.dark .hero-content{
    background:
        radial-gradient(
            circle at 85% 15%,
            rgba(108,77,246,.25),
            transparent 35%
        ),
        #171721;
    border-color:var(--border);
}

.hero-tag{
    width:max-content;

    padding:7px 12px;

    border-radius:50px;

    background:#e9e3ff;
    color:var(--primary);

    font-size:10px;
    font-weight:800;

    letter-spacing:1px;

    text-transform:uppercase;

    margin-bottom:22px;
}

body.dark .hero-tag{
    background:#272238;
}

.hero h1{
    max-width:650px;

    font-family:"Plus Jakarta Sans",sans-serif;

    font-size:
        clamp(45px,5vw,76px);

    line-height:1.02;

    letter-spacing:-4px;

    margin-bottom:22px;
}

.hero h1 span{
    color:var(--primary);
}

.hero-text{
    max-width:530px;

    color:var(--muted);

    font-size:15px;

    line-height:1.8;

    margin-bottom:30px;
}

.hero-buttons{
    display:flex;
    gap:10px;
    flex-wrap:wrap;
}


/* BUTTONS */

.btn{
    border:0;

    min-height:46px;

    padding:0 19px;

    border-radius:12px;

    display:inline-flex;

    align-items:center;
    justify-content:center;

    gap:9px;

    font-size:12px;
    font-weight:800;

    transition:var(--transition);
}

.btn-primary{
    background:var(--primary);
    color:#fff;

    box-shadow:
        0 12px 28px rgba(108,77,246,.22);
}

.btn-primary:hover{
    background:var(--primary-dark);

    transform:translateY(-3px);
}

.btn-light{
    background:var(--white);
    color:var(--text);

    border:1px solid var(--border);
}

.btn-light:hover{
    border-color:var(--primary);
    color:var(--primary);
}


/* HERO STATS */

.hero-stats{
    display:flex;

    gap:35px;

    margin-top:45px;

    padding-top:25px;

    border-top:1px solid var(--border);
}

.stat strong{
    display:block;

    font-family:"Plus Jakarta Sans",sans-serif;

    font-size:21px;
}

.stat span{
    color:var(--muted);

    font-size:10px;
}


/* HERO IMAGE */

.hero-visual{
    min-height:590px;

    position:relative;

    overflow:hidden;

    border-radius:30px;

    background:
        linear-gradient(
            145deg,
            #26203e,
            #100d18
        );
}

.hero-visual::before{
    content:"";

    position:absolute;

    width:330px;
    height:330px;

    border-radius:50%;

    background:
        radial-gradient(
            circle,
            rgba(167,139,250,.6),
            transparent 65%
        );

    top:-80px;
    right:-80px;
}

.hero-visual img{
    width:100%;
    height:100%;

    object-fit:cover;

    opacity:.88;

    transition:.7s ease;
}

.hero-visual:hover img{
    transform:scale(1.04);
}

.hero-product{
    position:absolute;

    left:25px;
    bottom:25px;
    right:25px;

    padding:20px;

    border-radius:20px;

    background:rgba(255,255,255,.13);

    border:1px solid rgba(255,255,255,.2);

    backdrop-filter:blur(15px);

    color:#fff;
}

.hero-product small{
    color:#d6cef5;
    font-size:9px;

    text-transform:uppercase;
    letter-spacing:1px;
}

.hero-product h3{
    font-family:"Plus Jakarta Sans",sans-serif;

    font-size:23px;

    margin:3px 0;
}

.hero-product-row{
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.hero-price{
    font-size:19px;
    font-weight:800;
}

.hero-rating{
    color:#ffc857;
    font-size:11px;
}


/* =========================================================
   FEATURES
========================================================= */

.features{
    margin-top:20px;
}

.feature-grid{
    display:grid;

    grid-template-columns:
        repeat(4,1fr);

    border:1px solid var(--border);

    border-radius:20px;

    overflow:hidden;

    background:var(--surface);

    box-shadow:var(--shadow);
}

.feature{
    padding:23px;

    display:flex;
    align-items:center;

    gap:13px;

    border-right:1px solid var(--border);
}

.feature:last-child{
    border-right:0;
}

.feature-icon{
    min-width:43px;
    height:43px;

    display:grid;
    place-items:center;

    border-radius:12px;

    background:#eeeaff;
    color:var(--primary);
}

body.dark .feature-icon{
    background:#29233b;
}

.feature h4{
    font-size:12px;
}

.feature p{
    color:var(--muted);
    font-size:10px;
}


/* =========================================================
   SECTION HEADER
========================================================= */

.section-heading{
    display:flex;

    align-items:end;
    justify-content:space-between;

    margin-bottom:30px;
}

.eyebrow{
    color:var(--primary);

    text-transform:uppercase;

    letter-spacing:2px;

    font-size:9px;
    font-weight:800;

    margin-bottom:6px;
}

.section-heading h2{
    font-family:"Plus Jakarta Sans",sans-serif;

    font-size:34px;

    letter-spacing:-1.5px;
}

.section-heading p{
    color:var(--muted);

    font-size:12px;

    margin-top:4px;
}

.view-link{
    color:var(--primary);

    font-size:12px;
    font-weight:800;
}


/* =========================================================
   CATEGORIES
========================================================= */

.category-grid{
    display:grid;

    grid-template-columns:
        repeat(6,1fr);

    gap:13px;
}

.category{
    padding:25px 10px;

    min-height:145px;

    display:flex;
    flex-direction:column;

    align-items:center;
    justify-content:center;

    text-align:center;

    background:var(--surface);

    border:1px solid var(--border);

    border-radius:19px;

    transition:var(--transition);

    cursor:pointer;
}

.category:hover{
    transform:translateY(-6px);

    border-color:#cfc5ff;

    box-shadow:var(--shadow);
}

.category-icon{
    width:55px;
    height:55px;

    display:grid;
    place-items:center;

    border-radius:16px;

    background:#f0edff;
    color:var(--primary);

    font-size:19px;

    margin-bottom:12px;

    transition:var(--transition);
}

body.dark .category-icon{
    background:#29233b;
}

.category:hover .category-icon{
    background:var(--primary);
    color:#fff;

    transform:scale(1.08);
}

.category h4{
    font-size:12px;
}

.category p{
    color:var(--muted);

    font-size:9px;
}


/* =========================================================
   PRODUCTS
========================================================= */

.product-toolbar{
    display:flex;

    align-items:center;
    justify-content:space-between;

    gap:15px;

    margin-bottom:25px;
}

.filters{
    display:flex;

    gap:8px;

    flex-wrap:wrap;
}

.filter{
    border:1px solid var(--border);

    background:var(--surface);

    color:var(--muted);

    padding:9px 14px;

    border-radius:50px;

    font-size:10px;
    font-weight:800;

    transition:var(--transition);
}

.filter:hover,
.filter.active{
    background:var(--primary);
    border-color:var(--primary);

    color:#fff;
}

.product-grid{
    display:grid;

    grid-template-columns:
        repeat(4,1fr);

    gap:17px;
}

.product{
    background:var(--surface);

    border:1px solid var(--border);

    border-radius:21px;

    overflow:hidden;

    transition:var(--transition);

    position:relative;
}

.product:hover{
    transform:translateY(-7px);

    box-shadow:var(--shadow);
}

.product-image{
    height:265px;

    background:#f0f0f5;

    position:relative;

    overflow:hidden;
}

body.dark .product-image{
    background:#20202b;
}

.product-image img{
    width:100%;
    height:100%;

    object-fit:cover;

    transition:.6s ease;
}

.product:hover .product-image img{
    transform:scale(1.06);
}

.product-badge{
    position:absolute;

    left:12px;
    top:12px;

    padding:6px 9px;

    border-radius:7px;

    background:var(--text);

    color:var(--white);

    font-size:8px;
    font-weight:800;

    z-index:3;
}

.product-badge.sale{
    background:var(--orange);
    color:#fff;
}

.wishlist{
    position:absolute;

    top:11px;
    right:11px;

    width:37px;
    height:37px;

    border:1px solid rgba(0,0,0,.08);

    border-radius:50%;

    background:rgba(255,255,255,.9);

    color:#555;

    z-index:5;

    transition:var(--transition);
}

.wishlist:hover{
    color:var(--orange);
    transform:scale(1.08);
}

.wishlist.active{
    color:#ef476f;
}

.product-info{
    padding:17px;
}

.product-category{
    color:var(--primary);

    font-size:8px;

    font-weight:800;

    letter-spacing:1px;

    text-transform:uppercase;
}

.product-title{
    font-size:14px;

    margin:5px 0;

    white-space:nowrap;

    overflow:hidden;

    text-overflow:ellipsis;
}

.rating{
    color:#ffb72e;

    font-size:10px;
}

.rating span{
    color:var(--muted);
}

.product-bottom{
    display:flex;

    justify-content:space-between;

    align-items:center;

    margin-top:16px;
}

.price{
    font-family:"Plus Jakarta Sans",sans-serif;

    font-size:18px;
    font-weight:800;
}

.old-price{
    color:#aaaaba;

    font-size:9px;

    margin-left:5px;

    text-decoration:line-through;
}

.add-cart{
    width:39px;
    height:39px;

    border:0;

    border-radius:11px;

    background:var(--primary);

    color:#fff;

    transition:var(--transition);
}

.add-cart:hover{
    background:var(--primary-dark);

    transform:scale(1.08);
}


/* =========================================================
   PROMO
========================================================= */

.promo{
    display:grid;

    grid-template-columns:
        .85fr
        1.15fr;

    min-height:440px;

    overflow:hidden;

    border-radius:28px;

    background:
        linear-gradient(
            135deg,
            #1e1632,
            #100d18
        );

    color:#fff;
}

.promo-image{
    min-height:440px;

    background:
        linear-gradient(
            90deg,
            rgba(16,13,24,.05),
            rgba(16,13,24,.3)
        ),
        url("https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=90")
        center/cover;
}

.promo-content{
    padding:60px;

    display:flex;
    justify-content:center;

    flex-direction:column;
}

.promo-label{
    color:#bcaeff;

    text-transform:uppercase;

    letter-spacing:2px;

    font-size:9px;
    font-weight:800;

    margin-bottom:10px;
}

.promo h2{
    max-width:500px;

    font-family:"Plus Jakarta Sans",sans-serif;

    font-size:43px;

    line-height:1.08;

    letter-spacing:-2px;

    margin-bottom:15px;
}

.promo p{
    max-width:470px;

    color:#aaa5ba;

    font-size:13px;

    margin-bottom:23px;
}

.timer{
    display:flex;

    gap:8px;

    margin-bottom:23px;
}

.timer-box{
    width:60px;

    padding:9px;

    text-align:center;

    border:1px solid rgba(255,255,255,.12);

    background:rgba(255,255,255,.06);

    border-radius:10px;
}

.timer-box strong{
    display:block;

    font-family:"Plus Jakarta Sans",sans-serif;

    font-size:18px;
}

.timer-box span{
    color:#8f899e;

    font-size:7px;

    text-transform:uppercase;
}

.promo-price{
    margin-bottom:20px;
}

.promo-price strong{
    font-family:"Plus Jakarta Sans",sans-serif;

    font-size:28px;
}

.promo-price del{
    color:#797285;

    margin-left:7px;
}


/* =========================================================
   REVIEWS
========================================================= */

.review-grid{
    display:grid;

    grid-template-columns:
        repeat(3,1fr);

    gap:17px;
}

.review{
    padding:27px;

    background:var(--surface);

    border:1px solid var(--border);

    border-radius:21px;

    transition:var(--transition);
}

.review:hover{
    transform:translateY(-5px);

    box-shadow:var(--shadow);
}

.stars{
    color:#ffb72e;

    font-size:11px;

    letter-spacing:2px;

    margin-bottom:14px;
}

.review p{
    color:var(--muted);

    font-size:12px;

    line-height:1.8;

    margin-bottom:23px;
}

.customer{
    display:flex;

    align-items:center;

    gap:10px;
}

.customer img{
    width:43px;
    height:43px;

    border-radius:50%;

    object-fit:cover;
}

.customer strong{
    font-size:11px;
}

.customer span{
    display:block;

    color:var(--muted);

    font-size:9px;
}


/* =========================================================
   NEWSLETTER
========================================================= */

.newsletter{
    padding:65px 25px;

    text-align:center;

    border-radius:27px;

    background:
        linear-gradient(
            135deg,
            #eeeaff,
            #fff
        );

    border:1px solid #ded6ff;
}

body.dark .newsletter{
    background:#171721;
    border-color:var(--border);
}

.newsletter h2{
    font-family:"Plus Jakarta Sans",sans-serif;

    font-size:35px;

    letter-spacing:-1.5px;
}

.newsletter p{
    max-width:500px;

    margin:8px auto 23px;

    color:var(--muted);

    font-size:12px;
}

.newsletter-form{
    max-width:500px;

    margin:auto;

    display:flex;

    gap:7px;

    padding:5px;

    border:1px solid var(--border);

    border-radius:13px;

    background:var(--white);
}

.newsletter-form input{
    flex:1;

    min-width:0;

    border:0;
    outline:0;

    background:transparent;

    color:var(--text);

    padding:0 12px;
}


/* =========================================================
   FOOTER
========================================================= */

footer{
    margin-top:20px;

    padding:65px 0 25px;

    background:#15121c;

    color:#fff;
}

.footer-grid{
    display:grid;

    grid-template-columns:
        2fr
        repeat(3,1fr);

    gap:45px;
}

.footer-brand p{
    max-width:310px;

    color:#9993a4;

    font-size:11px;

    margin-top:13px;
}

footer h4{
    font-size:12px;

    margin-bottom:16px;
}

footer ul{
    list-style:none;
}

footer li{
    margin-bottom:9px;
}

footer li a{
    color:#898391;

    font-size:10px;

    transition:var(--transition);
}

footer li a:hover{
    color:#fff;
}

.socials{
    display:flex;

    gap:8px;

    margin-top:18px;
}

.social{
    width:35px;
    height:35px;

    display:grid;
    place-items:center;

    border:1px solid #35313d;

    border-radius:10px;

    color:#aaa4b3;

    transition:var(--transition);
}

.social:hover{
    background:var(--primary);

    color:#fff;

    border-color:var(--primary);
}

.footer-bottom{
    margin-top:45px;

    padding-top:20px;

    border-top:1px solid #2c2834;

    text-align:center;

    color:#66616e;

    font-size:9px;
}


/* =========================================================
   CART DRAWER
========================================================= */

.cart-overlay{
    position:fixed;

    inset:0;

    z-index:3000;

    background:rgba(0,0,0,.55);

    backdrop-filter:blur(5px);

    opacity:0;

    pointer-events:none;

    transition:.3s;
}

.cart-overlay.show{
    opacity:1;

    pointer-events:auto;
}

.cart{
    position:absolute;

    top:0;
    right:0;

    width:min(440px,100%);

    height:100%;

    display:flex;

    flex-direction:column;

    background:var(--surface);

    transform:translateX(100%);

    transition:.35s ease;
}

.cart-overlay.show .cart{
    transform:translateX(0);
}

.cart-header{
    padding:20px;

    display:flex;

    align-items:center;
    justify-content:space-between;

    border-bottom:1px solid var(--border);
}

.cart-header h3{
    font-family:"Plus Jakarta Sans",sans-serif;
}

.close-cart{
    width:35px;
    height:35px;

    border:0;

    border-radius:50%;

    background:var(--surface2);

    color:var(--text);
}

.cart-items{
    flex:1;

    overflow-y:auto;

    padding:20px;
}

.empty-cart{
    text-align:center;

    color:var(--muted);

    padding:80px 20px;
}

.empty-cart i{
    font-size:40px;

    color:#aaaabd;

    margin-bottom:15px;
}

.cart-item{
    display:flex;

    gap:12px;

    padding-bottom:17px;

    margin-bottom:17px;

    border-bottom:1px solid var(--border);
}

.cart-item img{
    width:70px;
    height:70px;

    border-radius:11px;

    object-fit:cover;
}

.cart-info{
    flex:1;
}

.cart-info h4{
    font-size:12px;

    margin-bottom:3px;
}

.cart-price{
    font-size:13px;
    font-weight:800;
}

.quantity{
    display:flex;

    align-items:center;

    gap:8px;

    margin-top:7px;
}

.quantity button{
    width:25px;
    height:25px;

    border:1px solid var(--border);

    border-radius:6px;

    background:var(--surface2);

    color:var(--text);
}

.remove{
    margin-left:auto;

    color:#ef476f !important;

    border:0 !important;

    background:transparent !important;
}

.cart-footer{
    padding:20px;

    border-top:1px solid var(--border);
}

.cart-total{
    display:flex;

    justify-content:space-between;

    margin-bottom:15px;

    font-family:"Plus Jakarta Sans",sans-serif;

    font-size:19px;
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

    z-index:5000;

    padding:13px 18px;

    border-radius:11px;

    background:#18151f;

    color:#fff;

    font-size:11px;

    box-shadow:var(--shadow);

    transform:translateY(100px);

    opacity:0;

    transition:.3s;
}

.toast.show{
    transform:translateY(0);

    opacity:1;
}


/* =========================================================
   MOBILE MENU
========================================================= */

.mobile-menu{
    display:none;

    padding:10px 20px;

    background:var(--surface);

    border-top:1px solid var(--border);
}

.mobile-menu a{
    display:block;

    padding:11px 0;

    color:var(--muted);

    font-size:12px;
    font-weight:700;
}


/* =========================================================
   RESPONSIVE
========================================================= */

@media(max-width:1100px){

    .nav{
        gap:14px;
    }

    .search-box{
        width:220px;
    }

    .hero-grid{
        grid-template-columns:1fr;
    }

    .hero-visual{
        min-height:430px;
    }

    .feature-grid{
        grid-template-columns:1fr 1fr;
    }

    .feature:nth-child(2){
        border-right:0;
    }

    .feature:nth-child(-n+2){
        border-bottom:1px solid var(--border);
    }

    .category-grid{
        grid-template-columns:
            repeat(3,1fr);
    }

    .product-grid{
        grid-template-columns:
            repeat(3,1fr);
    }
}


@media(max-width:850px){

    .nav{
        display:none;
    }

    .menu-btn{
        display:grid;

        place-items:center;

        width:41px;
        height:41px;

        border:1px solid var(--border);

        border-radius:11px;

        background:var(--surface);

        color:var(--text);
    }

    .header{
        min-height:68px;
    }

    .search-box{
        width:200px;
    }

    .promo{
        grid-template-columns:1fr;
    }

    .promo-image{
        min-height:300px;
    }

    .review-grid{
        grid-template-columns:1fr;
    }

    .footer-grid{
        grid-template-columns:1fr 1fr;
    }
}


@media(max-width:600px){

    .container{
        width:calc(100% - 24px);
    }

    .topbar{
        display:none;
    }

    .logo{
        font-size:19px;
    }

    .logo-icon{
        width:32px;
        height:32px;
    }

    .search-box{
        display:none;
    }

    .header-actions .header-btn:first-child{
        display:none;
    }

    .hero{
        padding-top:18px;
    }

    .hero-content{
        min-height:540px;

        padding:32px 22px;

        border-radius:23px;
    }

    .hero h1{
        font-size:43px;

        letter-spacing:-3px;
    }

    .hero-text{
        font-size:13px;
    }

    .hero-stats{
        gap:20px;

        margin-top:35px;
    }

    .stat strong{
        font-size:17px;
    }

    .hero-visual{
        min-height:400px;

        border-radius:23px;
    }

    .feature-grid{
        grid-template-columns:1fr;
    }

    .feature{
        border-right:0;

        border-bottom:1px solid var(--border);
    }

    .feature:last-child{
        border-bottom:0;
    }

    .section{
        padding:65px 0;
    }

    .section-heading{
        align-items:flex-start;

        flex-direction:column;
    }

    .section-heading h2{
        font-size:29px;
    }

    .category-grid{
        grid-template-columns:1fr 1fr;

        gap:9px;
    }

    .category{
        min-height:135px;
    }

    .product-grid{
        grid-template-columns:1fr 1fr;

        gap:9px;
    }

    .product-image{
        height:185px;
    }

    .product-info{
        padding:12px;
    }

    .product-title{
        font-size:11px;
    }

    .price{
        font-size:15px;
    }

    .add-cart{
        width:34px;
        height:34px;
    }

    .product-toolbar{
        align-items:flex-start;

        flex-direction:column;
    }

    .promo-content{
        padding:35px 23px;
    }

    .promo h2{
        font-size:31px;
    }

    .newsletter{
        padding:50px 18px;
    }

    .newsletter h2{
        font-size:28px;
    }

    .newsletter-form{
        flex-direction:column;

        padding:0;

        border:0;

        background:transparent;
    }

    .newsletter-form input{
        height:46px;

        border:1px solid var(--border);

        border-radius:10px;

        background:var(--surface);
    }

    .newsletter-form button{
        width:100%;
    }

    .footer-grid{
        grid-template-columns:1fr 1fr;

        gap:30px;
    }
}


@media(max-width:390px){

    .product-grid{
        grid-template-columns:1fr;
    }

    .hero h1{
        font-size:37px;
    }
}

</style>
</head>


<body>


<!-- =========================================================
     TOP BAR
========================================================= -->

<div class="topbar">

    <span>
        <i class="fas fa-bolt"></i>

        <strong>WEEKEND DROP</strong>
        &nbsp; Up to 45% off selected products
    </span>

</div>


<!-- =========================================================
     HEADER
========================================================= -->

<header>

<div class="container header">

    <button
        class="menu-btn"
        id="menuBtn">

        <i class="fas fa-bars"></i>

    </button>


    <a href="#home" class="logo">

        <div class="logo-icon">
            <i class="fas fa-layer-group"></i>
        </div>

        NOVARA<span>.</span>

    </a>


    <nav class="nav">

        <a
            href="#home"
            class="active">

            Home

        </a>

        <a href="#categories">
            Categories
        </a>

        <a href="#products">
            Shop
        </a>

        <a href="#deals">
            Offers
        </a>

        <a href="#reviews">
            Reviews
        </a>

    </nav>


    <div class="search-box">

        <input
            type="search"
            id="searchInput"
            placeholder="Search products...">

        <button id="searchBtn">

            <i class="fas fa-search"></i>

        </button>

    </div>


    <div class="header-actions">

        <button
            class="header-btn"
            id="themeBtn"
            title="Toggle theme">

            <i class="fas fa-moon"></i>

        </button>


        <button
            class="header-btn"
            id="wishlistBtn">

            <i class="far fa-heart"></i>

            <span
                class="count"
                id="wishlistCount">

                0

            </span>

        </button>


        <button
            class="header-btn"
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


<div
    class="mobile-menu"
    id="mobileMenu">

    <a href="#home">Home</a>

    <a href="#categories">Categories</a>

    <a href="#products">Shop</a>

    <a href="#deals">Offers</a>

    <a href="#reviews">Reviews</a>

</div>

</header>


<!-- =========================================================
     HERO
========================================================= -->

<main>

<section
    class="hero"
    id="home">

<div class="container">

<div class="hero-grid">


    <div class="hero-content">

        <div class="hero-tag">

            <i class="fas fa-sparkles"></i>

            Curated for modern living

        </div>


        <h1>

            Everything you want.
            <span>Better.</span>

        </h1>


        <p class="hero-text">

            Discover beautifully designed technology,
            fashion and everyday essentials from brands
            worth knowing.

        </p>


        <div class="hero-buttons">

            <button
                class="btn btn-primary"
                id="shopNow">

                Shop Collection

                <i class="fas fa-arrow-right"></i>

            </button>


            <button
                class="btn btn-light"
                id="viewDeals">

                <i class="fas fa-fire"></i>

                View Offers

            </button>

        </div>


        <div class="hero-stats">

            <div class="stat">

                <strong>30K+</strong>

                <span>
                    Happy Shoppers
                </span>

            </div>


            <div class="stat">

                <strong>4.9/5</strong>

                <span>
                    Average Rating
                </span>

            </div>


            <div class="stat">

                <strong>12K+</strong>

                <span>
                    Products
                </span>

            </div>

        </div>

    </div>


    <div class="hero-visual">

        <img
            src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=1200&q=90"
            alt="Premium smartwatch">

        <div class="hero-product">

            <small>
                Trending now
            </small>

            <h3>
                Apple Watch Series 9
            </h3>

            <div class="hero-product-row">

                <div class="hero-price">
                    $349
                </div>

                <div class="hero-rating">
                    ★★★★★
                </div>

            </div>

        </div>

    </div>

</div>

</div>

</section>


<!-- =========================================================
     FEATURES
========================================================= -->

<section class="features">

<div class="container">

<div class="feature-grid">


    <div class="feature">

        <div class="feature-icon">
            <i class="fas fa-truck-fast"></i>
        </div>

        <div>

            <h4>
                Free Shipping
            </h4>

            <p>
                On orders over $75
            </p>

        </div>

    </div>


    <div class="feature">

        <div class="feature-icon">
            <i class="fas fa-shield-halved"></i>
        </div>

        <div>

            <h4>
                Secure Payment
            </h4>

            <p>
                100% protected checkout
            </p>

        </div>

    </div>


    <div class="feature">

        <div class="feature-icon">
            <i class="fas fa-arrow-rotate-left"></i>
        </div>

        <div>

            <h4>
                Easy Returns
            </h4>

            <p>
                30-day return policy
            </p>

        </div>

    </div>


    <div class="feature">

        <div class="feature-icon">
            <i class="fas fa-headset"></i>
        </div>

        <div>

            <h4>
                Customer Care
            </h4>

            <p>
                Here whenever you need us
            </p>

        </div>

    </div>


</div>

</div>

</section>


<!-- =========================================================
     CATEGORIES
========================================================= -->

<section
    class="section"
    id="categories">

<div class="container">

<div class="section-heading">

    <div>

        <div class="eyebrow">
            Browse
        </div>

        <h2>
            Shop by category
        </h2>

        <p>
            Find something made for you.
        </p>

    </div>

    <a
        href="#products"
        class="view-link">

        View all →

    </a>

</div>


<div
    class="category-grid"
    id="categoryGrid">

</div>

</div>

</section>


<!-- =========================================================
     PRODUCTS
========================================================= -->

<section
    class="section"
    id="products">

<div class="container">

<div class="section-heading">

    <div>

        <div class="eyebrow">
            Trending
        </div>

        <h2>
            Customer favorites
        </h2>

        <p>
            Products people are loving right now.
        </p>

    </div>

</div>


<div class="product-toolbar">

    <div
        class="filters"
        id="filters">

        <button
            class="filter active"
            data-filter="All">

            All

        </button>

        <button
            class="filter"
            data-filter="Tech">

            Tech

        </button>

        <button
            class="filter"
            data-filter="Audio">

            Audio

        </button>

        <button
            class="filter"
            data-filter="Fashion">

            Fashion

        </button>

        <button
            class="filter"
            data-filter="Lifestyle">

            Lifestyle

        </button>

    </div>

</div>


<div
    class="product-grid"
    id="productGrid">

</div>

</div>

</section>


<!-- =========================================================
     DEAL
========================================================= -->

<section
    class="section"
    id="deals">

<div class="container">

<div class="promo">

    <div class="promo-image"></div>


    <div class="promo-content">

        <div class="promo-label">

            Member exclusive

        </div>


        <h2>
            Work smarter.
            Create more.
        </h2>


        <p>

            Upgrade your setup with the
            MacBook Pro and save while
            this limited-time offer lasts.

        </p>


        <div class="timer">

            <div class="timer-box">

                <strong id="days">
                    00
                </strong>

                <span>
                    Days
                </span>

            </div>


            <div class="timer-box">

                <strong id="hours">
                    00
                </strong>

                <span>
                    Hours
                </span>

            </div>


            <div class="timer-box">

                <strong id="minutes">
                    00
                </strong>

                <span>
                    Minutes
                </span>

            </div>


            <div class="timer-box">

                <strong id="seconds">
                    00
                </strong>

                <span>
                    Seconds
                </span>

            </div>

        </div>


        <div class="promo-price">

            <strong>
                $1,699
            </strong>

            <del>
                $1,999
            </del>

        </div>


        <button
            class="btn btn-primary"
            id="buyDeal">

            Shop the deal

            <i class="fas fa-arrow-right"></i>

        </button>

    </div>

</div>

</div>

</section>


<!-- =========================================================
     REVIEWS
========================================================= -->

<section
    class="section"
    id="reviews">

<div class="container">

<div class="section-heading">

    <div>

        <div class="eyebrow">
            Community
        </div>

        <h2>
            What shoppers say
        </h2>

        <p>
            Real experiences from real customers.
        </p>

    </div>

</div>


<div class="review-grid">


    <div class="review">

        <div class="stars">
            ★★★★★
        </div>

        <p>
            "The site feels incredibly clean
            and the products are exactly what
            I was looking for. Delivery was
            super quick."
        </p>

        <div class="customer">

            <img
                src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
                alt="Customer">

            <div>

                <strong>
                    Sarah Johnson
                </strong>

                <span>
                    Verified shopper
                </span>

            </div>

        </div>

    </div>


    <div class="review">

        <div class="stars">
            ★★★★★
        </div>

        <p>
            "I love how easy it is to compare
            products. The checkout experience
            is simple and fast."
        </p>

        <div class="customer">

            <img
                src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
                alt="Customer">

            <div>

                <strong>
                    David Miller
                </strong>

                <span>
                    Verified shopper
                </span>

            </div>

        </div>

    </div>


    <div class="review">

        <div class="stars">
            ★★★★☆
        </div>

        <p>
            "Great selection, good prices and
            excellent customer support. I'll
            definitely shop here again."
        </p>

        <div class="customer">

            <img
                src="https://images.unsplash.com/photo-1531123897727-8f129e1688ce?auto=format&fit=crop&w=100&q=80"
                alt="Customer">

            <div>

                <strong>
                    Emily Wilson
                </strong>

                <span>
                    Verified shopper
                </span>

            </div>

        </div>

    </div>


</div>

</div>

</section>


<!-- =========================================================
     NEWSLETTER
========================================================= -->

<section class="section">

<div class="container">

<div class="newsletter">

    <div class="eyebrow">
        Stay inspired
    </div>

    <h2>
        Get the good stuff first.
    </h2>

    <p>
        New arrivals, exclusive offers and
        shopping inspiration delivered to your inbox.
    </p>


    <form
        class="newsletter-form"
        id="newsletterForm">

        <input
            type="email"
            id="email"
            placeholder="Your email address"
            required>

        <button
            class="btn btn-primary">

            Subscribe

            <i class="fas fa-arrow-right"></i>

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


    <div>

        <div class="logo">

            <div class="logo-icon">
                <i class="fas fa-layer-group"></i>
            </div>

            NOVARA<span>.</span>

        </div>

        <p class="footer-brand">

            A curated marketplace for modern
            products, better experiences and
            smarter everyday shopping.

        </p>


        <div class="socials">

            <a class="social">
                <i class="fab fa-instagram"></i>
            </a>

            <a class="social">
                <i class="fab fa-x-twitter"></i>
            </a>

            <a class="social">
                <i class="fab fa-facebook"></i>
            </a>

            <a class="social">
                <i class="fab fa-linkedin"></i>
            </a>

        </div>

    </div>


    <div>

        <h4>
            Shop
        </h4>

        <ul>

            <li>
                <a href="#products">
                    New Arrivals
                </a>
            </li>

            <li>
                <a href="#products">
                    Best Sellers
                </a>
            </li>

            <li>
                <a href="#deals">
                    Offers
                </a>
            </li>

            <li>
                <a href="#categories">
                    Categories
                </a>
            </li>

        </ul>

    </div>


    <div>

        <h4>
            Company
        </h4>

        <ul>

            <li>
                <a href="#">
                    About Us
                </a>
            </li>

            <li>
                <a href="#">
                    Careers
                </a>
            </li>

            <li>
                <a href="#">
                    Contact
                </a>
            </li>

            <li>
                <a href="#">
                    Privacy
                </a>
            </li>

        </ul>

    </div>


    <div>

        <h4>
            Support
        </h4>

        <ul>

            <li>
                <a href="#">
                    Help Center
                </a>
            </li>

            <li>
                <a href="#">
                    Shipping
                </a>
            </li>

            <li>
                <a href="#">
                    Returns
                </a>
            </li>

            <li>
                <a href="#">
                    Track Order
                </a>
            </li>

        </ul>

    </div>


</div>


<div class="footer-bottom">

    © <span id="year"></span>
    NOVARA Marketplace.
    All rights reserved.

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
            Shopping Bag
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

    </div>


    <div class="cart-footer">

        <div class="cart-total">

            <span>
                Total
            </span>

            <span id="cartTotal">
                $0
            </span>

        </div>


        <button
            class="btn btn-primary checkout"
            id="checkoutBtn">

            Proceed to checkout

            <i class="fas fa-arrow-right"></i>

        </button>

    </div>

</div>

</div>


<!-- =========================================================
     TOAST
========================================================= -->

<div
    class="toast"
    id="toast">

</div>


<script>

/* =========================================================
   PRODUCT DATA
========================================================= */

const products = [

{
    id:1,
    name:"iPhone 15 Pro",
    category:"Tech",
    price:999,
    oldPrice:1099,
    rating:5,
    reviews:184,
    badge:"New",
    image:"https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?auto=format&fit=crop&w=700&q=85"
},

{
    id:2,
    name:"MacBook Pro 14",
    category:"Tech",
    price:1699,
    oldPrice:1999,
    rating:5,
    reviews:96,
    badge:"Popular",
    image:"https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=85"
},

{
    id:3,
    name:"Apple Watch Series 9",
    category:"Lifestyle",
    price:349,
    oldPrice:399,
    rating:5,
    reviews:221,
    badge:"-15%",
    image:"https://images.unsplash.com/photo-1544117519-31a4b719223d?auto=format&fit=crop&w=700&q=85"
},

{
    id:4,
    name:"Nike Air Max",
    category:"Fashion",
    price:150,
    oldPrice:180,
    rating:4,
    reviews:73,
    badge:"Sale",
    image:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
},

{
    id:5,
    name:"Sony WH-1000XM5",
    category:"Audio",
    price:349,
    oldPrice:399,
    rating:5,
    reviews:157,
    badge:"Best Seller",
    image:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"
},

{
    id:6,
    name:"Premium Fragrance",
    category:"Lifestyle",
    price:120,
    oldPrice:150,
    rating:5,
    reviews:191,
    badge:"Sale",
    image:"https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=700&q=85"
},

{
    id:7,
    name:"Urban Travel Backpack",
    category:"Fashion",
    price:79,
    oldPrice:99,
    rating:4,
    reviews:68,
    badge:"Hot",
    image:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
},

{
    id:8,
    name:"Polaroid Camera",
    category:"Lifestyle",
    price:129,
    oldPrice:159,
    rating:5,
    reviews:89,
    badge:"Trending",
    image:"https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85"
}

];


/* =========================================================
   CATEGORIES
========================================================= */

const categories = [

["Smartphones","fa-mobile-screen-button"],
["Laptops","fa-laptop"],
["Audio","fa-headphones"],
["Fashion","fa-shirt"],
["Lifestyle","fa-heart"],
["Accessories","fa-bag-shopping"]

];


const categoryGrid =
    document.getElementById("categoryGrid");


categories.forEach(category => {

    const card =
        document.createElement("div");

    card.className="category";

    card.innerHTML=`

        <div class="category-icon">

            <i class="fas ${category[1]}"></i>

        </div>

        <h4>
            ${category[0]}
        </h4>

        <p>
            Explore collection
        </p>

    `;

    card.addEventListener("click",()=>{

        let filterName = category[0];

        if(
            filterName==="Smartphones" ||
            filterName==="Laptops"
        ){

            filterName="Tech";

        }

        if(filterName==="Audio"){
            filterName="Audio";
        }

        if(filterName==="Fashion"){
            filterName="Fashion";
        }

        if(filterName==="Lifestyle"){
            filterName="Lifestyle";
        }

        document
            .querySelectorAll(".filter")
            .forEach(btn=>{
                btn.classList.remove("active");

                if(
                    btn.dataset.filter===filterName
                ){
                    btn.classList.add("active");
                }
            });

        renderProducts(
            filterName==="Tech" ||
            filterName==="Audio" ||
            filterName==="Fashion" ||
            filterName==="Lifestyle"

            ? products.filter(
                p=>p.category===filterName
              )

            : products
        );

        document
            .getElementById("products")
            .scrollIntoView({
                behavior:"smooth"
            });

    });

    categoryGrid.appendChild(card);

});


/* =========================================================
   ELEMENTS
========================================================= */

const productGrid =
    document.getElementById("productGrid");

const searchInput =
    document.getElementById("searchInput");

const cartOverlay =
    document.getElementById("cartOverlay");

const cartItems =
    document.getElementById("cartItems");


/* =========================================================
   RENDER PRODUCTS
========================================================= */

function renderProducts(list){

    productGrid.innerHTML="";

    if(!list.length){

        productGrid.innerHTML=`

            <div style="
                grid-column:1/-1;
                text-align:center;
                padding:70px;
                color:var(--muted);
            ">

                <i
                    class="fas fa-box-open"
                    style="
                        font-size:40px;
                        margin-bottom:15px;
                    ">
                </i>

                <h3>
                    No products found
                </h3>

                <p>
                    Try another search.
                </p>

            </div>

        `;

        return;
    }


    list.forEach(product=>{

        const card =
            document.createElement("article");

        card.className="product";


        const sale =
            product.badge.includes("%") ||
            product.badge==="Sale";


        card.innerHTML=`

            <div class="product-image">

                <span
                    class="product-badge ${sale?"sale":""}">

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
                            :
                            ""
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

    restoreWishlistUI();

}


/* =========================================================
   PRODUCT EVENTS
========================================================= */

function attachProductEvents(){

    document
        .querySelectorAll(".add-cart")
        .forEach(button=>{

            button.addEventListener(
                "click",
                ()=>{
                    addToCart(
                        Number(button.dataset.id)
                    );
                }
            );

        });


    document
        .querySelectorAll(".wishlist")
        .forEach(button=>{

            button.addEventListener(
                "click",
                ()=>{

                    toggleWishlist(
                        Number(button.dataset.id),
                        button
                    );

                }
            );

        });

}


/* =========================================================
   WISHLIST
========================================================= */

let wishlist =
    JSON.parse(
        localStorage.getItem(
            "novaraWishlist"
        ) || "[]"
    );


function toggleWishlist(id,button){

    if(wishlist.includes(id)){

        wishlist =
            wishlist.filter(
                item=>item!==id
            );

        button.classList.remove("active");

        button.innerHTML =
            '<i class="far fa-heart"></i>';

        showToast(
            "Removed from wishlist"
        );

    }else{

        wishlist.push(id);

        button.classList.add("active");

        button.innerHTML =
            '<i class="fas fa-heart"></i>';

        showToast(
            "Added to wishlist ❤️"
        );

    }


    localStorage.setItem(
        "novaraWishlist",
        JSON.stringify(wishlist)
    );

    updateWishlistCount();

}


function restoreWishlistUI(){

    document
        .querySelectorAll(".wishlist")
        .forEach(button=>{

            const id =
                Number(button.dataset.id);

            if(wishlist.includes(id)){

                button.classList.add("active");

                button.innerHTML =
                    '<i class="fas fa-heart"></i>';

            }

        });

}


function updateWishlistCount(){

    document
        .getElementById("wishlistCount")
        .textContent =
        wishlist.length;

}


/* =========================================================
   SEARCH
========================================================= */

function searchProducts(query){

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

        searchProducts(
            searchInput.value
        );

        document
            .getElementById("products")
            .scrollIntoView({
                behavior:"smooth"
            });

    });


searchInput
    .addEventListener(
        "keydown",
        event=>{

            if(event.key==="Enter"){

                searchProducts(
                    event.target.value
                );

                document
                    .getElementById("products")
                    .scrollIntoView({
                        behavior:"smooth"
                    });

            }

        }
    );


/* =========================================================
   FILTERS
========================================================= */

document
    .querySelectorAll(".filter")
    .forEach(button=>{

        button.addEventListener(
            "click",
            ()=>{

                document
                    .querySelectorAll(".filter")
                    .forEach(btn=>{
                        btn.classList.remove("active");
                    });


                button.classList.add("active");


                const filter =
                    button.dataset.filter;


                if(filter==="All"){

                    renderProducts(products);

                }else{

                    renderProducts(
                        products.filter(
                            p=>p.category===filter
                        )
                    );

                }

            }
        );

    });


/* =========================================================
   CART
========================================================= */

let cart =
    JSON.parse(
        localStorage.getItem(
            "novaraCart"
        ) || "[]"
    );


function addToCart(id){

    const product =
        products.find(
            p=>p.id===id
        );


    if(!product) return;


    const existing =
        cart.find(
            item=>item.id===id
        );


    if(existing){

        existing.quantity++;

    }else{

        cart.push({
            ...product,
            quantity:1
        });

    }


    saveCart();

    updateCart();

    showToast(
        `${product.name} added to cart ✓`
    );

}


function saveCart(){

    localStorage.setItem(
        "novaraCart",
        JSON.stringify(cart)
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


    if(!cart.length){

        cartItems.innerHTML=`

            <div class="empty-cart">

                <i class="fas fa-bag-shopping"></i>

                <h3>
                    Your bag is empty
                </h3>

                <p>
                    Add something you love.
                </p>

            </div>

        `;

        document
            .getElementById("cartTotal")
            .textContent="$0";

        return;

    }


    cartItems.innerHTML="";


    let total=0;


    cart.forEach(item=>{

        total +=
            item.price *
            item.quantity;


        const element =
            document.createElement("div");

        element.className="cart-item";


        element.innerHTML=`

            <img
                src="${item.image}"
                alt="${item.name}">


            <div class="cart-info">

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
                        class="remove"
                        onclick="removeFromCart(${item.id})">

                        <i class="fas fa-trash"></i>

                    </button>

                </div>

            </div>

        `;


        cartItems.appendChild(element);

    });


    document
        .getElementById("cartTotal")
        .textContent =
        "$"+total.toLocaleString();

}


function changeQuantity(id,change){

    const item =
        cart.find(
            p=>p.id===id
        );


    if(!item) return;


    item.quantity += change;


    if(item.quantity<=0){

        removeFromCart(id);

        return;

    }


    saveCart();

    updateCart();

}


function removeFromCart(id){

    cart =
        cart.filter(
            item=>item.id!==id
        );


    saveCart();

    updateCart();

    showToast(
        "Product removed"
    );

}


/* =========================================================
   CART DRAWER
========================================================= */

document
    .getElementById("cartBtn")
    .addEventListener(
        "click",
        ()=>{
            cartOverlay.classList.add("show");
        }
    );


document
    .getElementById("closeCart")
    .addEventListener(
        "click",
        ()=>{
            cartOverlay.classList.remove("show");
        }
    );


cartOverlay.addEventListener(
    "click",
    event=>{

        if(event.target===cartOverlay){

            cartOverlay.classList.remove(
                "show"
            );

        }

    }
);


/* =========================================================
   HERO BUTTONS
========================================================= */

document
    .getElementById("shopNow")
    .addEventListener(
        "click",
        ()=>{

            document
                .getElementById("products")
                .scrollIntoView({
                    behavior:"smooth"
                });

        }
    );


document
    .getElementById("viewDeals")
    .addEventListener(
        "click",
        ()=>{

            document
                .getElementById("deals")
                .scrollIntoView({
                    behavior:"smooth"
                });

        }
    );


/* =========================================================
   DEAL
========================================================= */

document
    .getElementById("buyDeal")
    .addEventListener(
        "click",
        ()=>{

            addToCart(2);

            cartOverlay.classList.add(
                "show"
            );

        }
    );


/* =========================================================
   COUNTDOWN
========================================================= */

let dealEnd =
    localStorage.getItem(
        "novaraDealEnd"
    );


if(!dealEnd){

    dealEnd =
        Date.now() +
        24*60*60*1000;

    localStorage.setItem(
        "novaraDealEnd",
        dealEnd
    );

}


function updateTimer(){

    const difference =
        Number(dealEnd) -
        Date.now();


    if(difference<=0){

        ["days","hours","minutes","seconds"]
            .forEach(id=>{
                document
                    .getElementById(id)
                    .textContent="00";
            });

        return;

    }


    const days =
        Math.floor(
            difference /
            (1000*60*60*24)
        );


    const hours =
        Math.floor(
            difference /
            (1000*60*60)
            %24
        );


    const minutes =
        Math.floor(
            difference /
            (1000*60)
            %60
        );


    const seconds =
        Math.floor(
            difference/1000
            %60
        );


    document
        .getElementById("days")
        .textContent =
        String(days).padStart(2,"0");


    document
        .getElementById("hours")
        .textContent =
        String(hours).padStart(2,"0");


    document
        .getElementById("minutes")
        .textContent =
        String(minutes).padStart(2,"0");


    document
        .getElementById("seconds")
        .textContent =
        String(seconds).padStart(2,"0");

}


setInterval(
    updateTimer,
    1000
);

updateTimer();


/* =========================================================
   NEWSLETTER
========================================================= */

document
    .getElementById("newsletterForm")
    .addEventListener(
        "submit",
        event=>{

            event.preventDefault();

            const email =
                document
                    .getElementById("email")
                    .value;


            showToast(
                `You're subscribed, ${email} ✓`
            );


            event.target.reset();

        }
    );


/* =========================================================
   CHECKOUT
========================================================= */

document
    .getElementById("checkoutBtn")
    .addEventListener(
        "click",
        ()=>{

            if(!cart.length){

                showToast(
                    "Your shopping bag is empty"
                );

                return;

            }


            showToast(
                "Checkout ready to integrate 🚀"
            );

        }
    );


/* =========================================================
   MOBILE MENU
========================================================= */

const mobileMenu =
    document.getElementById(
        "mobileMenu"
    );


document
    .getElementById("menuBtn")
    .addEventListener(
        "click",
        ()=>{

            mobileMenu.style.display =
                mobileMenu.style.display==="block"
                ? "none"
                : "block";

        }
    );


mobileMenu
    .querySelectorAll("a")
    .forEach(link=>{

        link.addEventListener(
            "click",
            ()=>{
                mobileMenu.style.display="none";
            }
        );

    });


/* =========================================================
   DARK MODE
========================================================= */

const themeBtn =
    document.getElementById(
        "themeBtn"
    );


const savedTheme =
    localStorage.getItem(
        "novaraTheme"
    );


if(savedTheme==="dark"){

    document.body.classList.add("dark");

    themeBtn.innerHTML =
        '<i class="fas fa-sun"></i>';

}


themeBtn.addEventListener(
    "click",
    ()=>{

        document.body.classList.toggle(
            "dark"
        );


        const dark =
            document.body.classList.contains(
                "dark"
            );


        localStorage.setItem(
            "novaraTheme",
            dark ? "dark" : "light"
        );


        themeBtn.innerHTML =
            dark
            ?
            '<i class="fas fa-sun"></i>'
            :
            '<i class="fas fa-moon"></i>';

    }
);


/* =========================================================
   WISHLIST HEADER
========================================================= */

document
    .getElementById("wishlistBtn")
    .addEventListener(
        "click",
        ()=>{

            if(!wishlist.length){

                showToast(
                    "Your wishlist is empty"
                );

                return;

            }

            const wishProducts =
                products.filter(
                    p=>wishlist.includes(p.id)
                );

            renderProducts(
                wishProducts
            );

            document
                .getElementById("products")
                .scrollIntoView({
                    behavior:"smooth"
                });

            showToast(
                `${wishlist.length} wishlist item(s)`
            );

        }
    );


/* =========================================================
   TOAST
========================================================= */

let toastTimer;


function showToast(message){

    const toast =
        document.getElementById(
            "toast"
        );


    toast.textContent=message;

    toast.classList.add("show");


    clearTimeout(toastTimer);


    toastTimer =
        setTimeout(
            ()=>{
                toast.classList.remove(
                    "show"
                );
            },
            2500
        );

}


/* =========================================================
   INITIALIZE
========================================================= */

renderProducts(products);

updateCart();

updateWishlistCount();

document
    .getElementById("year")
    .textContent =
    new Date().getFullYear();

</script>

</body>
</html>
