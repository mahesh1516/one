<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NEXORA — Modern Marketplace</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Manrope:wght@600;700;800&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

/* =========================================================
   GLOBAL
========================================================= */

:root {
    --bg: #f6f8fc;
    --white: #ffffff;
    --black: #0a0d14;
    --dark: #111621;
    --dark2: #181e2b;

    --text: #121722;
    --muted: #788195;
    --border: #e5e9f1;

    --blue: #2563eb;
    --blue-dark: #1d4ed8;
    --blue-light: #eaf1ff;

    --green: #16a34a;
    --red: #ef4444;
    --orange: #f59e0b;

    --radius: 20px;
    --shadow: 0 20px 60px rgba(20, 30, 55, .08);
    --transition: .25s ease;
    --container: 1300px;
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
}

body {
    font-family: "Inter", sans-serif;
    background: var(--bg);
    color: var(--text);
    line-height: 1.6;
}

button,
input {
    font: inherit;
}

button {
    cursor: pointer;
}

a {
    text-decoration: none;
    color: inherit;
}

.container {
    width: min(100% - 40px, var(--container));
    margin: auto;
}

.section {
    padding: 90px 0;
}

/* =========================================================
   TOP BAR
========================================================= */

.topbar {
    background: var(--black);
    color: white;
    padding: 9px 0;
    font-size: 12px;
}

