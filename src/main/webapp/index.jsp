<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

```
<title>NexusShop | Premium E-Commerce</title>

<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Manrope:wght@600;700;800&display=swap" rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

    /* =========================================================
       GLOBAL
    ========================================================= */

    :root {
        --primary: #111827;
        --secondary: #6b7280;
        --accent: #635bff;
        --accent-dark: #5046e5;
        --success: #16a34a;
        --danger: #ef4444;
        --warning: #f59e0b;
        --background: #f8fafc;
        --white: #ffffff;
        --border: #e5e7eb;
        --container: 1240px;
        --radius: 18px;
        --shadow: 0 10px 30px rgba(15, 23, 42, .08);
        --transition: .25s ease;
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
        background: var(--background);
        color: var(--primary);
        line-height: 1.6;
    }

    button,
    input {
        font-family: inherit;
    }

    button {
        cursor: pointer;
    }

    a {
        text-decoration: none;
        color: inherit;
    }

    img {
        max-width: 100%;
        display: block;
    }

    .container {
        width: min(100% - 40px, var(--container));
        margin: auto;
    }

    .section {
        padding: 80px 0;
    }

    .section-header {
        display: flex;
        align-items: end;
        justify-content: space-between;
        margin-bottom: 30px;
        gap: 20px;
    }

    .section-header h2 {
        font-family: "Manrope", sans-serif;
        font-size: 32px;
        font-weight: 800;
        letter-spacing: -.8px;
    }

    .section-header p {
        color: var(--secondary);
        margin-top: 6px;
    }

    .view-all {
        color: var(--accent);
        font-weight: 700;
        white-space: nowrap;
    }

    /* =========================================================
       TOP BAR
    ========================================================= */

    .topbar {
        background: var(--primary);
        color: white;
        font-size: 13px;
    }

    .topbar-inner {
        min-height: 38px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .topbar a {
        opacity: .9;
        margin-left: 18px;
    }

    /* =========================================================
       HEADER
    ========================================================= */

    header {
        background: rgba(255,255,255,.94);
        backdrop-filter: blur(15px);
        border-bottom: 1px solid var(--border);
        position: sticky;
        top: 0;
        z-index: 1000;
    }

    .header-inner {
        min-height: 76px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        gap: 25px;
    }

    .logo {
        font-family: "Manrope", sans-serif;
        font-size: 25px;
        font-weight: 800;
        white-space: nowrap;
    }

    .logo span {
        color: var(--accent);
    }

    .nav-links {
        display: flex;
        align-items: center;
        gap: 28px;
        list-style: none;
    }

    .nav-links a {
        font-size: 14px;
        font-weight: 600;
        color: #374151;
        transition: var(--transition);
    }

    .nav-links a:hover,
    .nav-links a.active {
        color: var(--accent);
    }

    .header-search {
        flex: 1;
        max-width: 320px;
        position: relative;
    }

    .header-search input {
        width: 100%;
        height: 44px;
        border: 1px solid var(--border);
        border-radius: 999px;
        padding: 0 45px 0 18px;
        outline: none;
        background: #f8fafc;
    }

    .header-search button {
        position: absolute;
        right: 6px;
        top: 5px;
        width: 34px;
        height: 34px;
        border: none;
        border-radius: 50%;
        background: var(--primary);
        color: white;
    }

    .header-actions {
        display: flex;
        gap: 8px;
    }

    .header-btn {
        width: 42px;
        height: 42px;
        border: 1px solid var(--border);
        background: white;
        border-radius: 50%;
        position: relative;
        transition: var(--transition);
    }

    .header-btn:hover {
        background: var(--primary);
        color: white;
        transform: translateY(-2px);
    }

    .count {
        position: absolute;
        right: -3px;
        top: -4px;
        width: 19px;
        height: 19px;
        background: var(--danger);
        color: white;
        border-radius: 50%;
        font-size: 10px;
        display: grid;
        place-items: center;
        font-weight: 800;
    }

    .mobile-menu-btn {
        display: none;
        width: 42px;
        height: 42px;
        border: 1px solid var(--border);
        border-radius: 10px;
        background: white;
    }

    /* =========================================================
       MOBILE MENU
    ========================================================= */

    .mobile-menu {
        display: none;
        background: white;
        border-top: 1px solid var(--border);
        padding: 20px;
    }

    .mobile-menu a {
        display: block;
        padding: 12px 0;
        border-bottom: 1px solid var(--border);
        font-weight: 600;
    }

    /* =========================================================
       HERO
    ========================================================= */

    .hero {
        min-height: 600px;
        display: flex;
        align-items: center;
        position: relative;
        overflow: hidden;
        background:
            linear-gradient(
                90deg,
                rgba(17,24,39,.96) 0%,
                rgba(17,24,39,.80) 45%,
                rgba(17,24,39,.15) 100%
            ),
            url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1800&q=85")
            center/cover;
    }

    .hero-content {
        max-width: 650px;
        color: white;
    }

    .hero-badge {
        display: inline-flex;
        align-items: center;
        gap: 8px;
        padding: 8px 14px;
        background: rgba(255,255,255,.12);
        border: 1px solid rgba(255,255,255,.2);
        border-radius: 999px;
        font-size: 13px;
        margin-bottom: 20px;
    }

    .hero h1 {
        font-family: "Manrope", sans-serif;
        font-size: clamp(42px, 6vw, 72px);
        line-height: 1.05;
        letter-spacing: -2.5px;
        margin-bottom: 22px;
    }

    .hero h1 span {
        color: #a5b4fc;
    }

    .hero p {
        color: rgba(255,255,255,.82);
        font-size: 17px;
        max-width: 560px;
        margin-bottom: 32px;
    }

    .hero-buttons {
        display: flex;
        gap: 12px;
        flex-wrap: wrap;
    }

    .btn {
        border: none;
        padding: 13px 22px;
        border-radius: 999px;
        font-weight: 700;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        gap: 9px;
        transition: var(--transition);
    }

    .btn-primary {
        background: var(--accent);
        color: white;
    }

    .btn-primary:hover {
        background: var(--accent-dark);
        transform: translateY(-2px);
    }

    .btn-white {
        background: white;
        color: var(--primary);
    }

    .btn-white:hover {
        transform: translateY(-2px);
    }

    /* =========================================================
       FEATURES
    ========================================================= */

    .features {
        margin-top: -40px;
        position: relative;
        z-index: 5;
    }

    .feature-grid {
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        background: white;
        border-radius: var(--radius);
        box-shadow: var(--shadow);
        overflow: hidden;
    }

    .feature {
        display: flex;
        align-items: center;
        gap: 15px;
        padding: 25px;
        border-right: 1px solid var(--border);
    }

    .feature:last-child {
        border-right: none;
    }

    .feature-icon {
        width: 48px;
        height: 48px;
        display: grid;
        place-items: center;
        border-radius: 14px;
        background: #eef2ff;
        color: var(--accent);
        font-size: 19px;
    }

    .feature h4 {
        font-size: 14px;
        margin-bottom: 2px;
    }

    .feature p {
        color: var(--secondary);
        font-size: 12px;
    }

    /* =========================================================
       CATEGORIES
    ========================================================= */

    .category-grid {
        display: grid;
        grid-template-columns: repeat(6, 1fr);
        gap: 16px;
    }

    .category {
        background: white;
        border: 1px solid var(--border);
        border-radius: var(--radius);
        padding: 25px 15px;
        text-align: center;
        cursor: pointer;
        transition: var(--transition);
    }

    .category:hover {
        transform: translateY(-7px);
        box-shadow: var(--shadow);
        border-color: #c7d2fe;
    }

    .category-icon {
        width: 62px;
        height: 62px;
        margin: auto auto 14px;
        display: grid;
        place-items: center;
        border-radius: 18px;
        background: #f1f5f9;
        font-size: 23px;
        color: var(--accent);
    }

    .category h4 {
        font-size: 14px;
    }

    .category p {
        font-size: 12px;
        color: var(--secondary);
        margin-top: 4px;
    }

    /* =========================================================
       PRODUCT GRID
    ========================================================= */

    .product-grid {
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        gap: 22px;
    }

    .product {
        background: white;
        border: 1px solid var(--border);
        border-radius: var(--radius);
        overflow: hidden;
        transition: var(--transition);
        position: relative;
    }

    .product:hover {
        transform: translateY(-6px);
        box-shadow: var(--shadow);
    }

    .product-image {
        height: 270px;
        background: #f3f4f6;
        position: relative;
        overflow: hidden;
    }

    .product-image img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        transition: .5s ease;
    }

    .product:hover .product-image img {
        transform: scale(1.06);
    }

    .product-badge {
        position: absolute;
        left: 14px;
        top: 14px;
        padding: 6px 10px;
        border-radius: 999px;
        background: var(--primary);
        color: white;
        font-size: 11px;
        font-weight: 800;
        z-index: 2;
    }

    .product-badge.sale {
        background: var(--danger);
    }

    .wishlist {
        position: absolute;
        right: 14px;
        top: 14px;
        width: 38px;
        height: 38px;
        border: none;
        border-radius: 50%;
        background: rgba(255,255,255,.95);
        z-index: 3;
        transition: var(--transition);
    }

    .wishlist:hover,
    .wishlist.active {
        background: #fee2e2;
        color: var(--danger);
    }

    .product-info {
        padding: 18px;
    }

    .product-category {
        color: var(--secondary);
        font-size: 12px;
        text-transform: uppercase;
        letter-spacing: .6px;
        font-weight: 700;
    }

    .product-title {
        font-size: 15px;
        margin: 5px 0 9px;
    }

    .rating {
        color: var(--warning);
        font-size: 12px;
    }

    .rating span {
        color: var(--secondary);
        margin-left: 4px;
    }

    .product-bottom {
        display: flex;
        align-items: center;
        justify-content: space-between;
        gap: 10px;
        margin-top: 14px;
    }

    .price {
        font-size: 19px;
        font-weight: 800;
    }

    .old-price {
        color: #9ca3af;
        text-decoration: line-through;
        font-size: 12px;
        margin-left: 5px;
    }

    .add-cart {
        width: 42px;
        height: 42px;
        border: none;
        border-radius: 12px;
        background: var(--primary);
        color: white;
        transition: var(--transition);
    }

    .add-cart:hover {
        background: var(--accent);
        transform: scale(1.05);
    }

    /* =========================================================
       FLASH SALE
    ========================================================= */

    .flash-sale {
        background: #111827;
        color: white;
        border-radius: 28px;
        overflow: hidden;
        display: grid;
        grid-template-columns: 1fr 1fr;
    }

    .flash-image {
        min-height: 420px;
        background:
            url("https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85")
            center/cover;
    }

    .flash-content {
        padding: 60px;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }

    .sale-label {
        color: #a5b4fc;
        text-transform: uppercase;
        letter-spacing: 2px;
        font-size: 12px;
        font-weight: 800;
        margin-bottom: 12px;
    }

    .flash-content h2 {
        font-family: "Manrope";
        font-size: 42px;
        line-height: 1.1;
        margin-bottom: 15px;
    }

    .flash-content p {
        color: #cbd5e1;
        margin-bottom: 25px;
    }

    .timer {
        display: flex;
        gap: 10px;
        margin-bottom: 28px;
    }

    .timer-box {
        min-width: 68px;
        padding: 12px;
        border: 1px solid #374151;
        border-radius: 12px;
        text-align: center;
    }

    .timer-box strong {
        display: block;
        font-size: 21px;
    }

    .timer-box span {
        font-size: 10px;
        color: #9ca3af;
        text-transform: uppercase;
    }

    .flash-price {
        margin-bottom: 22px;
    }

    .flash-price strong {
        font-size: 32px;
    }

    .flash-price del {
        color: #9ca3af;
        margin-left: 10px;
    }

    /* =========================================================
       TESTIMONIALS
    ========================================================= */

    .testimonial-grid {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        gap: 20px;
    }

    .testimonial {
        background: white;
        border: 1px solid var(--border);
        border-radius: var(--radius);
        padding: 25px;
    }

    .testimonial .stars {
        color: var(--warning);
        margin-bottom: 15px;
    }

    .testimonial p {
        color: #4b5563;
        font-size: 14px;
        margin-bottom: 22px;
    }

    .customer {
        display: flex;
        align-items: center;
        gap: 12px;
    }

    .customer img {
        width: 44px;
        height: 44px;
        border-radius: 50%;
        object-fit: cover;
    }

    .customer strong {
        font-size: 14px;
    }

    .customer span {
        display: block;
        font-size: 12px;
        color: var(--secondary);
    }

    /* =========================================================
       NEWSLETTER
    ========================================================= */

    .newsletter {
        background:
            linear-gradient(135deg, #4f46e5, #7c3aed);
        border-radius: 25px;
        color: white;
        padding: 55px;
        text-align: center;
    }

    .newsletter h2 {
        font-family: "Manrope";
        font-size: 34px;
        margin-bottom: 8px;
    }

    .newsletter p {
        color: #ddd6fe;
        margin-bottom: 25px;
    }

    .newsletter-form {
        max-width: 500px;
        margin: auto;
        display: flex;
        gap: 8px;
        background: white;
        padding: 6px;
        border-radius: 999px;
    }

    .newsletter-form input {
        flex: 1;
        border: none;
        outline: none;
        padding: 0 15px;
        min-width: 0;
    }

    /* =========================================================
       FOOTER
    ========================================================= */

    footer {
        background: #0b1120;
        color: white;
        margin-top: 80px;
        padding: 65px 0 25px;
    }

    .footer-grid {
        display: grid;
        grid-template-columns: 2fr repeat(3, 1fr);
        gap: 50px;
    }

    .footer-brand p {
        color: #94a3b8;
        margin-top: 15px;
        max-width: 330px;
        font-size: 14px;
    }

    footer h4 {
        margin-bottom: 15px;
    }

    footer ul {
        list-style: none;
    }

    footer li {
        margin-bottom: 10px;
    }

    footer li a {
        color: #94a3b8;
        font-size: 13px;
    }

    footer li a:hover {
        color: white;
    }

    .footer-bottom {
        border-top: 1px solid #1e293b;
        margin-top: 50px;
        padding-top: 22px;
        text-align: center;
        color: #64748b;
        font-size: 12px;
    }

    /* =========================================================
       CART DRAWER
    ========================================================= */

    .cart-overlay {
        position: fixed;
        inset: 0;
        background: rgba(0,0,0,.5);
        z-index: 2000;
        opacity: 0;
        pointer-events: none;
        transition: var(--transition);
    }

    .cart-overlay.show {
        opacity: 1;
        pointer-events: auto;
    }

    .cart-drawer {
        position: absolute;
        right: 0;
        top: 0;
        height: 100%;
        width: min(420px, 100%);
        background: white;
        transform: translateX(100%);
        transition: .3s ease;
        display: flex;
        flex-direction: column;
    }

    .cart-overlay.show .cart-drawer {
        transform: translateX(0);
    }

    .cart-header {
        padding: 22px;
        border-bottom: 1px solid var(--border);
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .close-cart {
        width: 36px;
        height: 36px;
        border: none;
        background: #f3f4f6;
        border-radius: 50%;
    }

    .cart-items {
        flex: 1;
        overflow-y: auto;
        padding: 20px;
    }

    .cart-item {
        display: flex;
        gap: 12px;
        margin-bottom: 18px;
        padding-bottom: 18px;
        border-bottom: 1px solid var(--border);
    }

    .cart-item img {
        width: 75px;
        height: 75px;
        object-fit: cover;
        border-radius: 12px;
    }

    .cart-item-info {
        flex: 1;
    }

    .cart-item-info h4 {
        font-size: 14px;
        margin-bottom: 5px;
    }

    .cart-item-price {
        font-weight: 800;
    }

    .quantity {
        display: flex;
        align-items: center;
        gap: 10px;
        margin-top: 8px;
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
        font-weight: 800;
        font-size: 18px;
        margin-bottom: 15px;
    }

    .checkout-btn {
        width: 100%;
    }

    /* =========================================================
       TOAST
    ========================================================= */

    .toast {
        position: fixed;
        right: 25px;
        bottom: 25px;
        background: #111827;
        color: white;
        padding: 14px 20px;
        border-radius: 12px;
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

        .nav-links {
            gap: 15px;
        }

        .category-grid {
            grid-template-columns: repeat(3, 1fr);
        }

        .product-grid {
            grid-template-columns: repeat(3, 1fr);
        }

    }

    @media(max-width:900px) {

        .nav-links {
            display: none;
        }

        .mobile-menu-btn {
            display: block;
        }

        .header-search {
            max-width: 280px;
        }

        .feature-grid {
            grid-template-columns: repeat(2, 1fr);
        }

        .feature:nth-child(2) {
            border-right: none;
        }

        .flash-sale {
            grid-template-columns: 1fr;
        }

        .flash-image {
            min-height: 300px;
        }

        .testimonial-grid {
            grid-template-columns: 1fr;
        }

        .footer-grid {
            grid-template-columns: 1fr 1fr;
        }

    }

    @media(max-width:650px) {

        .container {
            width: min(100% - 25px, var(--container));
        }

        .topbar {
            display: none;
        }

        .header-inner {
            min-height: 65px;
            gap: 10px;
        }

        .logo {
            font-size: 21px;
        }

        .header-search {
            display: none;
        }

        .header-actions .header-btn:nth-child(2) {
            display: none;
        }

        .hero {
            min-height: 520px;
        }

        .hero h1 {
            font-size: 43px;
            letter-spacing: -1.5px;
        }

        .hero p {
            font-size: 15px;
        }

        .features {
            margin-top: -20px;
        }

        .feature-grid {
            grid-template-columns: 1fr;
        }

        .feature {
            border-right: none;
            border-bottom: 1px solid var(--border);
        }

        .feature:last-child {
            border-bottom: none;
        }

        .section {
            padding: 55px 0;
        }

        .section-header {
            align-items: start;
            flex-direction: column;
        }

        .section-header h2 {
            font-size: 27px;
        }

        .category-grid {
            grid-template-columns: repeat(2, 1fr);
        }

        .product-grid {
            grid-template-columns: 1fr 1fr;
            gap: 12px;
        }

        .product-image {
            height: 190px;
        }

        .product-info {
            padding: 13px;
        }

        .product-title {
            font-size: 13px;
        }

        .price {
            font-size: 16px;
        }

        .add-cart {
            width: 36px;
            height: 36px;
        }

        .flash-content {
            padding: 35px 25px;
        }

        .flash-content h2 {
            font-size: 32px;
        }

        .timer {
            gap: 6px;
        }

        .timer-box {
            min-width: 58px;
        }

        .newsletter {
            padding: 40px 20px;
        }

        .newsletter h2 {
            font-size: 28px;
        }

        .newsletter-form {
            border-radius: 15px;
            flex-direction: column;
            background: transparent;
            padding: 0;
        }

        .newsletter-form input {
            height: 48px;
            border-radius: 10px;
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

        .category-grid {
            grid-template-columns: 1fr 1fr;
        }

    }

</style>
```

