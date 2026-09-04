<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NEXORA — Future of Shopping</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Space+Grotesk:wght@500;600;700&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

/* =========================================================
   ROOT
========================================================= */

:root{

    --bg:#07090d;
    --bg2:#0d1118;
    --card:#11161f;
    --card2:#151b25;

    --white:#ffffff;
    --text:#f4f7fb;
    --muted:#8c96a8;

    --blue:#4f7cff;
    --blue2:#6d8fff;
    --cyan:#22d3ee;

    --green:#22c55e;
    --red:#ff4d67;
    --yellow:#fbbf24;

    --border:rgba(255,255,255,.08);

    --radius:24px;

    --shadow:
        0 25px 70px rgba(0,0,0,.35);

    --transition:.3s ease;

    --container:1380px;
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

    background:
        radial-gradient(
            circle at 15% 5%,
            rgba(79,124,255,.08),
            transparent 30%
        ),
        var(--bg);

    color:var(--text);

    line-height:1.6;

    overflow-x:hidden;
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

.container{

    width:min(
        calc(100% - 50px),
        var(--container)
    );

    margin:auto;
}

.section{
    padding:100px 0;
}


/* =========================================================
   ANNOUNCEMENT
========================================================= */

.announcement{

    height:38px;

    display:flex;
    align-items:center;
    justify-content:center;

    background:
        linear-gradient(
            90deg,
            #111827,
            #172554,
            #111827
        );

    border-bottom:1px solid var(--border);

    color:#cbd5e1;

    font-size:12px;

    letter-spacing:.2px;
}

.announcement strong{
    color:#6d8fff;
}

.announcement i{
    color:var(--yellow);
    margin-right:7px;
}


/* =========================================================
   HEADER
========================================================= */

header{

    position:sticky;

    top:0;

    z-index:1000;

    background:
        rgba(7,9,13,.82);

    backdrop-filter:blur(20px);

    border-bottom:1px solid var(--border);
}

.header{

    height:82px;

    display:flex;

    align-items:center;

    gap:35px;
}


/* LOGO */

.logo{

    display:flex;

    align-items:center;

    gap:9px;

    font-family:"Space Grotesk",sans-serif;

    font-size:25px;

    font-weight:700;

    letter-spacing:-1px;

    white-space:nowrap;
}

.logo-mark{

    width:35px;
    height:35px;

    display:grid;

    place-items:center;

    border-radius:11px;

    background:
        linear-gradient(
            135deg,
            var(--blue),
            var(--cyan)
        );

    color:white;

    box-shadow:
        0 8px 30px rgba(79,124,255,.3);
}

.logo span{
    color:var(--blue2);
}


/* NAV */

.nav{

    display:flex;

    gap:28px;
}

.nav a{

    position:relative;

    color:#9ba5b5;

    font-size:13px;

    font-weight:600;

    transition:var(--transition);
}

.nav a:hover,
.nav a.active{
    color:white;
}

.nav a.active::after{

    content:"";

    position:absolute;

    left:0;
    right:0;

    bottom:-29px;

    height:2px;

    background:var(--blue);

    box-shadow:
        0 0 12px var(--blue);
}


/* SEARCH */

.search{

    margin-left:auto;

    width:290px;

    position:relative;
}

.search input{

    width:100%;

    height:44px;

    border:1px solid var(--border);

    border-radius:12px;

    background:#0d121a;

    color:white;

    padding:0 45px 0 16px;

    outline:none;

    transition:var(--transition);
}

.search input::placeholder{
    color:#667085;
}

.search input:focus{

    border-color:rgba(79,124,255,.7);

    box-shadow:
        0 0 0 4px rgba(79,124,255,.08);
}

.search button{

    position:absolute;

    right:5px;
    top:5px;

    width:34px;
    height:34px;

    border:0;

    border-radius:9px;

    background:#1c2431;

    color:#cbd5e1;
}


/* HEADER ACTIONS */

.header-actions{

    display:flex;

    gap:9px;
}

.icon-btn{

    position:relative;

    width:43px;
    height:43px;

    border:1px solid var(--border);

    border-radius:12px;

    background:#0d121a;

    color:#cbd5e1;

    transition:var(--transition);
}

.icon-btn:hover{

    background:white;

    color:#07090d;

    transform:translateY(-2px);
}

.count{

    position:absolute;

    right:-5px;

    top:-5px;

    width:18px;
    height:18px;

    display:grid;

    place-items:center;

    border-radius:50%;

    background:var(--blue);

    color:white;

    font-size:9px;

    font-weight:800;

    border:2px solid var(--bg);
}

.menu-btn{
    display:none;
}


/* =========================================================
   HERO
========================================================= */

.hero{

    padding-top:30px;

    min-height:700px;

    display:flex;

    align-items:center;
}

.hero-grid{

    display:grid;

    grid-template-columns:
        1.35fr
        .65fr;

    gap:20px;
}


/* MAIN HERO */

.hero-main{

    min-height:600px;

    border:1px solid var(--border);

    border-radius:32px;

    overflow:hidden;

    position:relative;

    background:

        linear-gradient(
            100deg,
            rgba(4,7,13,.98) 0%,
            rgba(4,7,13,.85) 45%,
            rgba(4,7,13,.25) 100%
        ),

        url("https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?auto=format&fit=crop&w=1800&q=90")
        center/cover;
}

.hero-main::after{

    content:"";

    position:absolute;

    width:450px;
    height:450px;

    right:-150px;
    top:-150px;

    background:
        radial-gradient(
            circle,
            rgba(79,124,255,.28),
            transparent 65%
        );

    pointer-events:none;
}

.hero-content{

    position:relative;

    z-index:2;

    padding:75px;

    max-width:780px;
}


/* EYEBROW */

.eyebrow{

    display:inline-flex;

    align-items:center;

    gap:8px;

    padding:8px 13px;

    border-radius:50px;

    background:
        rgba(79,124,255,.1);

    border:1px solid
        rgba(79,124,255,.25);

    color:#a9baff;

    font-size:10px;

    font-weight:700;

    letter-spacing:1px;

    text-transform:uppercase;

    margin-bottom:25px;
}


/* HERO TITLE */

.hero h1{

    font-family:"Space Grotesk",sans-serif;

    font-size:
        clamp(48px,6vw,82px);

    line-height:.98;

    letter-spacing:-5px;

    margin-bottom:27px;
}

.hero h1 span{

    display:block;

    background:
        linear-gradient(
            90deg,
            #6d8fff,
            #22d3ee
        );

    -webkit-background-clip:text;

    color:transparent;
}

.hero p{

    color:#aeb7c7;

    max-width:590px;

    font-size:16px;

    line-height:1.8;

    margin-bottom:32px;
}


/* BUTTONS */

.buttons{

    display:flex;

    gap:10px;

    flex-wrap:wrap;
}

.btn{

    border:0;

    border-radius:12px;

    padding:14px 21px;

    display:inline-flex;

    align-items:center;

    justify-content:center;

    gap:9px;

    font-size:13px;

    font-weight:700;

    transition:var(--transition);
}

.btn-primary{

    background:
        linear-gradient(
            135deg,
            var(--blue),
            #3864dc
        );

    color:white;

    box-shadow:
        0 10px 30px
        rgba(79,124,255,.2);
}

.btn-primary:hover{

    transform:translateY(-3px);

    box-shadow:
        0 16px 35px
        rgba(79,124,255,.35);
}

.btn-outline{

    background:
        rgba(255,255,255,.04);

    border:1px solid var(--border);

    color:white;
}

.btn-outline:hover{

    background:white;

    color:#07090d;
}


/* HERO STATS */

.hero-stats{

    display:flex;

    gap:30px;

    margin-top:55px;

    padding-top:25px;

    border-top:1px solid
        rgba(255,255,255,.1);
}

.stat strong{

    display:block;

    font-family:"Space Grotesk",sans-serif;

    font-size:22px;
}

.stat span{

    color:#707b8e;

    font-size:10px;
}


/* =========================================================
   HERO SIDE
========================================================= */

.hero-side{

    display:grid;

    grid-template-rows:
        1fr 1fr;

    gap:20px;
}

.side-card{

    position:relative;

    overflow:hidden;

    border-radius:28px;

    border:1px solid var(--border);

    padding:34px;

    background:var(--card);
}

.side-card:first-child{

    background:

        linear-gradient(
            135deg,
            rgba(79,124,255,.22),
            rgba(34,211,238,.06)
        ),

        #111722;
}

.side-card:last-child{

    background:
        linear-gradient(
            135deg,
            #171c28,
            #0d1118
        );
}

.side-card h3{

    position:relative;

    z-index:2;

    max-width:250px;

    font-family:"Space Grotesk",sans-serif;

    font-size:27px;

    line-height:1.1;

    margin-bottom:13px;
}

.side-card p{

    position:relative;

    z-index:2;

    max-width:240px;

    color:#8792a4;

    font-size:12px;
}

.side-card img{

    position:absolute;

    width:190px;
    height:190px;

    object-fit:contain;

    right:-20px;
    bottom:-20px;

    transition:.5s ease;
}

.side-card:hover img{

    transform:
        scale(1.08)
        rotate(3deg);
}

.side-price{

    position:relative;

    z-index:2;

    margin-top:20px;

    font-size:23px;

    font-weight:800;

    color:white;
}


/* =========================================================
   TRUST BAR
========================================================= */

.trust{

    margin-top:-20px;

    position:relative;

    z-index:5;
}

.trust-grid{

    display:grid;

    grid-template-columns:
        repeat(4,1fr);

    background:#10151e;

    border:1px solid var(--border);

    border-radius:20px;

    box-shadow:var(--shadow);

    overflow:hidden;
}

.trust-item{

    padding:22px;

    display:flex;

    align-items:center;

    gap:14px;

    border-right:1px solid var(--border);
}

.trust-item:last-child{
    border-right:0;
}

.trust-icon{

    width:42px;
    height:42px;

    display:grid;

    place-items:center;

    border-radius:11px;

    background:
        rgba(79,124,255,.1);

    color:var(--blue2);
}

.trust-item h4{
    font-size:12px;
}

.trust-item p{

    color:#667085;

    font-size:10px;
}


/* =========================================================
   SECTION HEADER
========================================================= */

.section-head{

    display:flex;

    justify-content:space-between;

    align-items:end;

    margin-bottom:35px;
}

.kicker{

    color:var(--blue2);

    text-transform:uppercase;

    letter-spacing:2px;

    font-size:9px;

    font-weight:800;

    margin-bottom:7px;
}

.section-head h2{

    font-family:"Space Grotesk",sans-serif;

    font-size:38px;

    letter-spacing:-1.8px;
}

.section-head p{

    color:#758094;

    font-size:12px;

    margin-top:5px;
}

.view-all{

    color:#8ea6ff;

    font-size:12px;

    font-weight:700;
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

    min-height:160px;

    display:flex;

    flex-direction:column;

    justify-content:center;

    align-items:center;

    text-align:center;

    border:1px solid var(--border);

    border-radius:20px;

    background:
        linear-gradient(
            145deg,
            #11161f,
            #0c1017
        );

    transition:var(--transition);

    cursor:pointer;
}

.category:hover{

    transform:translateY(-7px);

    border-color:
        rgba(79,124,255,.4);

    background:#151c28;

    box-shadow:
        0 20px 45px
        rgba(0,0,0,.25);
}

.category-icon{

    width:55px;
    height:55px;

    display:grid;

    place-items:center;

    border-radius:16px;

    background:
        rgba(79,124,255,.1);

    color:#7695ff;

    font-size:20px;

    margin-bottom:13px;

    transition:var(--transition);
}

.category:hover .category-icon{

    background:var(--blue);

    color:white;

    transform:scale(1.08);
}

.category h4{
    font-size:12px;
}

.category p{

    color:#687386;

    font-size:9px;

    margin-top:3px;
}


/* =========================================================
   PRODUCT FILTERS
========================================================= */

.filters{

    display:flex;

    gap:8px;

    flex-wrap:wrap;

    margin-bottom:25px;
}

.filter{

    border:1px solid var(--border);

    background:#10151e;

    color:#8b95a6;

    padding:8px 13px;

    border-radius:50px;

    font-size:10px;

    font-weight:700;
}

.filter.active,
.filter:hover{

    background:var(--blue);

    color:white;

    border-color:var(--blue);
}


/* =========================================================
   PRODUCTS
========================================================= */

.product-grid{

    display:grid;

    grid-template-columns:
        repeat(4,1fr);

    gap:18px;
}

.product{

    position:relative;

    overflow:hidden;

    background:#10151e;

    border:1px solid var(--border);

    border-radius:22px;

    transition:var(--transition);
}

.product:hover{

    transform:translateY(-8px);

    border-color:
        rgba(79,124,255,.3);

    box-shadow:
        0 25px 55px
        rgba(0,0,0,.3);
}

.product-image{

    height:285px;

    position:relative;

    overflow:hidden;

    background:#151a22;
}

.product-image img{

    width:100%;
    height:100%;

    object-fit:cover;

    transition:.6s ease;
}

.product:hover .product-image img{
    transform:scale(1.07);
}

.badge{

    position:absolute;

    left:13px;
    top:13px;

    z-index:3;

    padding:6px 9px;

    border-radius:7px;

    background:#0a0d12;

    color:white;

    font-size:8px;

    font-weight:800;

    text-transform:uppercase;
}

.badge.sale{
    background:var(--red);
}

.wishlist{

    position:absolute;

    right:13px;
    top:13px;

    z-index:4;

    width:37px;
    height:37px;

    border:1px solid
        rgba(255,255,255,.1);

    border-radius:50%;

    background:
        rgba(7,9,13,.75);

    backdrop-filter:blur(8px);

    color:white;
}

.wishlist.active{

    color:#ff5b70;

    background:
        rgba(255,77,103,.12);
}

.product-info{
    padding:18px;
}

.product-category{

    color:#667085;

    font-size:9px;

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

    color:var(--yellow);

    font-size:10px;
}

.rating span{
    color:#667085;
}

.product-bottom{

    display:flex;

    justify-content:space-between;

    align-items:center;

    margin-top:17px;
}

.price{

    font-family:"Space Grotesk",sans-serif;

    font-size:19px;

    font-weight:700;
}

.old-price{

    color:#606a7b;

    font-size:10px;

    text-decoration:line-through;

    margin-left:5px;
}

.add-cart{

    width:40px;
    height:40px;

    border:0;

    border-radius:11px;

    background:white;

    color:#080b10;

    transition:var(--transition);
}

.add-cart:hover{

    background:var(--blue);

    color:white;

    transform:scale(1.1);
}


/* =========================================================
   DEAL
========================================================= */

.deal{

    position:relative;

    overflow:hidden;

    min-height:450px;

    display:grid;

    grid-template-columns:
        1fr 1fr;

    border:1px solid var(--border);

    border-radius:30px;

    background:
        linear-gradient(
            120deg,
            #111722,
            #080b10
        );
}

.deal-image{

    min-height:450px;

    background:

        linear-gradient(
            90deg,
            transparent,
            rgba(7,9,13,.2)
        ),

        url("https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=90")
        center/cover;
}

.deal-content{

    padding:60px;

    display:flex;

    justify-content:center;

    flex-direction:column;
}

.deal-label{

    color:#6d8fff;

    font-size:10px;

    text-transform:uppercase;

    letter-spacing:2px;

    font-weight:800;

    margin-bottom:10px;
}

.deal h2{

    font-family:"Space Grotesk",sans-serif;

    font-size:45px;

    line-height:1.05;

    letter-spacing:-2px;

    margin-bottom:15px;
}

.deal p{

    color:#808b9e;

    font-size:13px;

    max-width:470px;

    margin-bottom:24px;
}

.timer{

    display:flex;

    gap:8px;

    margin-bottom:23px;
}

.timer-box{

    width:62px;

    padding:10px;

    text-align:center;

    border:1px solid var(--border);

    background:#0c1118;

    border-radius:10px;
}

.timer-box strong{

    display:block;

    font-family:"Space Grotesk",sans-serif;

    font-size:19px;
}

.timer-box span{

    color:#687386;

    font-size:7px;

    text-transform:uppercase;
}

.deal-price{

    margin-bottom:20px;
}

.deal-price strong{

    font-family:"Space Grotesk",sans-serif;

    font-size:30px;
}

.deal-price del{

    color:#626c7c;

    margin-left:8px;
}


/* =========================================================
   TESTIMONIALS
========================================================= */

.testimonials{

    display:grid;

    grid-template-columns:
        repeat(3,1fr);

    gap:18px;
}

.testimonial{

    padding:28px;

    border:1px solid var(--border);

    border-radius:22px;

    background:#10151e;

    transition:var(--transition);
}

.testimonial:hover{

    transform:translateY(-5px);

    background:#131a24;
}

.stars{

    color:var(--yellow);

    letter-spacing:2px;

    font-size:11px;

    margin-bottom:15px;
}

.testimonial p{

    color:#8c96a7;

    font-size:13px;

    line-height:1.8;

    margin-bottom:25px;
}

.customer{

    display:flex;

    align-items:center;

    gap:11px;
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

    color:#667085;

    font-size:9px;
}


/* =========================================================
   NEWSLETTER
========================================================= */

.newsletter{

    position:relative;

    overflow:hidden;

    text-align:center;

    padding:80px 30px;

    border-radius:28px;

    border:1px solid var(--border);

    background:

        radial-gradient(
            circle at 50% -20%,
            rgba(79,124,255,.3),
            transparent 55%
        ),

        #0e131c;
}

.newsletter h2{

    font-family:"Space Grotesk",sans-serif;

    font-size:39px;

    letter-spacing:-1.5px;
}

.newsletter p{

    color:#7d8798;

    max-width:550px;

    margin:9px auto 25px;

    font-size:13px;
}

.newsletter-form{

    max-width:510px;

    margin:auto;

    display:flex;

    gap:7px;

    padding:5px;

    border:1px solid var(--border);

    border-radius:13px;

    background:#080b10;
}

.newsletter-form input{

    flex:1;

    min-width:0;

    border:0;

    outline:0;

    background:transparent;

    color:white;

    padding:0 13px;
}

.newsletter-form input::placeholder{
    color:#596273;
}


/* =========================================================
   FOOTER
========================================================= */

footer{

    margin-top:50px;

    padding:70px 0 25px;

    background:#05070a;

    border-top:1px solid var(--border);
}

.footer-grid{

    display:grid;

    grid-template-columns:
        2fr repeat(3,1fr);

    gap:50px;
}

.footer-brand p{

    max-width:320px;

    color:#626d7e;

    font-size:11px;

    margin-top:13px;
}

footer h4{

    font-size:12px;

    margin-bottom:17px;
}

footer ul{
    list-style:none;
}

footer li{
    margin-bottom:10px;
}

footer li a{

    color:#626d7e;

    font-size:11px;

    transition:var(--transition);
}

footer li a:hover{
    color:white;
}

.footer-social{

    display:flex;

    gap:8px;

    margin-top:18px;
}

.social{

    width:35px;
    height:35px;

    display:grid;

    place-items:center;

    border:1px solid var(--border);

    border-radius:10px;

    color:#7d8798;

    transition:var(--transition);
}

.social:hover{

    color:white;

    background:#161d28;

    transform:translateY(-3px);
}

.footer-bottom{

    margin-top:50px;

    padding-top:20px;

    border-top:1px solid var(--border);

    text-align:center;

    color:#424b5a;

    font-size:9px;
}


/* =========================================================
   CART
========================================================= */

.cart-overlay{

    position:fixed;

    inset:0;

    z-index:2000;

    background:
        rgba(0,0,0,.7);

    backdrop-filter:blur(5px);

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

    width:min(450px,100%);

    height:100%;

    display:flex;

    flex-direction:column;

    background:#0d1219;

    border-left:1px solid var(--border);

    transform:translateX(100%);

    transition:.35s ease;
}

.cart-overlay.show .cart{
    transform:translateX(0);
}

.cart-header{

    display:flex;

    justify-content:space-between;

    align-items:center;

    padding:22px;

    border-bottom:1px solid var(--border);
}

.cart-header h3{

    font-family:"Space Grotesk",sans-serif;

    font-size:18px;
}

.close-cart{

    width:35px;
    height:35px;

    border:0;

    border-radius:50%;

    background:#181e28;

    color:#aeb7c7;
}

.cart-items{

    flex:1;

    overflow-y:auto;

    padding:20px;
}

.empty-cart{

    text-align:center;

    color:#667085;

    padding:70px 20px;
}

.empty-cart i{

    font-size:38px;

    margin-bottom:15px;

    color:#3e4858;
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

    object-fit:cover;

    border-radius:10px;
}

.cart-item-info{
    flex:1;
}

.cart-item-info h4{

    font-size:12px;

    margin-bottom:4px;
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

    background:#151b24;

    color:white;
}

.remove{

    margin-left:auto;

    color:#ff5269 !important;

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

    font-family:"Space Grotesk",sans-serif;

    font-size:19px;

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

    z-index:3000;

    right:25px;

    bottom:25px;

    padding:13px 18px;

    border:1px solid var(--border);

    border-radius:11px;

    background:#151b24;

    color:white;

    font-size:12px;

    box-shadow:var(--shadow);

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

    .search{
        width:220px;
    }

    .hero-grid{
        grid-template-columns:1fr;
    }

    .hero-side{
        grid-template-columns:1fr 1fr;
        grid-template-rows:1fr;
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


/* TABLET */

@media(max-width:850px){

    .nav{
        display:none;
    }

    .menu-btn{

        display:grid;

        place-items:center;

        width:42px;
        height:42px;

        border:1px solid var(--border);

        border-radius:11px;

        background:#0d1219;

        color:white;
    }

    .header{
        height:68px;
    }

    .search{
        margin-left:auto;
    }

    .trust-grid{
        grid-template-columns:1fr 1fr;
    }

    .trust-item:nth-child(2){
        border-right:0;
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


/* MOBILE */

@media(max-width:600px){

    .container{
        width:calc(100% - 24px);
    }

    .announcement{
        display:none;
    }

    .logo{
        font-size:20px;
    }

    .logo-mark{
        width:31px;
        height:31px;
    }

    .search{
        display:none;
    }

    .header-actions .icon-btn:first-child{
        display:none;
    }

    .hero{
        padding-top:15px;
        min-height:auto;
    }

    .hero-main{
        min-height:560px;
        border-radius:23px;
    }

    .hero-content{
        padding:35px 23px;
    }

    .hero h1{

        font-size:43px;

        letter-spacing:-3px;
    }

    .hero p{
        font-size:13px;
    }

    .hero-stats{
        gap:18px;
        margin-top:40px;
    }

    .stat strong{
        font-size:18px;
    }

    .hero-side{
        grid-template-columns:1fr;
    }

    .trust-grid{
        grid-template-columns:1fr;
    }

    .trust-item{
        border-right:0;
        border-bottom:1px solid var(--border);
    }

    .trust-item:last-child{
        border-bottom:0;
    }

    .section{
        padding:65px 0;
    }

    .section-head{
        align-items:flex-start;
        flex-direction:column;
    }

    .section-head h2{
        font-size:29px;
    }

    .category-grid{
        grid-template-columns:1fr 1fr;
        gap:9px;
    }

    .category{
        min-height:140px;
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

    .deal-content{
        padding:35px 23px;
    }

    .deal h2{
        font-size:32px;
    }

    .newsletter{
        padding:55px 18px;
    }

    .newsletter h2{
        font-size:28px;
    }

    .newsletter-form{
        flex-direction:column;
        background:transparent;
        border:0;
    }

    .newsletter-form input{
        height:47px;
        border:1px solid var(--border);
        border-radius:10px;
        background:#080b10;
    }

    .newsletter-form button{
        width:100%;
    }

    .footer-grid{
        grid-template-columns:1fr 1fr;
        gap:30px;
    }

}


/* SMALL */

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
     ANNOUNCEMENT
========================================================= -->

<div class="announcement">

    <i class="fas fa-bolt"></i>

    <span>
        <strong>FLASH SALE</strong>
        &nbsp; Get up to 40% off selected products today.
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


    <a
        href="#"
        class="logo">

        <div class="logo-mark">
            <i class="fas fa-cube"></i>
        </div>

        NEXORA<span>.</span>

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
            Discover
        </a>

        <a href="#deals">
            Deals
        </a>

        <a href="#reviews">
            Reviews
        </a>

    </nav>


    <div class="search">

        <input
            id="searchInput"
            type="search"
            placeholder="Search products...">

        <button id="searchBtn">
            <i class="fas fa-search"></i>
        </button>

    </div>


    <div class="header-actions">

        <button
            class="icon-btn"
            id="wishlistBtn">

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


<!-- MOBILE NAV -->

<div
    id="mobileMenu"
    style="display:none;
           border-top:1px solid var(--border);
           background:#0b0f15;
           padding:10px 20px;">

    <a
        href="#home"
        style="display:block;
               padding:12px 0;
               color:#b5bfce;">
        Home
    </a>

    <a
        href="#categories"
        style="display:block;
               padding:12px 0;
               color:#b5bfce;">
        Categories
    </a>

    <a
        href="#products"
        style="display:block;
               padding:12px 0;
               color:#b5bfce;">
        Discover
    </a>

    <a
        href="#deals"
        style="display:block;
               padding:12px 0;
               color:#b5bfce;">
        Deals
    </a>

    <a
        href="#reviews"
        style="display:block;
               padding:12px 0;
               color:#b5bfce;">
        Reviews
    </a>

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


    <div class="hero-main">

        <div class="hero-content">

            <div class="eyebrow">

                <i class="fas fa-sparkles"></i>

                NEXT-GEN SHOPPING

            </div>


            <h1>

                Shop smarter.
                <span>Live better.</span>

            </h1>


            <p>

                Discover carefully selected technology,
                fashion and lifestyle products designed
                to upgrade your everyday life.

            </p>


            <div class="buttons">

                <button
                    class="btn btn-primary"
                    id="shopNow">

                    Explore Collection

                    <i class="fas fa-arrow-right"></i>

                </button>


                <button
                    class="btn btn-outline"
                    id="viewDeals">

                    <i class="fas fa-fire"></i>

                    Today's Deals

                </button>

            </div>


            <div class="hero-stats">

                <div class="stat">

                    <strong>25K+</strong>

                    <span>
                        Happy Customers
                    </span>

                </div>


                <div class="stat">

                    <strong>4.9/5</strong>

                    <span>
                        Customer Rating
                    </span>

                </div>


                <div class="stat">

                    <strong>8K+</strong>

                    <span>
                        Products
                    </span>

                </div>

            </div>

        </div>

    </div>


    <div class="hero-side">


        <div class="side-card">

            <h3>
                Technology
                that works smarter.
            </h3>

            <p>
                Discover powerful devices
                built for modern life.
            </p>

            <div class="side-price">
                From $79
            </div>

            <img
                src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=600&q=85"
                alt="Smart Watch">

        </div>


        <div class="side-card">

            <h3>
                Upgrade your
                everyday essentials.
            </h3>

            <p>
                Premium products without
                premium headaches.
            </p>

            <div class="side-price">
                UP TO 40% OFF
            </div>

            <img
                src="https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?auto=format&fit=crop&w=600&q=85"
                alt="Coffee">

        </div>

    </div>

</div>

</div>

</section>


<!-- =========================================================
     TRUST
========================================================= -->

<section class="trust">

<div class="container">

<div class="trust-grid">


    <div class="trust-item">

        <div class="trust-icon">
            <i class="fas fa-truck-fast"></i>
        </div>

        <div>

            <h4>Free Delivery</h4>

            <p>
                On orders over $100
            </p>

        </div>

    </div>


    <div class="trust-item">

        <div class="trust-icon">
            <i class="fas fa-shield-halved"></i>
        </div>

        <div>

            <h4>Secure Checkout</h4>

            <p>
                100% protected payment
            </p>

        </div>

    </div>


    <div class="trust-item">

        <div class="trust-icon">
            <i class="fas fa-rotate-left"></i>
        </div>

        <div>

            <h4>Easy Returns</h4>

            <p>
                30-day return guarantee
            </p>

        </div>

    </div>


    <div class="trust-item">

        <div class="trust-icon">
            <i class="fas fa-headset"></i>
        </div>

        <div>

            <h4>Expert Support</h4>

            <p>
                We're here 24/7
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

<div class="section-head">

    <div>

        <div class="kicker">
            Browse
        </div>

        <h2>
            Explore Categories
        </h2>

        <p>
            Find your next favorite thing.
        </p>

    </div>

    <a
        href="#products"
        class="view-all">
        View everything →
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

<div class="section-head">

    <div>

        <div class="kicker">
            Trending Now
        </div>

        <h2>
            Most Wanted
        </h2>

        <p>
            Products everyone is talking about.
        </p>

    </div>

</div>


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
        data-filter="Smartphones">
        Smartphones
    </button>

    <button
        class="filter"
        data-filter="Laptops">
        Laptops
    </button>

    <button
        class="filter"
        data-filter="Audio">
        Audio
    </button>

    <button
        class="filter"
        data-filter="Footwear">
        Footwear
    </button>

    <button
        class="filter"
        data-filter="Accessories">
        Accessories
    </button>

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

<div class="deal">

    <div class="deal-image"></div>


    <div class="deal-content">

        <div class="deal-label">
            Limited Time Offer
        </div>


        <h2>
            Power up your
            productivity.
        </h2>


        <p>
            Get the MacBook Pro at a special
            price before this exclusive offer
            disappears.
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


        <div class="deal-price">

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

            Grab This Deal

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

<div class="section-head">

    <div>

        <div class="kicker">
            Reviews
        </div>

        <h2>
            Loved by shoppers.
        </h2>

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
            "The whole shopping experience feels
            premium. My order arrived quickly and
            the product was exactly as described."
        </p>

        <div class="customer">

            <img
                src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
                alt="Sarah">

            <div>

                <strong>
                    Sarah Johnson
                </strong>

                <span>
                    Verified Customer
                </span>

            </div>

        </div>

    </div>


    <div class="testimonial">

        <div class="stars">
            ★★★★★
        </div>

        <p>
            "Finding products is incredibly easy.
            The interface is clean, fast and the
            checkout experience is excellent."
        </p>

        <div class="customer">

            <img
                src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
                alt="David">

            <div>

                <strong>
                    David Miller
                </strong>

                <span>
                    Verified Customer
                </span>

            </div>

        </div>

    </div>


    <div class="testimonial">

        <div class="stars">
            ★★★★☆
        </div>

        <p>
            "Excellent product selection and
            competitive prices. Customer support
            was also very helpful."
        </p>

        <div class="customer">

            <img
                src="https://images.unsplash.com/photo-1531123897727-8f129e1688ce?auto=format&fit=crop&w=100&q=80"
                alt="Emily">

            <div>

                <strong>
                    Emily Wilson
                </strong>

                <span>
                    Verified Customer
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

    <div class="kicker">
        Stay in the loop
    </div>

    <h2>
        Get the good stuff first.
    </h2>

    <p>
        New products, exclusive deals and
        early access — straight to your inbox.
    </p>


    <form
        class="newsletter-form"
        id="newsletterForm">

        <input
            id="email"
            type="email"
            placeholder="Enter your email"
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


    <div class="footer-brand">

        <div class="logo">

            <div class="logo-mark">
                <i class="fas fa-cube"></i>
            </div>

            NEXORA<span>.</span>

        </div>

        <p>
            A modern marketplace built for people
            who want better products and a better
            shopping experience.
        </p>


        <div class="footer-social">

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

        <h4>Marketplace</h4>

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
                    Deals
                </a>
            </li>

            <li>
                <a href="#">
                    Gift Cards
                </a>
            </li>

        </ul>

    </div>


    <div>

        <h4>Company</h4>

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

        <h4>Support</h4>

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
    NEXORA Marketplace.
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

            Continue to Checkout

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
    price:1699,
    oldPrice:1999,
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
   ELEMENTS
========================================================= */

const productGrid =
document.getElementById("productGrid");

const categoryGrid =
document.getElementById("categoryGrid");

const searchInput =
document.getElementById("searchInput");

const cartOverlay =
document.getElementById("cartOverlay");

const cartItems =
document.getElementById("cartItems");


/* =========================================================
   CATEGORY DATA
========================================================= */

const categories = [

["Smartphones","fa-mobile-screen-button"],

["Laptops","fa-laptop"],

["Fashion","fa-shirt"],

["Audio","fa-headphones"],

["Footwear","fa-shoe-prints"],

["Accessories","fa-bag-shopping"]

];


categories.forEach(category => {

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
                color:#667085;
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

                <span class="badge ${sale?"sale":""}">
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
                            `<span class="old-price">
                                $${product.oldPrice.toLocaleString()}
                            </span>`
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

            const id =
            Number(button.dataset.id);

            toggleWishlist(id,button);

        });

    });

}


/* =========================================================
   WISHLIST
========================================================= */

let wishlist =
JSON.parse(
    localStorage.getItem("nexoraWishlist") || "[]"
);


function toggleWishlist(id,button){

    if(wishlist.includes(id)){

        wishlist =
        wishlist.filter(
            item=>item!==id
        );

        button.classList.remove("active");

        button.innerHTML=
        '<i class="far fa-heart"></i>';

        showToast("Removed from wishlist");

    }else{

        wishlist.push(id);

        button.classList.add("active");

        button.innerHTML=
        '<i class="fas fa-heart"></i>';

        showToast("Added to wishlist ❤️");

    }


    localStorage.setItem(
        "nexoraWishlist",
        JSON.stringify(wishlist)
    );


    updateWishlistCount();

}


function updateWishlistCount(){

    document
    .getElementById("wishlistCount")
    .textContent=wishlist.length;

}


/* =========================================================
   SEARCH
========================================================= */

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

    filterProducts(
        searchInput.value
    );

    document
    .getElementById("products")
    .scrollIntoView({
        behavior:"smooth"
    });

});


searchInput
.addEventListener("keydown",event=>{

    if(event.key==="Enter"){

        filterProducts(
            event.target.value
        );

        document
        .getElementById("products")
        .scrollIntoView({
            behavior:"smooth"
        });

    }

});


/* =========================================================
   FILTERS
========================================================= */

document
.querySelectorAll(".filter")
.forEach(button=>{

    button.addEventListener("click",()=>{

        document
        .querySelectorAll(".filter")
        .forEach(btn=>
            btn.classList.remove("active")
        );

        button.classList.add("active");


        const filter =
        button.dataset.filter;


        if(filter==="All"){

            renderProducts(products);

        }else{

            renderProducts(
                products.filter(
                    product =>
                    product.category===filter
                )
            );

        }

    });

});


/* =========================================================
   CART
========================================================= */

let cart =
JSON.parse(
    localStorage.getItem("nexoraCart") || "[]"
);


function addToCart(id){

    const product =
    products.find(
        product=>product.id===id
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
        "nexoraCart",
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
                    Your cart is empty
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
        item.price * item.quantity;


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
    .textContent=
    "$"+total.toLocaleString();

}


function changeQuantity(id,change){

    const item =
    cart.find(
        item=>item.id===id
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

    showToast("Product removed");

}


/* =========================================================
   CART DRAWER
========================================================= */

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
.getElementById("viewDeals")
.addEventListener("click",()=>{

    document
    .getElementById("deals")
    .scrollIntoView({
        behavior:"smooth"
    });

});


/* =========================================================
   DEAL BUTTON
========================================================= */

document
.getElementById("buyDeal")
.addEventListener("click",()=>{

    addToCart(2);

    cartOverlay.classList.add("show");

});


/* =========================================================
   COUNTDOWN
========================================================= */

let targetDate =
localStorage.getItem("nexoraDealEnd");


if(!targetDate){

    targetDate =
    Date.now() +
    24*60*60*1000;

    localStorage.setItem(
        "nexoraDealEnd",
        targetDate
    );

}


function updateTimer(){

    const difference =
    Number(targetDate)-Date.now();


    if(difference<=0){

        document.getElementById("days")
        .textContent="00";

        document.getElementById("hours")
        .textContent="00";

        document.getElementById("minutes")
        .textContent="00";

        document.getElementById("seconds")
        .textContent="00";

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
   NEWSLETTER
========================================================= */

document
.getElementById("newsletterForm")
.addEventListener("submit",event=>{

    event.preventDefault();


    const email =
    document.getElementById("email").value;


    showToast(
        `You're subscribed, ${email} ✓`
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
        "Checkout ready to integrate 🚀"
    );

});


/* =========================================================
   MOBILE MENU
========================================================= */

const mobileMenu =
document.getElementById("mobileMenu");


document
.getElementById("menuBtn")
.addEventListener("click",()=>{

    mobileMenu.style.display =
    mobileMenu.style.display==="block"
    ? "none"
    : "block";

});


mobileMenu
.querySelectorAll("a")
.forEach(link=>{

    link.addEventListener("click",()=>{

        mobileMenu.style.display="none";

    });

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

updateWishlistCount();


document
.getElementById("year")
.textContent=
new Date().getFullYear();


/* RESTORE WISHLIST UI */

setTimeout(()=>{

    document
    .querySelectorAll(".wishlist")
    .forEach(button=>{

        const id =
        Number(button.dataset.id);


        if(wishlist.includes(id)){

            button.classList.add("active");

            button.innerHTML=
            '<i class="fas fa-heart"></i>';

        }

    });

},50);

</script>

</body>
</html>