.topbar-inner {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.topbar-right {
    display: flex;
    gap: 22px;
    color: #aeb7c8;
}

.topbar strong {
    color: #60a5fa;
}

/* =========================================================
   HEADER
========================================================= */

header {
    position: sticky;
    top: 0;
    z-index: 1000;
    background: rgba(255,255,255,.94);
    backdrop-filter: blur(18px);
    border-bottom: 1px solid var(--border);
}

.header-inner {
    min-height: 78px;
    display: flex;
    align-items: center;
    gap: 28px;
}

.logo {
    font-family: "Manrope", sans-serif;
    font-size: 25px;
    font-weight: 800;
    letter-spacing: -1px;
    white-space: nowrap;
}

.logo i {
    color: var(--blue);
    margin-right: 5px;
}

.logo span {
    color: var(--blue);
}

.nav {
    display: flex;
    gap: 25px;
}

.nav a {
    font-size: 13px;
    font-weight: 700;
    color: #667085;
    transition: var(--transition);
}

.nav a:hover,
.nav a.active {
    color: var(--blue);
}

.search {
    margin-left: auto;
    position: relative;
    width: 330px;
}

.search input {
    width: 100%;
    height: 45px;
    border: 1px solid var(--border);
    border-radius: 12px;
    padding: 0 48px 0 16px;
    outline: none;
    background: #f8f9fc;
    transition: var(--transition);
}

.search input:focus {
    background: white;
    border-color: var(--blue);
    box-shadow: 0 0 0 4px rgba(37,99,235,.08);
}

.search button {
    position: absolute;
    right: 5px;
    top: 5px;
    width: 35px;
    height: 35px;
    border: 0;
    border-radius: 9px;
    background: var(--black);
    color: white;
}

.header-actions {
    display: flex;
    gap: 8px;
}

.icon-btn {
    width: 43px;
    height: 43px;
    border: 1px solid var(--border);
    border-radius: 12px;
    background: white;
    position: relative;
    transition: var(--transition);
}

.icon-btn:hover {
    background: var(--black);
    color: white;
    transform: translateY(-2px);
}

.count {
    position: absolute;
    right: -6px;
    top: -6px;
    width: 19px;
    height: 19px;
    display: grid;
    place-items: center;
    background: var(--blue);
    color: white;
    border-radius: 50%;
    font-size: 10px;
    font-weight: 800;
}

.menu-btn {
    display: none;
    width: 42px;
    height: 42px;
    border: 1px solid var(--border);
    border-radius: 12px;
    background: white;
}

/* =========================================================
   MOBILE MENU
========================================================= */

.mobile-menu {
    display: none;
    background: white;
    border-top: 1px solid var(--border);
    padding: 15px 20px;
}

.mobile-menu a {
    display: block;
    padding: 13px 0;
    border-bottom: 1px solid var(--border);
    font-weight: 700;
}

/* =========================================================
   HERO
========================================================= */

.hero {
    padding: 35px 0 0;
}

.hero-grid {
    display: grid;
    grid-template-columns: 1.25fr .75fr;
    gap: 18px;
}

.hero-main {
    min-height: 570px;
    border-radius: 28px;
    overflow: hidden;
    position: relative;

    background:
        linear-gradient(
            100deg,
            rgba(5,9,18,.98),
            rgba(5,9,18,.82),
            rgba(5,9,18,.2)
        ),
        url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1800&q=90")
        center/cover;
}

.hero-content {
    max-width: 680px;
    padding: 65px;
    color: white;
}

.eyebrow {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    background: rgba(255,255,255,.09);
    border: 1px solid rgba(255,255,255,.15);
    padding: 8px 13px;
    border-radius: 50px;
    font-size: 11px;
    font-weight: 800;
    margin-bottom: 24px;
}

.eyebrow i {
    color: #60a5fa;
}

.hero h1 {
    font-family: "Manrope", sans-serif;
    font-size: clamp(45px, 6vw, 76px);
    line-height: 1;
    letter-spacing: -4px;
    margin-bottom: 24px;
}

.hero h1 span {
    color: #60a5fa;
}

.hero p {
    color: #c7cedb;
    max-width: 560px;
    font-size: 16px;
    margin-bottom: 30px;
}

.buttons {
    display: flex;
    gap: 10px;
    flex-wrap: wrap;
}

.btn {
    border: 0;
    padding: 13px 21px;
    border-radius: 11px;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    gap: 9px;
    font-weight: 800;
    transition: var(--transition);
}

.btn-primary {
    background: var(--blue);
    color: white;
}

.btn-primary:hover {
    background: var(--blue-dark);
    transform: translateY(-3px);
    box-shadow: 0 12px 25px rgba(37,99,235,.3);
}

.btn-white {
    background: white;
    color: var(--black);
}

.btn-white:hover {
    transform: translateY(-3px);
}

/* =========================================================
   HERO SIDE
========================================================= */

.hero-side {
    display: grid;
    grid-template-rows: 1fr 1fr;
    gap: 18px;
}

.side-card {
    border-radius: 25px;
    padding: 32px;
    position: relative;
    overflow: hidden;
}

.side-card:first-child {
    background: #dce9ff;
}

.side-card:last-child {
    background: var(--dark);
    color: white;
}

.side-card h3 {
    font-family: "Manrope", sans-serif;
    font-size: 27px;
    line-height: 1.15;
    max-width: 260px;
    margin-bottom: 12px;
}

.side-card p {
    font-size: 13px;
    color: #667085;
    max-width: 260px;
}

.side-card:last-child p {
    color: #aab3c2;
}

.side-card img {
    position: absolute;
    width: 170px;
    height: 170px;
    object-fit: contain;
    right: -15px;
    bottom: -15px;
}

.side-price {
    font-size: 25px;
    font-weight: 800;
    margin-top: 20px;
}

/* =========================================================
   FEATURES
========================================================= */

.features {
    margin-top: 20px;
}

.feature-grid {
    display: grid;
    grid-template-columns: repeat(4,1fr);
    background: white;
    border: 1px solid var(--border);
    border-radius: 18px;
    box-shadow: var(--shadow);
    overflow: hidden;
}

.feature {
    padding: 25px;
    display: flex;
    gap: 14px;
    align-items: center;
    border-right: 1px solid var(--border);
}

.feature:last-child {
    border-right: 0;
}

.feature-icon {
    width: 45px;
    height: 45px;
    flex-shrink: 0;
    display: grid;
    place-items: center;
    border-radius: 12px;
    background: var(--blue-light);
    color: var(--blue);
}

.feature h4 {
    font-size: 13px;
}

.feature p {
    font-size: 11px;
    color: var(--muted);
}

/* =========================================================
   SECTION HEADER
========================================================= */

.section-head {
    display: flex;
    justify-content: space-between;
    align-items: end;
    margin-bottom: 30px;
}

.section-head h2 {
    font-family: "Manrope", sans-serif;
    font-size: 34px;
    letter-spacing: -1.5px;
}

.section-head p {
    color: var(--muted);
    font-size: 13px;
    margin-top: 4px;
}

.view-all {
    color: var(--blue);
    font-weight: 800;
    font-size: 13px;
}

/* =========================================================
   CATEGORIES
========================================================= */

.category-grid {
    display: grid;
    grid-template-columns: repeat(6,1fr);
    gap: 14px;
}

.category {
    background: white;
    border: 1px solid var(--border);
    border-radius: 17px;
    padding: 23px 10px;
    text-align: center;
    cursor: pointer;
    transition: var(--transition);
}

.category:hover {
    transform: translateY(-6px);
    border-color: #9dbbff;
    box-shadow: var(--shadow);
}

.category-icon {
    width: 58px;
    height: 58px;
    margin: auto auto 13px;
    display: grid;
    place-items: center;
    background: var(--blue-light);
    color: var(--blue);
    border-radius: 16px;
    font-size: 20px;
}

.category h4 {
    font-size: 13px;
}

.category p {
    color: var(--muted);
    font-size: 10px;
}

/* =========================================================
   PRODUCTS
========================================================= */

.product-grid {
    display: grid;
    grid-template-columns: repeat(4,1fr);
    gap: 20px;
}

.product {
    background: white;
    border: 1px solid var(--border);
    border-radius: 20px;
    overflow: hidden;
    transition: var(--transition);
}

.product:hover {
    transform: translateY(-7px);
    box-shadow: var(--shadow);
}

.product-image {
    height: 270px;
    position: relative;
    overflow: hidden;
    background: #f1f4f8;
}

.product-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: .5s ease;
}