</head>

<body>

<!-- =========================================================
     TOP BAR
========================================================= -->

<div class="topbar">
    <div class="container topbar-inner">
        <span>🚚 Free shipping on orders over $100</span>

```
    <div>
        <a href="#">Help Center</a>
        <a href="#">Track Order</a>
    </div>
</div>
```

</div>

<!-- =========================================================
     HEADER
========================================================= -->

<header>

```
<div class="container header-inner">

    <button class="mobile-menu-btn" id="mobileMenuBtn">
        <i class="fas fa-bars"></i>
    </button>

    <a href="#" class="logo">
        Nexus<span>Shop</span>
    </a>

    <nav>
        <ul class="nav-links">
            <li><a href="#home" class="active">Home</a></li>
            <li><a href="#categories">Categories</a></li>
            <li><a href="#products">Products</a></li>
            <li><a href="#deals">Deals</a></li>
            <li><a href="#reviews">Reviews</a></li>
        </ul>
    </nav>

    <div class="header-search">
        <input
            type="search"
            id="searchInput"
            placeholder="Search products...">

        <button id="searchBtn">
            <i class="fas fa-search"></i>
        </button>
    </div>

    <div class="header-actions">

        <button class="header-btn" title="Wishlist">
            <i class="far fa-heart"></i>
            <span class="count" id="wishlistCount">0</span>
        </button>

        <button class="header-btn" id="cartBtn" title="Shopping Cart">
            <i class="fas fa-shopping-bag"></i>
            <span class="count" id="cartCount">0</span>
        </button>

    </div>

</div>

<div class="mobile-menu" id="mobileMenu">

    <a href="#home">Home</a>
    <a href="#categories">Categories</a>
    <a href="#products">Products</a>
    <a href="#deals">Deals</a>
    <a href="#reviews">Reviews</a>

</div>
```