.product:hover img {
    transform: scale(1.06);
}

.badge {
    position: absolute;
    top: 13px;
    left: 13px;
    z-index: 3;
    background: var(--black);
    color: white;
    padding: 6px 9px;
    border-radius: 7px;
    font-size: 9px;
    font-weight: 800;
}

.badge.sale {
    background: var(--red);
}

.wishlist {
    position: absolute;
    z-index: 4;
    right: 13px;
    top: 13px;
    width: 36px;
    height: 36px;
    border: 0;
    border-radius: 50%;
    background: rgba(255,255,255,.95);
}

.wishlist.active {
    color: var(--red);
    background: #fee2e2;
}

.product-info {
    padding: 18px;
}

.product-category {
    text-transform: uppercase;
    color: var(--muted);
    letter-spacing: .7px;
    font-size: 9px;
    font-weight: 800;
}

.product-title {
    font-size: 14px;
    margin: 5px 0;
}

.rating {
    color: var(--orange);
    font-size: 11px;
}

.rating span {
    color: var(--muted);
    margin-left: 3px;
}

.product-bottom {
    margin-top: 16px;
    display: flex;
    align-items: center;
    justify-content: space-between;
}

.price {
    font-size: 18px;
    font-weight: 800;
}

.old-price {
    color: #a2a9b6;
    text-decoration: line-through;
    font-size: 10px;
    margin-left: 4px;
}

.add-cart {
    width: 40px;
    height: 40px;
    border: 0;
    border-radius: 11px;
    background: var(--black);
    color: white;
    transition: var(--transition);
}

.add-cart:hover {
    background: var(--blue);
    transform: scale(1.08);
}

/* =========================================================
   DEAL SECTION
========================================================= */

.deal {
    background: var(--dark);
    color: white;
    border-radius: 27px;
    overflow: hidden;
    display: grid;
    grid-template-columns: .9fr 1.1fr;
}

.deal-image {
    min-height: 430px;
    background:
        url("https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=90")
        center/cover;
}