</header>

<!-- =========================================================
     HERO
========================================================= -->

<main>

<section class="hero" id="home">

```
<div class="container">

    <div class="hero-content">

        <div class="hero-badge">
            <i class="fas fa-bolt"></i>
            New Season Collection
        </div>

        <h1>
            Everything you want.
            <span>All in one place.</span>
        </h1>

        <p>
            Discover premium technology, fashion and lifestyle products
            carefully selected for modern living.
        </p>

        <div class="hero-buttons">

            <button class="btn btn-primary" id="shopNow">
                Shop Collection
                <i class="fas fa-arrow-right"></i>
            </button>

            <button class="btn btn-white" id="heroDeals">
                View Deals
            </button>

        </div>

    </div>

</div>
```

</section>

<!-- =========================================================
     FEATURES
========================================================= -->

<section class="features">

```
<div class="container">

    <div class="feature-grid">

        <div class="feature">

            <div class="feature-icon">
                <i class="fas fa-truck-fast"></i>
            </div>

            <div>
                <h4>Free Shipping</h4>
                <p>Orders over $100</p>
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
                <i class="fas fa-rotate-left"></i>
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
                <h4>24/7 Support</h4>
                <p>We're here to help</p>
            </div>

        </div>

    </div>

</div>
```

</section>