.deal-content {
    padding: 60px;
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.deal-label {
    color: #60a5fa;
    text-transform: uppercase;
    font-size: 10px;
    letter-spacing: 2px;
    font-weight: 800;
    margin-bottom: 10px;
}

.deal h2 {
    font-family: "Manrope", sans-serif;
    font-size: 43px;
    line-height: 1.1;
    margin-bottom: 14px;
}

.deal p {
    color: #aab3c2;
    font-size: 14px;
    max-width: 480px;
    margin-bottom: 24px;
}

.timer {
    display: flex;
    gap: 8px;
    margin-bottom: 22px;
}

.timer-box {
    width: 65px;
    padding: 10px;
    text-align: center;
    border: 1px solid #303846;
    border-radius: 10px;
}

.timer-box strong {
    display: block;
    font-size: 20px;
}

.timer-box span {
    color: #7d8797;
    text-transform: uppercase;
    font-size: 8px;
}

.deal-price {
    margin-bottom: 20px;
}

.deal-price strong {
    font-size: 30px;
}

.deal-price del {
    color: #737c8d;
    margin-left: 8px;
}

/* =========================================================
   REVIEWS
========================================================= */

.testimonials {
    display: grid;
    grid-template-columns: repeat(3,1fr);
    gap: 20px;
}

.testimonial {
    background: white;
    border: 1px solid var(--border);
    border-radius: 19px;
    padding: 25px;
    transition: var(--transition);
}

.testimonial:hover {
    transform: translateY(-5px);
    box-shadow: var(--shadow);
}

.stars {
    color: var(--orange);
    margin-bottom: 14px;
}

.testimonial p {
    font-size: 13px;
    color: #586174;
    margin-bottom: 22px;
}

.customer {
    display: flex;
    align-items: center;
    gap: 11px;
}

.customer img {
    width: 43px;
    height: 43px;
    border-radius: 50%;
    object-fit: cover;
}

.customer strong {
    font-size: 12px;
}

.customer span {
    display: block;
    color: var(--muted);
    font-size: 10px;
}

/* =========================================================
   NEWSLETTER
========================================================= */

.newsletter {
    border-radius: 25px;
    padding: 65px 30px;
    text-align: center;
    color: white;
    background:
        radial-gradient(circle at 80% 0%, #315eb5, transparent 35%),
        var(--black);
}

.newsletter h2 {
    font-family: "Manrope", sans-serif;
    font-size: 35px;
}

.newsletter p {
    color: #9ca6b7;
    max-width: 550px;
    margin: 8px auto 25px;
}

.newsletter-form {
    max-width: 510px;
    margin: auto;
    display: flex;
    gap: 7px;
    background: white;
    padding: 6px;
    border-radius: 12px;
}

.newsletter-form input {
    flex: 1;
    min-width: 0;
    border: 0;
    outline: 0;
    padding: 0 13px;
}

/* =========================================================
   FOOTER
========================================================= */

footer {
    background: var(--black);
    color: white;
    margin-top: 80px;
    padding: 65px 0 25px;
}

.footer-grid {
    display: grid;
    grid-template-columns: 2fr repeat(3,1fr);
    gap: 50px;
}

.footer-brand p {
    color: #727c8d;
    max-width: 320px;
    font-size: 12px;
    margin-top: 13px;
}

footer h4 {
    margin-bottom: 15px;
    font-size: 14px;
}

footer ul {
    list-style: none;
}

footer li {
    margin-bottom: 9px;
}

footer li a {
    color: #727c8d;
    font-size: 12px;
}

footer li a:hover {
    color: white;
}

.footer-bottom {
    border-top: 1px solid #202632;
    margin-top: 50px;
    padding-top: 20px;
    text-align: center;
    color: #596272;
    font-size: 10px;
}

/* =========================================================
   CART
========================================================= */

.cart-overlay {
    position: fixed;
    inset: 0;
    background: rgba(0,0,0,.6);
    z-index: 2000;
    opacity: 0;
    pointer-events: none;
    transition: .3s ease;
}

.cart-overlay.show {
    opacity: 1;
    pointer-events: auto;
}

.cart {
    position: absolute;
    right: 0;
    top: 0;
    width: min(430px,100%);
    height: 100%;
    background: white;
    transform: translateX(100%);
    transition: .3s ease;
    display: flex;
    flex-direction: column;
}

.cart-overlay.show .cart {
    transform: translateX(0);
}

.cart-header {
    padding: 21px;
    display: flex;
    justify-content: space-between;
    border-bottom: 1px solid var(--border);
}

.close-cart {
    width: 35px;
    height: 35px;
    border: 0;
    border-radius: 50%;
    background: #f1f3f7;
}

.cart-items {
    flex: 1;
    overflow-y: auto;
    padding: 20px;
}

.cart-item {
    display: flex;
    gap: 12px;
    padding-bottom: 17px;
    margin-bottom: 17px;
    border-bottom: 1px solid var(--border);
}

.cart-item img {
    width: 72px;
    height: 72px;
    object-fit: cover;
    border-radius: 10px;
}

.cart-item-info {
    flex: 1;
}

.cart-item-info h4 {
    font-size: 12px;
    margin-bottom: 4px;
}

.cart-price {
    font-weight: 800;
    font-size: 13px;
}

.quantity {
    display: flex;
    align-items: center;
    gap: 8px;
    margin-top: 7px;
}

.quantity button {
    width: 25px;
    height: 25px;
    border: 1px solid var(--border);
    background: white;
    border-radius: 6px;
}

.cart-footer {
    padding: 20px;
    border-top: 1px solid var(--border);
}

.cart-total {
    display: flex;
    justify-content: space-between;
    font-size: 18px;
    font-weight: 800;
    margin-bottom: 15px;
}

.checkout {
    width: 100%;
}

/* =========================================================
   TOAST
========================================================= */

.toast {
    position: fixed;
    right: 25px;
    bottom: 25px;
    background: var(--black);
    color: white;
    padding: 13px 18px;
    border-radius: 10px;
    z-index: 3000;
    transform: translateY(100px);
    opacity: 0;
    transition: .3s ease;
}

.toast.show {
    transform: translateY(0);
    opacity: 1;
}

/* =========================================================
   RESPONSIVE
========================================================= */

@media(max-width:1100px) {

    .nav {
        gap: 13px;
    }

    .search {
        width: 250px;
    }

    .category-grid {
        grid-template-columns: repeat(3,1fr);
    }

    .product-grid {
        grid-template-columns: repeat(3,1fr);
    }

    .hero-grid {
        grid-template-columns: 1fr;
    }

    .hero-side {
        grid-template-columns: 1fr 1fr;
        grid-template-rows: 1fr;
    }
}

@media(max-width:900px) {

    .nav {
        display: none;
    }

    .menu-btn {
        display: block;
    }

    .search {
        margin-left: auto;
    }

    .feature-grid {
        grid-template-columns: repeat(2,1fr);
    }

    .feature:nth-child(2) {
        border-right: 0;
    }

    .deal {
        grid-template-columns: 1fr;
    }

    .deal-image {
        min-height: 300px;
    }

    .testimonials {
        grid-template-columns: 1fr;
    }

    .footer-grid {
        grid-template-columns: 1fr 1fr;
    }
}

@media(max-width:650px) {

    .container {
        width: min(100% - 24px,var(--container));
    }

    .topbar {
        display: none;
    }

    .header-inner {
        min-height: 65px;
        gap: 8px;
    }

    .logo {
        font-size: 21px;
    }

    .search {
        display: none;
    }

    .header-actions .icon-btn:first-child {
        display: none;
    }

    .hero {
        padding-top: 15px;
    }

    .hero-main {
        min-height: 530px;
        border-radius: 22px;
    }

    .hero-content {
        padding: 30px 23px;
    }

    .hero h1 {
        font-size: 43px;
        letter-spacing: -2px;
    }

    .hero p {
        font-size: 13px;
    }

    .hero-side {
        grid-template-columns: 1fr;
    }

    .feature-grid {
        grid-template-columns: 1fr;
    }

    .feature {
        border-right: 0;
        border-bottom: 1px solid var(--border);
    }

    .feature:last-child {
        border-bottom: 0;
    }

    .section {
        padding: 55px 0;
    }

    .section-head {
        align-items: flex-start;
        flex-direction: column;
    }

    .section-head h2 {
        font-size: 28px;
    }

    .category-grid {
        grid-template-columns: repeat(2,1fr);
        gap: 9px;
    }

    .product-grid {
        grid-template-columns: 1fr 1fr;
        gap: 10px;
    }

    .product-image {
        height: 180px;
    }

    .product-info {
        padding: 12px;
    }

    .product-title {
        font-size: 12px;
    }

    .price {
        font-size: 15px;
    }

    .add-cart {
        width: 35px;
        height: 35px;
    }

    .deal-content {
        padding: 35px 23px;
    }

    .deal h2 {
        font-size: 32px;
    }

    .newsletter {
        padding: 45px 20px;
    }

    .newsletter h2 {
        font-size: 27px;
    }

    .newsletter-form {
        flex-direction: column;
        background: transparent;
        padding: 0;
    }

    .newsletter-form input {
        height: 47px;
        border-radius: 9px;
    }

    .newsletter-form button {
        width: 100%;
    }

    .footer-grid {
        grid-template-columns: 1fr 1fr;
        gap: 30px;
    }
}

@media(max-width:400px) {

    .product-grid {
        grid-template-columns: 1fr;
    }

    .hero h1 {
        font-size: 38px;
    }
}

</style>
</head>

<body>

<!-- =========================================================
     TOP BAR
========================================================= -->

<div class="topbar">

    <div class="container topbar-inner">

        <div>
            <i class="fas fa-bolt"></i>
            <strong>LIMITED OFFER</strong>
            — Save up to 40% this weekend
        </div>

        <div class="topbar-right">
            <span>Free Shipping</span>
            <span>Secure Payment</span>
            <span>24/7 Support</span>
        </div>

    </div>

</div>


<!-- =========================================================
     HEADER
========================================================= -->

<header>

<div class="container header-inner">

    <button
        class="menu-btn"
        id="mobileMenuBtn">

        <i class="fas fa-bars"></i>

    </button>


    <a
        href="#"
        class="logo">

        <i class="fas fa-cube"></i>
        NEXORA<span>.</span>

    </a>


    <nav class="nav">

        <a href="#home" class="active">
            Home
        </a>

        <a href="#categories">
            Categories
        </a>

        <a href="#products">
            Products
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

            <i class="fas fa-shopping-bag"></i>

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
    <a href="#products">Products</a>
    <a href="#deals">Deals</a>
    <a href="#reviews">Reviews</a>

</div>

</header>


<!-- =========================================================
     MAIN
========================================================= -->

<main>

<!-- HERO -->

<section
    class="hero"
    id="home">

<div class="container">

<div class="hero-grid">


    <div class="hero-main">

        <div class="hero-content">

            <div class="eyebrow">

                <i class="fas fa-sparkles"></i>

                NEW SEASON 2026

            </div>


            <h1>

                Better products.
                <span>Better living.</span>

            </h1>


            <p>

                Discover technology, fashion and lifestyle
                essentials carefully selected for people who
                expect more from every purchase.

            </p>


            <div class="buttons">

                <button
                    class="btn btn-primary"
                    id="shopNow">

                    Shop Collection

                    <i class="fas fa-arrow-right"></i>

                </button>


                <button
                    class="btn btn-white"
                    id="heroDeals">

                    View Deals

                </button>

            </div>

        </div>

    </div>


    <div class="hero-side">


        <div class="side-card">

            <h3>
                Premium tech,
                smarter prices.
            </h3>

            <p>
                Upgrade your everyday setup with
                our latest technology collection.
            </p>

            <div class="side-price">
                From $79
            </div>

            <img
                src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=500&q=85"
                alt="Smart Watch">

        </div>


        <div class="side-card">

            <h3>
                The essentials
                you actually need.
            </h3>

            <p>
                Curated products. Reliable quality.
                Delivered directly to your door.
            </p>

            <div class="side-price">
                40% OFF
            </div>

            <img
                src="https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?auto=format&fit=crop&w=500&q=85"
                alt="Lifestyle">

        </div>

    </div>

</div>

</div>

</section>


<!-- FEATURES -->

<section class="features">

<div class="container">

<div class="feature-grid">


    <div class="feature">

        <div class="feature-icon">
            <i class="fas fa-truck-fast"></i>
        </div>

        <div>
            <h4>Free Shipping</h4>
            <p>On orders over $100</p>
        </div>

    </div>


    <div class="feature">

        <div class="feature-icon">
            <i class="fas fa-shield-halved"></i>
        </div>

        <div>
            <h4>Secure Payment</h4>
            <p>100% protected checkout</p>
        </div>

    </div>


    <div class="feature">

        <div class="feature-icon">
            <i class="fas fa-arrow-rotate-left"></i>
        </div>

        <div>
            <h4>Easy Returns</h4>
            <p>30-day return policy</p>
        </div>

    </div>


    <div class="feature">

        <div class="feature-icon">
            <i class="fas fa-headset"></i>
        </div>

        <div>
            <h4>Expert Support</h4>
            <p>Available 24/7</p>
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

        <h2>
            Shop by Category
        </h2>

        <p>
            Find exactly what you're looking for.
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

        <h2>
            Trending Products
        </h2>

        <p>
            Our most popular picks right now.
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
            Flash Sale
        </div>


        <h2>
            Power up your
            productivity.
        </h2>


        <p>
            Get the MacBook Pro at an exclusive price.
            This offer disappears when the countdown ends.
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

            <strong>$1,699</strong>

            <del>$1,999</del>

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


<!-- REVIEWS -->

<section
    class="section"
    id="reviews">

<div class="container">

<div class="section-head">

    <div>

        <h2>
            What Customers Say
        </h2>

        <p>
            Trusted by thousands of shoppers.
        </p>

    </div>

</div>


<div class="testimonials">


    <div class="testimonial">

        <div class="stars">
            ★★★★★
        </div>

        <p>
            "Everything about the experience was
            excellent. The product arrived quickly
            and the quality exceeded my expectations."
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
            "The website is clean, fast and easy
            to use. I found exactly what I wanted
            and checkout took less than a minute."
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
            "Great selection, competitive prices and
            very helpful customer support. I'll
            definitely order again."
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
                    Verified Customer
                </span>

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

    <h2>
        Get the best deals first.
    </h2>

    <p>
        Subscribe for new arrivals, exclusive offers
        and early access to our biggest sales.
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

            <i class="fas fa-cube"></i>
            NEXORA<span>.</span>

        </div>

        <p>
            A modern marketplace for technology,
            fashion and lifestyle products.
        </p>

    </div>


    <div>

        <h4>Marketplace</h4>

        <ul>
            <li><a href="#">New Arrivals</a></li>
            <li><a href="#">Best Sellers</a></li>
            <li><a href="#">Deals</a></li>
            <li><a href="#">Gift Cards</a></li>
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
    NEXORA Marketplace. All rights reserved.

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
            Shopping Cart
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
            color:#788195;
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
    id: 1,
    name: "iPhone 14 Pro Max",
    category: "Smartphones",
    price: 1099,
    oldPrice: 1199,
    rating: 5,
    reviews: 128,
    badge: "New",
    image:
    "https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?auto=format&fit=crop&w=700&q=85"
},

{
    id: 2,
    name: 'MacBook Pro 14"',
    category: "Laptops",
    price: 1699,
    oldPrice: 1999,
    rating: 5,
    reviews: 86,
    badge: "Popular",
    image:
    "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=85"
},

{
    id: 3,
    name: "Apple Watch Series 8",
    category: "Accessories",
    price: 349,
    oldPrice: 399,
    rating: 5,
    reviews: 214,
    badge: "-25%",
    image:
    "https://images.unsplash.com/photo-1544117519-31a4b719223d?auto=format&fit=crop&w=700&q=85"
},

{
    id: 4,
    name: "Nike Air Max",
    category: "Footwear",
    price: 150,
    oldPrice: 180,
    rating: 4,
    reviews: 53,
    badge: "Sale",
    image:
    "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
},

{
    id: 5,
    name: "Sony A7 IV Camera",
    category: "Cameras",
    price: 2499,
    oldPrice: null,
    rating: 5,
    reviews: 42,
    badge: "Pro",
    image:
    "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85"
},

{
    id: 6,
    name: "Premium Fragrance",
    category: "Beauty",
    price: 120,
    oldPrice: 150,
    rating: 5,
    reviews: 189,
    badge: "Sale",
    image:
    "https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=700&q=85"
},

{
    id: 7,
    name: "Travel Backpack",
    category: "Accessories",
    price: 79,
    oldPrice: 99,
    rating: 4,
    reviews: 67,
    badge: "Sale",
    image:
    "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
},

{
    id: 8,
    name: "Wireless Headphones",
    category: "Audio",
    price: 399,
    oldPrice: null,
    rating: 5,
    reviews: 156,
    badge: "Best Seller",
    image:
    "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"
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


categories.forEach(category => {

    const card =
    document.createElement("div");

    card.className = "category";

    card.innerHTML = `

        <div class="category-icon">
            <i class="fas ${category[1]}"></i>
        </div>

        <h4>${category[0]}</h4>

        <p>Explore collection</p>

    `;

    card.addEventListener("click", () => {

        searchInput.value = category[0];

        filterProducts(category[0]);

        document
        .getElementById("products")
        .scrollIntoView({
            behavior: "smooth"
        });

    });

    categoryGrid.appendChild(card);

});


/* =========================================================
   RENDER PRODUCTS
========================================================= */

const productGrid =
document.getElementById("productGrid");


function renderProducts(list) {

    productGrid.innerHTML = "";


    if (!list.length) {

        productGrid.innerHTML = `

            <div style="
                grid-column:1/-1;
                text-align:center;
                padding:70px;
                color:#788195;
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


    list.forEach(product => {

        const card =
        document.createElement("article");

        card.className = "product";


        const badgeClass =
        product.badge.includes("%") ||
        product.badge === "Sale"
        ? "sale"
        : "";


        card.innerHTML = `

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

function attachProductEvents() {

    document
    .querySelectorAll(".add-cart")
    .forEach(button => {

        button.addEventListener("click", () => {

            addToCart(
                Number(button.dataset.id)
            );

        });

    });


    document
    .querySelectorAll(".wishlist")
    .forEach(button => {

        button.addEventListener("click", () => {

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


function filterProducts(query) {

    const q =
    query.trim().toLowerCase();


    if (!q) {

        renderProducts(products);

        return;

    }


    const result =
    products.filter(product =>

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
.addEventListener("click", () => {

    filterProducts(
        searchInput.value
    );

});


searchInput
.addEventListener("keydown", event => {

    if (event.key === "Enter") {

        filterProducts(
            event.target.value
        );

        document
        .getElementById("products")
        .scrollIntoView({
            behavior: "smooth"
        });

    }

});


/* =========================================================
   CART
========================================================= */

let cart = [];


function addToCart(productId) {

    const product =
    products.find(
        p => p.id === productId
    );


    const existing =
    cart.find(
        item => item.id === productId
    );


    if (existing) {

        existing.quantity++;

    } else {

        cart.push({
            ...product,
            quantity: 1
        });

    }


    updateCart();


    showToast(
        `${product.name} added to cart`
    );

}


function updateCart() {

    const count =
    cart.reduce(
        (sum,item) =>
        sum + item.quantity,
        0
    );


    document
    .getElementById("cartCount")
    .textContent = count;


    const cartItems =
    document.getElementById("cartItems");


    if (!cart.length) {

        cartItems.innerHTML = `

            <p style="
                text-align:center;
                color:#788195;
                padding:40px 0;
            ">
                Your cart is empty.
            </p>

        `;

        document
        .getElementById("cartTotal")
        .textContent = "$0";

        return;

    }


    cartItems.innerHTML = "";

    let total = 0;


    cart.forEach(item => {

        total +=
        item.price * item.quantity;


        const element =
        document.createElement("div");

        element.className = "cart-item";


        element.innerHTML = `

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
    .textContent =
    "$" + total.toLocaleString();

}


function changeQuantity(id, change) {

    const item =
    cart.find(
        item => item.id === id
    );


    if (!item) return;


    item.quantity += change;


    if (item.quantity <= 0) {

        removeFromCart(id);

        return;

    }


    updateCart();

}


function removeFromCart(id) {

    cart =
    cart.filter(
        item => item.id !== id
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
.addEventListener("click", () => {

    cartOverlay.classList.add("show");

});


document
.getElementById("closeCart")
.addEventListener("click", () => {

    cartOverlay.classList.remove("show");

});


cartOverlay.addEventListener("click", event => {

    if (event.target === cartOverlay) {

        cartOverlay.classList.remove("show");

    }

});


/* =========================================================
   WISHLIST
========================================================= */

function updateWishlistCount() {

    const count =
    document.querySelectorAll(
        ".wishlist.active"
    ).length;


    document
    .getElementById("wishlistCount")
    .textContent = count;

}


/* =========================================================
   MOBILE MENU
========================================================= */

const mobileMenu =
document.getElementById("mobileMenu");


document
.getElementById("mobileMenuBtn")
.addEventListener("click", () => {

    mobileMenu.style.display =
    mobileMenu.style.display === "block"
    ? "none"
    : "block";

});


document
.querySelectorAll(".mobile-menu a")
.forEach(link => {

    link.addEventListener("click", () => {

        mobileMenu.style.display = "none";

    });

});


/* =========================================================
   HERO BUTTONS
========================================================= */

document
.getElementById("shopNow")
.addEventListener("click", () => {

    document
    .getElementById("products")
    .scrollIntoView({
        behavior: "smooth"
    });

});


document
.getElementById("heroDeals")
.addEventListener("click", () => {

    document
    .getElementById("deals")
    .scrollIntoView({
        behavior: "smooth"
    });

});


/* =========================================================
   FLASH TIMER
========================================================= */

const targetDate =
new Date(
    Date.now() +
    24 * 60 * 60 * 1000
);


function updateTimer() {

    const difference =
    targetDate - new Date();


    if (difference <= 0) return;


    const days =
    Math.floor(
        difference /
        (1000 * 60 * 60 * 24)
    );


    const hours =
    Math.floor(
        difference /
        (1000 * 60 * 60) % 24
    );


    const minutes =
    Math.floor(
        difference /
        (1000 * 60) % 60
    );


    const seconds =
    Math.floor(
        difference / 1000 % 60
    );


    document.getElementById("days")
    .textContent =
    String(days).padStart(2,"0");


    document.getElementById("hours")
    .textContent =
    String(hours).padStart(2,"0");


    document.getElementById("minutes")
    .textContent =
    String(minutes).padStart(2,"0");


    document.getElementById("seconds")
    .textContent =
    String(seconds).padStart(2,"0");

}


setInterval(updateTimer,1000);

updateTimer();


/* =========================================================
   DEAL BUTTON
========================================================= */

document
.getElementById("buyDeal")
.addEventListener("click", () => {

    addToCart(2);

    cartOverlay.classList.add("show");

});


/* =========================================================
   NEWSLETTER
========================================================= */

document
.getElementById("newsletterForm")
.addEventListener("submit", event => {

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
.addEventListener("click", () => {

    if (!cart.length) {

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


function showToast(message) {

    const toast =
    document.getElementById("toast");


    toast.textContent = message;

    toast.classList.add("show");


    clearTimeout(toastTimer);


    toastTimer =
    setTimeout(() => {

        toast.classList.remove("show");

    }, 2500);

}


/* =========================================================
   INITIALIZE
========================================================= */

renderProducts(products);

updateCart();

document
.getElementById("year")
.textContent =
new Date().getFullYear();

</script>

</body>
</html>