<!-- =========================================================
     CATEGORIES
========================================================= -->

<section class="section" id="categories">

```
<div class="container">

    <div class="section-header">

        <div>
            <h2>Shop by Category</h2>
            <p>Find exactly what you're looking for.</p>
        </div>

        <a href="#products" class="view-all">
            View all →
        </a>

    </div>

    <div class="category-grid" id="categoryGrid"></div>

</div>
```

</section>

<!-- =========================================================
     PRODUCTS
========================================================= -->

<section class="section" id="products">

```
<div class="container">

    <div class="section-header">

        <div>
            <h2>Trending Products</h2>
            <p>Popular products customers are loving right now.</p>
        </div>

        <a href="#products" class="view-all" id="showAll">
            View all →
        </a>

    </div>

    <div class="product-grid" id="productGrid"></div>

</div>
```

</section>

<!-- =========================================================
     FLASH SALE
========================================================= -->

<section class="section" id="deals">

```
<div class="container">

    <div class="flash-sale">

        <div class="flash-image"></div>

        <div class="flash-content">

            <div class="sale-label">
                Limited Time Offer
            </div>

            <h2>
                Upgrade your workspace.
            </h2>

            <p>
                Get the MacBook Air M2 at an exclusive price
                before this deal disappears.
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

            <div class="flash-price">

                <strong>$999</strong>

                <del>$1,199</del>

            </div>

            <button class="btn btn-primary" id="buyDeal">
                Grab the Deal
                <i class="fas fa-arrow-right"></i>
            </button>

        </div>

    </div>

</div>
```

</section>

<!-- =========================================================
     REVIEWS
========================================================= -->

<section class="section" id="reviews">

```
<div class="container">

    <div class="section-header">

        <div>
            <h2>Loved by our customers</h2>
            <p>Real experiences from our community.</p>
        </div>

    </div>

    <div class="testimonial-grid">

        <div class="testimonial">

            <div class="stars">
                ★★★★★
            </div>

            <p>
                "The shopping experience was fantastic.
                The delivery was fast and the product quality
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
```

</section>

<!-- =========================================================
     NEWSLETTER
========================================================= -->

<section class="section">

```
<div class="container">

    <div class="newsletter">

        <h2>Stay ahead of the trends.</h2>

        <p>
            Get exclusive deals, new arrivals and special offers
            directly in your inbox.
        </p>

        <form class="newsletter-form" id="newsletterForm">

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
```

</section>

</main>

<!-- =========================================================
     FOOTER
========================================================= -->

<footer>

```
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

        © <span id="year"></span> NexusShop.
        All rights reserved.

    </div>

</div>
```

</footer>

<!-- =========================================================
     CART DRAWER
========================================================= -->

<div class="cart-overlay" id="cartOverlay">

```
<div class="cart-drawer">

    <div class="cart-header">

        <h3>
            Shopping Cart
        </h3>

        <button class="close-cart" id="closeCart">
            <i class="fas fa-xmark"></i>
        </button>

    </div>

    <div class="cart-items" id="cartItems">

        <p style="text-align:center;color:#6b7280;padding:40px 0;">
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

        <button class="btn btn-primary checkout-btn" id="checkoutBtn">
            Proceed to Checkout
        </button>

    </div>

</div>
```

</div>

<!-- TOAST -->

<div class="toast" id="toast">
    Product added to cart ✓
</div>

<script>

    /* =========================================================
       PRODUCT DATA
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
            image: "https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 2,
            name: 'MacBook Pro 14"',
            category: "Laptops",
            price: 1999,
            oldPrice: null,
            rating: 5,
            reviews: 86,
            badge: "Popular",
            image: "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=85"
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
            image: "https://images.unsplash.com/photo-1544117519-31a4b719223d?auto=format&fit=crop&w=700&q=85"
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
            image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
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
            image: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85"
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
            image: "https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=700&q=85"
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
            image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
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
            image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"
        }

    ];


    /* =========================================================
       CATEGORIES
    ========================================================= */

    const categories = [

        ["Smartphones", "fa-mobile-screen-button"],
        ["Laptops", "fa-laptop"],
        ["Fashion", "fa-shirt"],
        ["Audio", "fa-headphones"],
        ["Footwear", "fa-shoe-prints"],
        ["Accessories", "fa-bag-shopping"]

    ];


    const categoryGrid =
        document.getElementById("categoryGrid");


    categories.forEach(category => {

        const card = document.createElement("div");

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
                .scrollIntoView({behavior:"smooth"});

        });

        categoryGrid.appendChild(card);

    });


    /* =========================================================
       PRODUCT RENDER
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
                    padding:60px;
                    color:#6b7280;
                ">

                    <i class="fas fa-box-open"
                       style="font-size:40px;margin-bottom:15px;">
                    </i>

                    <h3>No products found</h3>

                    <p>Try another search.</p>

                </div>

            `;

            return;
        }


        list.forEach(product => {

            const card = document.createElement("article");

            card.className = "product";

            const badgeClass =
                product.badge.includes("%") ||
                product.badge === "Sale"
                ? "sale"
                : "";


            card.innerHTML = `

                <div class="product-image">

                    <span class="product-badge ${badgeClass}">
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
                                ? `
                                <span class="old-price">
                                    $${product.oldPrice.toLocaleString()}
                                </span>
                                `
                                : ""
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
            query
            .trim()
            .toLowerCase();


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

            filterProducts(searchInput.value);

        });


    searchInput
        .addEventListener("keydown", event => {

            if (event.key === "Enter") {

                filterProducts(event.target.value);

            }

        });


    /* =========================================================
       CART
    ========================================================= */

    let cart = [];


    function addToCart(productId) {

        const product =
            products.find(p => p.id === productId);


        const existing =
            cart.find(item => item.id === productId);


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

        const cartCount =
            cart.reduce(
                (sum, item) =>
                sum + item.quantity,
                0
            );


        document.getElementById(
            "cartCount"
        ).textContent = cartCount;


        const cartItems =
            document.getElementById(
                "cartItems"
            );


        if (!cart.length) {

            cartItems.innerHTML = `

                <p style="
                    text-align:center;
                    color:#6b7280;
                    padding:40px 0;
                ">
                    Your cart is empty.
                </p>

            `;

            document.getElementById(
                "cartTotal"
            ).textContent = "$0";

            return;

        }


        cartItems.innerHTML = "";


        let total = 0;


        cart.forEach(item => {

            total +=
                item.price *
                item.quantity;


            const element =
                document.createElement("div");


            element.className =
                "cart-item";


            element.innerHTML = `

                <img
                    src="${item.image}"
                    alt="${item.name}">


                <div class="cart-item-info">

                    <h4>
                        ${item.name}
                    </h4>

                    <div class="cart-item-price">
                        $${item.price.toLocaleString()}
                    </div>


                    <div class="quantity">

                        <button
                            onclick="changeQuantity(${item.id}, -1)">
                            −
                        </button>

                        <span>
                            ${item.quantity}
                        </span>

                        <button
                            onclick="changeQuantity(${item.id}, 1)">
                            +
                        </button>

                        <button
                            onclick="removeFromCart(${item.id})"
                            style="
                                margin-left:auto;
                                color:#ef4444;
                                border:none;
                                background:none;
                            ">
                            <i class="fas fa-trash"></i>
                        </button>

                    </div>

                </div>

            `;


            cartItems.appendChild(element);

        });


        document.getElementById(
            "cartTotal"
        ).textContent =
            "$" + total.toLocaleString();

    }


    function changeQuantity(id, change) {

        const item =
            cart.find(item => item.id === id);


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
        document.getElementById(
            "cartOverlay"
        );


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


    cartOverlay.addEventListener(
        "click",
        event => {

            if (
                event.target === cartOverlay
            ) {

                cartOverlay.classList.remove(
                    "show"
                );

            }

        }
    );


    /* =========================================================
       WISHLIST
    ========================================================= */

    function updateWishlistCount() {

        const count =
            document.querySelectorAll(
                ".wishlist.active"
            ).length;


        document.getElementById(
            "wishlistCount"
        ).textContent = count;

    }


    /* =========================================================
       MOBILE MENU
    ========================================================= */

    const mobileMenu =
        document.getElementById(
            "mobileMenu"
        );


    document
        .getElementById("mobileMenuBtn")
        .addEventListener("click", () => {

            mobileMenu.style.display =
                mobileMenu.style.display === "block"
                ? "none"
                : "block";

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
                    behavior:"smooth"
                });

        });


    document
        .getElementById("heroDeals")
        .addEventListener("click", () => {

            document
                .getElementById("deals")
                .scrollIntoView({
                    behavior:"smooth"
                });

        });


    /* =========================================================
       FLASH DEAL
    ========================================================= */

    const targetDate =
        new Date(
            Date.now()
            \+ 24 * 60 * 60 * 1000
        );


    function updateTimer() {

        const difference =
            targetDate - new Date();


        if (difference <= 0) {

            return;

        }


        const days =
            Math.floor(
                difference /
                (1000 * 60 * 60 * 24)
            );


        const hours =
            Math.floor(
                (difference /
                (1000 * 60 * 60))
                % 24
            );


        const minutes =
            Math.floor(
                (difference /
                (1000 * 60))
                % 60
            );


        const seconds =
            Math.floor(
                (difference / 1000)
                % 60
            );


        document.getElementById(
            "days"
        ).textContent =
            String(days).padStart(2,"0");


        document.getElementById(
            "hours"
        ).textContent =
            String(hours).padStart(2,"0");


        document.getElementById(
            "minutes"
        ).textContent =
            String(minutes).padStart(2,"0");


        document.getElementById(
            "seconds"
        ).textContent =
            String(seconds).padStart(2,"0");

    }


    setInterval(
        updateTimer,
        1000
    );

    updateTimer();


    /* =========================================================
       DEAL BUTTON
    ========================================================= */

    document
        .getElementById("buyDeal")
        .addEventListener("click", () => {

            addToCart(2);

            cartOverlay.classList.add(
                "show"
            );

        });


    /* =========================================================
       NEWSLETTER
    ========================================================= */

    document
        .getElementById("newsletterForm")
        .addEventListener(
            "submit",
            event => {

                event.preventDefault();

                const email =
                    document.getElementById(
                        "email"
                    ).value;


                showToast(
                    `Thanks! ${email} is subscribed.`
                );


                event.target.reset();

            }
        );


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
            document.getElementById(
                "toast"
            );


        toast.textContent = message;

        toast.classList.add("show");


        clearTimeout(toastTimer);


        toastTimer =
            setTimeout(() => {

                toast.classList.remove(
                    "show"
                );

            }, 2500);

    }


    /* =========================================================
       INITIALIZE
    ========================================================= */

    renderProducts(products);

    updateCart();

    document.getElementById(
        "year"
    ).textContent =
        new Date().getFullYear();

</script>

</body>
</html>
