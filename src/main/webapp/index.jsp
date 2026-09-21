<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />

    <title>NexusShop — Modern E-Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
          crossorigin="anonymous">

    <style>
        :root {
            --primary: #111827;
            --secondary: #6366f1;
            --accent: #f97316;
            --success: #16a34a;

            --bg: #f8fafc;
            --surface: #ffffff;
            --surface-soft: #f1f5f9;

            --text: #111827;
            --text-light: #64748b;
            --border: #e2e8f0;

            --shadow-sm:
                0 2px 8px rgba(15, 23, 42, 0.06);

            --shadow-md:
                0 10px 30px rgba(15, 23, 42, 0.08);

            --shadow-lg:
                0 20px 50px rgba(15, 23, 42, 0.12);

            --radius-sm: 10px;
            --radius-md: 16px;
            --radius-lg: 24px;

            --container: 1200px;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
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

        img {
            max-width: 100%;
            display: block;
        }

        button,
        input {
            font: inherit;
        }

        button {
            cursor: pointer;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        .container {
            width: min(92%, var(--container));
            margin: auto;
        }

        /* =========================
           HEADER
        ========================== */

        .header {
            position: sticky;
            top: 0;
            z-index: 1000;
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(14px);
            border-bottom: 1px solid var(--border);
        }

        .header-inner {
            min-height: 76px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 24px;
            font-weight: 800;
            letter-spacing: -0.8px;
            white-space: nowrap;
        }

        .logo-icon {
            width: 40px;
            height: 40px;
            border-radius: 12px;
            display: grid;
            place-items: center;
            color: white;
            background: linear-gradient(
                135deg,
                var(--secondary),
                #8b5cf6
            );
            box-shadow: var(--shadow-sm);
        }

        .nav {
            display: flex;
            align-items: center;
            gap: 28px;
        }

        .nav a {
            font-size: 14px;
            font-weight: 600;
            color: #475569;
            transition: 0.2s ease;
        }

        .nav a:hover {
            color: var(--secondary);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .icon-btn {
            width: 42px;
            height: 42px;
            border: 1px solid var(--border);
            border-radius: 12px;
            background: white;
            display: grid;
            place-items: center;
            color: #334155;
            transition: 0.2s ease;
        }

        .icon-btn:hover {
            color: var(--secondary);
            border-color: #c7d2fe;
            background: #eef2ff;
        }

        .cart-btn {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -5px;
            right: -5px;
            min-width: 19px;
            height: 19px;
            padding: 0 5px;
            border-radius: 999px;
            display: grid;
            place-items: center;
            background: var(--accent);
            color: white;
            font-size: 11px;
            font-weight: 800;
        }

        /* Search */

        .search-wrapper {
            flex: 1;
            max-width: 420px;
            position: relative;
        }

        .search-wrapper input {
            width: 100%;
            height: 44px;
            border: 1px solid var(--border);
            border-radius: 14px;
            padding: 0 45px 0 16px;
            outline: none;
            background: #f8fafc;
            transition: 0.2s ease;
        }

        .search-wrapper input:focus {
            background: white;
            border-color: #a5b4fc;
            box-shadow: 0 0 0 4px rgba(99, 102, 241, 0.1);
        }

        .search-wrapper button {
            position: absolute;
            right: 5px;
            top: 5px;
            width: 34px;
            height: 34px;
            border: none;
            border-radius: 10px;
            background: var(--primary);
            color: white;
        }

        .mobile-toggle {
            display: none;
        }

        /* =========================
           HERO
        ========================== */

        .hero {
            padding: 80px 0;
            background:
                radial-gradient(
                    circle at 85% 20%,
                    rgba(99, 102, 241, 0.18),
                    transparent 30%
                ),
                linear-gradient(
                    135deg,
                    #f8fafc 0%,
                    #eef2ff 50%,
                    #ffffff 100%
                );
        }

        .hero-grid {
            display: grid;
            grid-template-columns: 1.05fr 0.95fr;
            align-items: center;
            gap: 60px;
        }

        .hero-badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 8px 13px;
            border-radius: 999px;
            background: #eef2ff;
            color: #4f46e5;
            font-size: 13px;
            font-weight: 700;
            margin-bottom: 22px;
        }

        .hero h1 {
            font-family: "Playfair Display", serif;
            font-size: clamp(44px, 6vw, 72px);
            line-height: 1.05;
            letter-spacing: -2px;
            margin-bottom: 22px;
        }

        .hero p {
            max-width: 580px;
            color: var(--text-light);
            font-size: 17px;
            line-height: 1.8;
            margin-bottom: 30px;
        }

        .hero-buttons {
            display: flex;
            align-items: center;
            gap: 14px;
            flex-wrap: wrap;
        }

        .btn {
            min-height: 48px;
            padding: 0 22px;
            border: none;
            border-radius: 13px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 9px;
            font-weight: 700;
            transition: 0.2s ease;
        }

        .btn-primary {
            background: var(--primary);
            color: white;
            box-shadow: var(--shadow-sm);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: var(--shadow-md);
        }

        .btn-secondary {
            background: white;
            border: 1px solid var(--border);
            color: var(--text);
        }

        .btn-secondary:hover {
            border-color: #a5b4fc;
            color: var(--secondary);
        }

        .hero-image {
            position: relative;
            min-height: 440px;
            border-radius: 30px;
            overflow: hidden;
            background:
                linear-gradient(
                    135deg,
                    rgba(99, 102, 241, 0.1),
                    rgba(249, 115, 22, 0.1)
                );
            box-shadow: var(--shadow-lg);
        }

        .hero-image img {
            width: 100%;
            height: 100%;
            min-height: 440px;
            object-fit: cover;
        }

        /* =========================
           QUICK BENEFITS
        ========================== */

        .benefits {
            padding: 28px 0;
            background: white;
            border-bottom: 1px solid var(--border);
        }

        .benefit-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 16px;
        }

        .benefit-card {
            display: flex;
            align-items: center;
            gap: 13px;
            padding: 17px;
            border-radius: 16px;
            background: #f8fafc;
            border: 1px solid var(--border);
        }

        .benefit-icon {
            width: 42px;
            height: 42px;
            flex: 0 0 42px;
            border-radius: 12px;
            display: grid;
            place-items: center;
            background: #eef2ff;
            color: var(--secondary);
        }

        .benefit-card h4 {
            font-size: 14px;
            margin-bottom: 2px;
        }

        .benefit-card p {
            color: var(--text-light);
            font-size: 12px;
        }

        /* =========================
           SECTIONS
        ========================== */

        section {
            padding: 80px 0;
        }

        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: end;
            gap: 20px;
            margin-bottom: 34px;
        }

        .section-heading h2 {
            font-size: 34px;
            line-height: 1.2;
            letter-spacing: -1px;
            margin-bottom: 8px;
        }

        .section-heading p {
            color: var(--text-light);
            max-width: 620px;
        }

        .section-link {
            color: var(--secondary);
            font-weight: 700;
            font-size: 14px;
        }

        /* =========================
           CATEGORIES
        ========================== */

        .category-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .category-card {
            position: relative;
            min-height: 220px;
            border-radius: 22px;
            overflow: hidden;
            background: #e2e8f0;
            cursor: pointer;
            box-shadow: var(--shadow-sm);
        }

        .category-card img {
            width: 100%;
            height: 100%;
            min-height: 220px;
            object-fit: cover;
            transition: transform 0.4s ease;
        }

        .category-card:hover img {
            transform: scale(1.06);
        }

        .category-overlay {
            position: absolute;
            inset: auto 0 0;
            padding: 25px 20px;
            color: white;
            background: linear-gradient(
                transparent,
                rgba(15, 23, 42, 0.82)
            );
        }

        .category-overlay h3 {
            font-size: 20px;
            margin-bottom: 4px;
        }

        .category-overlay span {
            font-size: 13px;
            opacity: 0.85;
        }

        /* =========================
           PRODUCTS
        ========================== */

        .product-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 22px;
        }

        .product-card {
            position: relative;
            overflow: hidden;
            background: white;
            border: 1px solid var(--border);
            border-radius: 20px;
            transition: 0.25s ease;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-md);
        }

        .product-image {
            position: relative;
            aspect-ratio: 1 / 1;
            overflow: hidden;
            background: #f8fafc;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.35s ease;
        }

        .product-card:hover .product-image img {
            transform: scale(1.05);
        }

        .wishlist-btn {
            position: absolute;
            top: 12px;
            right: 12px;
            width: 38px;
            height: 38px;
            border: none;
            border-radius: 50%;
            display: grid;
            place-items: center;
            background: rgba(255, 255, 255, 0.94);
            color: #475569;
            box-shadow: var(--shadow-sm);
            z-index: 2;
        }

        .wishlist-btn:hover {
            color: #ef4444;
        }

        .product-content {
            padding: 18px;
        }

        .product-category {
            color: var(--secondary);
            font-size: 11px;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: 0.6px;
            margin-bottom: 6px;
        }

        .product-title {
            font-size: 16px;
            line-height: 1.35;
            margin-bottom: 9px;
        }

        .product-rating {
            display: flex;
            align-items: center;
            gap: 6px;
            color: #f59e0b;
            font-size: 13px;
            margin-bottom: 13px;
        }

        .product-rating span {
            color: var(--text-light);
        }

        .product-bottom {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 12px;
        }

        .product-price {
            font-size: 19px;
            font-weight: 800;
        }

        .add-cart {
            width: 42px;
            height: 42px;
            border: none;
            border-radius: 12px;
            background: var(--primary);
            color: white;
            display: grid;
            place-items: center;
            transition: 0.2s ease;
        }

        .add-cart:hover {
            background: var(--secondary);
            transform: scale(1.05);
        }

        /* =========================
           DEAL SECTION
        ========================== */

        .deal {
            padding: 70px 0;
        }

        .deal-box {
            position: relative;
            overflow: hidden;
            padding: 55px;
            border-radius: 28px;
            background:
                linear-gradient(
                    135deg,
                    #111827,
                    #312e81
                );
            color: white;
        }

        .deal-box::after {
            content: "";
            position: absolute;
            width: 350px;
            height: 350px;
            right: -120px;
            top: -160px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.08);
        }

        .deal-content {
            position: relative;
            z-index: 2;
            max-width: 700px;
        }

        .deal-label {
            display: inline-block;
            padding: 7px 12px;
            border-radius: 999px;
            background: rgba(255, 255, 255, 0.12);
            font-size: 12px;
            font-weight: 800;
            margin-bottom: 18px;
        }

        .deal-box h2 {
            font-size: clamp(34px, 5vw, 52px);
            line-height: 1.05;
            margin-bottom: 14px;
        }

        .deal-box p {
            color: #cbd5e1;
            max-width: 600px;
            margin-bottom: 25px;
        }

        .timer {
            display: flex;
            gap: 10px;
            margin: 25px 0;
        }

        .timer-item {
            min-width: 72px;
            padding: 12px;
            border-radius: 13px;
            text-align: center;
            background: rgba(255, 255, 255, 0.1);
        }

        .timer-item strong {
            display: block;
            font-size: 23px;
        }

        .timer-item span {
            color: #cbd5e1;
            font-size: 11px;
        }

        /* =========================
           TESTIMONIALS
        ========================== */

        .testimonial-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }

        .testimonial {
            padding: 25px;
            border-radius: 20px;
            background: white;
            border: 1px solid var(--border);
            box-shadow: var(--shadow-sm);
        }

        .testimonial-stars {
            color: #f59e0b;
            margin-bottom: 14px;
        }

        .testimonial p {
            color: #475569;
            line-height: 1.8;
            margin-bottom: 20px;
        }

        .testimonial-user {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .testimonial-avatar {
            width: 42px;
            height: 42px;
            border-radius: 50%;
            object-fit: cover;
        }

        .testimonial-user strong {
            display: block;
            font-size: 14px;
        }

        .testimonial-user span {
            color: var(--text-light);
            font-size: 12px;
        }

        /* =========================
           NEWSLETTER
        ========================== */

        .newsletter {
            padding: 70px 0;
        }

        .newsletter-box {
            padding: 55px;
            border-radius: 28px;
            background: #eef2ff;
            text-align: center;
        }

        .newsletter-box h2 {
            font-size: 36px;
            margin-bottom: 10px;
        }

        .newsletter-box p {
            color: var(--text-light);
            max-width: 580px;
            margin: 0 auto 25px;
        }

        .newsletter-form {
            max-width: 560px;
            margin: auto;
            display: flex;
            gap: 10px;
        }

        .newsletter-form input {
            flex: 1;
            min-height: 50px;
            padding: 0 17px;
            border: 1px solid var(--border);
            border-radius: 13px;
            outline: none;
        }

        .newsletter-form input:focus {
            border-color: #a5b4fc;
            box-shadow: 0 0 0 4px rgba(99, 102, 241, 0.1);
        }

        /* =========================
           FOOTER
        ========================== */

        footer {
            background: #0f172a;
            color: white;
            padding: 65px 0 25px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 1.5fr repeat(3, 1fr);
            gap: 40px;
            padding-bottom: 45px;
        }

        .footer-brand p {
            color: #94a3b8;
            max-width: 330px;
            margin-top: 15px;
        }

        .footer-column h4 {
            margin-bottom: 16px;
            font-size: 14px;
        }

        .footer-column a {
            display: block;
            color: #94a3b8;
            font-size: 13px;
            margin-bottom: 10px;
            transition: 0.2s ease;
        }

        .footer-column a:hover {
            color: white;
        }

        .footer-bottom {
            padding-top: 22px;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            color: #64748b;
            font-size: 12px;
            display: flex;
            justify-content: space-between;
            gap: 20px;
        }

        /* =========================
           RESPONSIVE
        ========================== */

        @media (max-width: 1000px) {

            .nav {
                gap: 16px;
            }

            .hero-grid {
                gap: 35px;
            }

            .benefit-grid,
            .category-grid,
            .product-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .footer-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 760px) {

            .header-inner {
                min-height: 68px;
                flex-wrap: wrap;
                padding: 10px 0;
            }

            .nav {
                display: none;
                position: absolute;
                left: 0;
                right: 0;
                top: 68px;
                padding: 20px;
                background: white;
                border-bottom: 1px solid var(--border);
                flex-direction: column;
                align-items: flex-start;
            }

            .nav.active {
                display: flex;
            }

            .mobile-toggle {
                display: grid;
            }

            .search-wrapper {
                order: 5;
                flex-basis: 100%;
                max-width: none;
            }

            .hero {
                padding: 55px 0;
            }

            .hero-grid {
                grid-template-columns: 1fr;
            }

            .hero-image,
            .hero-image img {
                min-height: 320px;
            }

            section {
                padding: 60px 0;
            }

            .section-header {
                align-items: flex-start;
                flex-direction: column;
            }

            .deal-box,
            .newsletter-box {
                padding: 35px 25px;
            }

            .newsletter-form {
                flex-direction: column;
            }

            .testimonial-grid {
                grid-template-columns: 1fr;
            }
        }

        @media (max-width: 520px) {

            .container {
                width: min(94%, var(--container));
            }

            .header-actions {
                gap: 6px;
            }

            .logo {
                font-size: 20px;
            }

            .logo-icon {
                width: 36px;
                height: 36px;
            }

            .icon-btn {
                width: 38px;
                height: 38px;
            }

            .hero h1 {
                font-size: 43px;
            }

            .hero p {
                font-size: 15px;
            }

            .hero-buttons {
                flex-direction: column;
                align-items: stretch;
            }

            .hero-buttons .btn {
                width: 100%;
            }

            .benefit-grid,
            .category-grid,
            .product-grid {
                grid-template-columns: 1fr;
            }

            .category-card,
            .category-card img {
                min-height: 200px;
            }

            .timer {
                flex-wrap: wrap;
            }

            .timer-item {
                min-width: 65px;
            }

            .footer-grid {
                grid-template-columns: 1fr;
                gap: 30px;
            }

            .footer-bottom {
                flex-direction: column;
            }
        }
    </style>
</head>

<body>

    <!-- =========================
         HEADER
    ========================== -->

    <header class="header">
        <div class="container header-inner">

            <a href="#" class="logo">
                <span class="logo-icon">
                    <i class="fa-solid fa-bag-shopping"></i>
                </span>
                NexusShop
            </a>

            <nav class="nav" id="mobileMenu">
                <a href="#home">Home</a>
                <a href="#categories">Categories</a>
                <a href="#products">Products</a>
                <a href="#deals">Deals</a>
                <a href="#reviews">Reviews</a>
            </nav>

            <div class="search-wrapper">
                <input
                    type="text"
                    id="searchInput"
                    placeholder="Search products..."
                    autocomplete="off"
                >

                <button id="searchBtn">
                    <i class="fa-solid fa-search"></i>
                </button>
            </div>

            <div class="header-actions">

                <button class="icon-btn" title="Account">
                    <i class="fa-regular fa-user"></i>
                </button>

                <button class="icon-btn" title="Wishlist">
                    <i class="fa-regular fa-heart"></i>
                </button>

                <button class="icon-btn cart-btn" id="cartBtn" title="Cart">
                    <i class="fa-solid fa-cart-shopping"></i>
                    <span class="cart-count" id="cartCount">0</span>
                </button>

                <button
                    class="icon-btn mobile-toggle"
                    id="mobileToggle"
                    title="Menu"
                >
                    <i class="fa-solid fa-bars"></i>
                </button>

            </div>
        </div>
    </header>


    <!-- =========================
         HERO
    ========================== -->

    <main>

        <section class="hero" id="home">
            <div class="container hero-grid">

                <div class="hero-content">

                    <div class="hero-badge">
                        <i class="fa-solid fa-sparkles"></i>
                        New arrivals are here
                    </div>

                    <h1>
                        Everything you need.
                        <br>
                        All in one place.
                    </h1>

                    <p>
                        Shop popular tech, fashion and everyday essentials
                        with simple browsing, secure checkout and deals worth
                        discovering.
                    </p>

                    <div class="hero-buttons">

                        <button
                            class="btn btn-primary"
                            id="shopNow"
                        >
                            Start Shopping
                            <i class="fa-solid fa-arrow-right"></i>
                        </button>

                        <button
                            class="btn btn-secondary"
                            id="exploreDeals"
                        >
                            See Today's Deals
                        </button>

                    </div>
                </div>

                <div class="hero-image">

                    <img
                        src="https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?auto=format&fit=crop&w=1200&q=80"
                        alt="Online shopping"
                    >

                </div>

            </div>
        </section>


        <!-- =========================
             BENEFITS
        ========================== -->

        <section class="benefits">

            <div class="container benefit-grid">

                <div class="benefit-card">
                    <div class="benefit-icon">
                        <i class="fa-solid fa-truck-fast"></i>
                    </div>

                    <div>
                        <h4>Fast & Free Delivery</h4>
                        <p>On eligible orders</p>
                    </div>
                </div>

                <div class="benefit-card">
                    <div class="benefit-icon">
                        <i class="fa-solid fa-shield-halved"></i>
                    </div>

                    <div>
                        <h4>Secure Checkout</h4>
                        <p>Your data stays protected</p>
                    </div>
                </div>

                <div class="benefit-card">
                    <div class="benefit-icon">
                        <i class="fa-solid fa-rotate-left"></i>
                    </div>

                    <div>
                        <h4>Easy Returns</h4>
                        <p>Simple return process</p>
                    </div>
                </div>

                <div class="benefit-card">
                    <div class="benefit-icon">
                        <i class="fa-solid fa-headset"></i>
                    </div>

                    <div>
                        <h4>Helpful Support</h4>
                        <p>We're here when you need us</p>
                    </div>
                </div>

            </div>

        </section>


        <!-- =========================
             CATEGORIES
        ========================== -->

        <section id="categories">

            <div class="container">

                <div class="section-header">

                    <div class="section-heading">
                        <h2>Shop by Category</h2>

                        <p>
                            Explore products organized around the things
                            you use every day.
                        </p>
                    </div>

                    <a href="#products" class="section-link">
                        View all
                        <i class="fa-solid fa-arrow-right"></i>
                    </a>

                </div>

                <div class="category-grid" id="categoryGrid">

                    <div class="category-card">

                        <img
                            src="https://images.unsplash.com/photo-1498049794561-7780e7231661?auto=format&fit=crop&w=800&q=80"
                            alt="Electronics"
                        >

                        <div class="category-overlay">
                            <h3>Electronics</h3>
                            <span>Smart devices & accessories</span>
                        </div>

                    </div>


                    <div class="category-card">

                        <img
                            src="https://images.unsplash.com/photo-1445205170230-053b83016050?auto=format&fit=crop&w=800&q=80"
                            alt="Fashion"
                        >

                        <div class="category-overlay">
                            <h3>Fashion</h3>
                            <span>Modern styles for everyone</span>
                        </div>

                    </div>


                    <div class="category-card">

                        <img
                            src="https://images.unsplash.com/photo-1555041469-a586c61ea9bc?auto=format&fit=crop&w=800&q=80"
                            alt="Home"
                        >

                        <div class="category-overlay">
                            <h3>Home</h3>
                            <span>Make your space better</span>
                        </div>

                    </div>


                    <div class="category-card">

                        <img
                            src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=800&q=80"
                            alt="Shoes"
                        >

                        <div class="category-overlay">
                            <h3>Footwear</h3>
                            <span>Comfort meets style</span>
                        </div>

                    </div>

                </div>

            </div>

        </section>


        <!-- =========================
             PRODUCTS
        ========================== -->

        <section id="products">

            <div class="container">

                <div class="section-header">

                    <div class="section-heading">
                        <h2>Popular Products</h2>

                        <p>
                            Discover products customers are loving right now.
                        </p>
                    </div>

                    <a href="#" class="section-link">
                        Browse all
                        <i class="fa-solid fa-arrow-right"></i>
                    </a>

                </div>

                <div
                    class="product-grid"
                    id="productGrid"
                ></div>

            </div>

        </section>


        <!-- =========================
             DEAL
        ========================== -->

        <section class="deal" id="deals">

            <div class="container">

                <div class="deal-box">

                    <div class="deal-content">

                        <span class="deal-label">
                            LIMITED TIME OFFER
                        </span>

                        <h2>
                            Big savings.
                            <br>
                            Small window.
                        </h2>

                        <p>
                            Grab selected products before the timer runs out.
                            New offers are added regularly.
                        </p>

                        <div class="timer">

                            <div class="timer-item">
                                <strong id="hours">00</strong>
                                <span>Hours</span>
                            </div>

                            <div class="timer-item">
                                <strong id="minutes">00</strong>
                                <span>Minutes</span>
                            </div>

                            <div class="timer-item">
                                <strong id="seconds">00</strong>
                                <span>Seconds</span>
                            </div>

                        </div>

                        <button
                            class="btn btn-secondary"
                            id="buyDeal"
                        >
                            Shop Deal
                            <i class="fa-solid fa-arrow-right"></i>
                        </button>

                    </div>

                </div>

            </div>

        </section>


        <!-- =========================
             TESTIMONIALS
        ========================== -->

        <section id="reviews">

            <div class="container">

                <div class="section-header">

                    <div class="section-heading">
                        <h2>What Customers Say</h2>

                        <p>
                            Real experiences from people shopping with
                            NexusShop.
                        </p>
                    </div>

                </div>

                <div class="testimonial-grid">

                    <article class="testimonial">

                        <div class="testimonial-stars">
                            ★★★★★
                        </div>

                        <p>
                            "The website is simple to use and I found exactly
                            what I was looking for in a few minutes."
                        </p>

                        <div class="testimonial-user">

                            <img
                                class="testimonial-avatar"
                                src="https://i.pravatar.cc/100?img=12"
                                alt="Customer"
                            >

                            <div>
                                <strong>Sarah Johnson</strong>
                                <span>Verified Customer</span>
                            </div>

                        </div>

                    </article>


                    <article class="testimonial">

                        <div class="testimonial-stars">
                            ★★★★★
                        </div>

                        <p>
                            "The product cards make it easy to compare prices
                            and the checkout experience feels very smooth."
                        </p>

                        <div class="testimonial-user">

                            <img
                                class="testimonial-avatar"
                                src="https://i.pravatar.cc/100?img=32"
                                alt="Customer"
                            >

                            <div>
                                <strong>Michael Brown</strong>
                                <span>Verified Customer</span>
                            </div>

                        </div>

                    </article>


                    <article class="testimonial">

                        <div class="testimonial-stars">
                            ★★★★★
                        </div>

                        <p>
                            "I liked the clean design and how easy it is to
                            search for products."
                        </p>

                        <div class="testimonial-user">

                            <img
                                class="testimonial-avatar"
                                src="https://i.pravatar.cc/100?img=47"
                                alt="Customer"
                            >

                            <div>
                                <strong>Emily Davis</strong>
                                <span>Verified Customer</span>
                            </div>

                        </div>

                    </article>

                </div>

            </div>

        </section>


        <!-- =========================
             NEWSLETTER
        ========================== -->

        <section class="newsletter">

            <div class="container">

                <div class="newsletter-box">

                    <h2>Get deals in your inbox</h2>

                    <p>
                        Subscribe for new products, special offers and
                        shopping inspiration.
                    </p>

                    <form
                        class="newsletter-form"
                        id="newsletterForm"
                    >

                        <input
                            type="email"
                            id="newsletterEmail"
                            placeholder="Enter your email address"
                            required
                        >

                        <button
                            type="submit"
                            class="btn btn-primary"
                        >
                            Subscribe
                        </button>

                    </form>

                </div>

            </div>

        </section>

    </main>


    <!-- =========================
         FOOTER
    ========================== -->

    <footer>

        <div class="container">

            <div class="footer-grid">

                <div class="footer-brand">

                    <a href="#" class="logo">
                        <span class="logo-icon">
                            <i class="fa-solid fa-bag-shopping"></i>
                        </span>
                        NexusShop
                    </a>

                    <p>
                        A modern online shopping experience designed to make
                        discovering products simple and enjoyable.
                    </p>

                </div>


                <div class="footer-column">

                    <h4>Shop</h4>

                    <a href="#products">All Products</a>
                    <a href="#categories">Categories</a>
                    <a href="#deals">Deals</a>
                    <a href="#">New Arrivals</a>

                </div>


                <div class="footer-column">

                    <h4>Help</h4>

                    <a href="#">Contact Us</a>
                    <a href="#">Shipping</a>
                    <a href="#">Returns</a>
                    <a href="#">FAQs</a>

                </div>


                <div class="footer-column">

                    <h4>Company</h4>

                    <a href="#">About Us</a>
                    <a href="#">Careers</a>
                    <a href="#">Privacy</a>
                    <a href="#">Terms</a>

                </div>

            </div>


            <div class="footer-bottom">

                <span>
                    © 2026 NexusShop. All rights reserved.
                </span>

                <span>
                    Made for a better shopping experience.
                </span>

            </div>

        </div>

    </footer>


    <!-- =========================
         JAVASCRIPT
    ========================== -->

    <script>

        /* =========================
           PRODUCT DATA
        ========================== */

        const products = [
            {
                id: 1,
                name: "Wireless Headphones",
                category: "Electronics",
                price: 79.99,
                rating: 4.8,
                reviews: 124,
                image:
                    "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=800&q=80"
            },

            {
                id: 2,
                name: "Smart Watch",
                category: "Electronics",
                price: 129.99,
                rating: 4.7,
                reviews: 98,
                image:
                    "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=800&q=80"
            },

            {
                id: 3,
                name: "Classic Sneakers",
                category: "Footwear",
                price: 64.99,
                rating: 4.6,
                reviews: 76,
                image:
                    "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=800&q=80"
            },

            {
                id: 4,
                name: "Minimal Backpack",
                category: "Fashion",
                price: 49.99,
                rating: 4.8,
                reviews: 87,
                image:
                    "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=800&q=80"
            },

            {
                id: 5,
                name: "Modern Sunglasses",
                category: "Fashion",
                price: 39.99,
                rating: 4.5,
                reviews: 64,
                image:
                    "https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&w=800&q=80"
            },

            {
                id: 6,
                name: "Desk Lamp",
                category: "Home",
                price: 34.99,
                rating: 4.7,
                reviews: 55,
                image:
                    "https://images.unsplash.com/photo-1507473885765-e6ed057f782c?auto=format&fit=crop&w=800&q=80"
            },

            {
                id: 7,
                name: "Coffee Maker",
                category: "Home",
                price: 89.99,
                rating: 4.9,
                reviews: 142,
                image:
                    "https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?auto=format&fit=crop&w=800&q=80"
            },

            {
                id: 8,
                name: "Portable Speaker",
                category: "Electronics",
                price: 59.99,
                rating: 4.6,
                reviews: 73,
                image:
                    "https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?auto=format&fit=crop&w=800&q=80"
            }
        ];


        /* =========================
           CART
        ========================== */

        let cart = [];


        /* =========================
           DOM ELEMENTS
        ========================== */

        const productGrid =
            document.getElementById("productGrid");

        const cartCount =
            document.getElementById("cartCount");

        const searchInput =
            document.getElementById("searchInput");

        const searchBtn =
            document.getElementById("searchBtn");

        const mobileToggle =
            document.getElementById("mobileToggle");

        const mobileMenu =
            document.getElementById("mobileMenu");


        /* =========================
           RENDER PRODUCTS
        ========================== */

        function renderProducts(list = products) {

            productGrid.innerHTML = "";

            if (list.length === 0) {

                productGrid.innerHTML = `
                    <div style="
                        grid-column: 1 / -1;
                        text-align: center;
                        padding: 60px 20px;
                    ">
                        <h3>No products found</h3>

                        <p style="
                            margin-top: 8px;
                            color: #64748b;
                        ">
                            Try another search term.
                        </p>
                    </div>
                `;

                return;
            }


            list.forEach(product => {

                const card =
                    document.createElement("article");

                card.className = "product-card";

                card.innerHTML = `

                    <div class="product-image">

                        <img
                            src="${product.image}"
                            alt="${product.name}"
                            loading="lazy"
                        >

                        <button
                            class="wishlist-btn"
                            aria-label="Add ${product.name} to wishlist"
                        >
                            <i class="fa-regular fa-heart"></i>
                        </button>

                    </div>


                    <div class="product-content">

                        <div class="product-category">
                            ${product.category}
                        </div>

                        <h3 class="product-title">
                            ${product.name}
                        </h3>

                        <div class="product-rating">

                            <span>
                                ${"★".repeat(Math.round(product.rating))}
                            </span>

                            <span>
                                ${product.rating}
                                (${product.reviews})
                            </span>

                        </div>


                        <div class="product-bottom">

                            <div class="product-price">
                                $${product.price.toFixed(2)}
                            </div>

                            <button
                                class="add-cart"
                                data-id="${product.id}"
                                aria-label="Add ${product.name} to cart"
                            >
                                <i class="fa-solid fa-plus"></i>
                            </button>

                        </div>

                    </div>
                `;


                productGrid.appendChild(card);

            });

        }


        /* =========================
           ADD TO CART
        ========================== */

        function addToCart(productId) {

            const product =
                products.find(item => item.id === productId);

            if (!product) return;

            cart.push(product);

            updateCartCount();

            showNotification(
                `${product.name} added to cart`
            );
        }


        function updateCartCount() {

            cartCount.textContent = cart.length;

        }


        /* =========================
           NOTIFICATION
        ========================== */

        function showNotification(message) {

            const notification =
                document.createElement("div");

            notification.textContent = message;

            notification.style.position = "fixed";
            notification.style.right = "20px";
            notification.style.bottom = "20px";
            notification.style.zIndex = "9999";
            notification.style.padding = "14px 18px";
            notification.style.borderRadius = "12px";
            notification.style.background = "#111827";
            notification.style.color = "#fff";
            notification.style.fontWeight = "600";
            notification.style.boxShadow =
                "0 10px 30px rgba(0,0,0,.2)";

            document.body.appendChild(notification);


            setTimeout(() => {

                notification.remove();

            }, 2500);

        }


        /* =========================
           PRODUCT CLICK
        ========================== */

        productGrid.addEventListener(
            "click",
            function(event) {

                const addButton =
                    event.target.closest(".add-cart");

                if (addButton) {

                    const productId =
                        Number(addButton.dataset.id);

                    addToCart(productId);

                    return;
                }


                const wishlistButton =
                    event.target.closest(".wishlist-btn");

                if (wishlistButton) {

                    const icon =
                        wishlistButton.querySelector("i");

                    icon.classList.toggle("fa-regular");
                    icon.classList.toggle("fa-solid");

                    icon.style.color =
                        icon.classList.contains("fa-solid")
                            ? "#ef4444"
                            : "";

                }

            }
        );


        /* =========================
           SEARCH
        ========================== */

        function searchProducts() {

            const query =
                searchInput.value.trim().toLowerCase();

            if (!query) {

                renderProducts(products);

                return;
            }


            const filtered =
                products.filter(product =>

                    product.name
                        .toLowerCase()
                        .includes(query)

                    ||

                    product.category
                        .toLowerCase()
                        .includes(query)

                );


            renderProducts(filtered);

            document
                .getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });

        }


        searchBtn.addEventListener(
            "click",
            searchProducts
        );


        searchInput.addEventListener(
            "keydown",
            function(event) {

                if (event.key === "Enter") {
                    searchProducts();
                }

            }
        );


        /* =========================
           MOBILE MENU
        ========================== */

        mobileToggle.addEventListener(
            "click",
            function() {

                mobileMenu.classList.toggle("active");

                const icon =
                    mobileToggle.querySelector("i");

                icon.classList.toggle("fa-bars");
                icon.classList.toggle("fa-xmark");

            }
        );


        /* =========================
           HERO BUTTONS
        ========================== */

        document
            .getElementById("shopNow")
            .addEventListener(
                "click",
                function() {

                    document
                        .getElementById("products")
                        .scrollIntoView({
                            behavior: "smooth"
                        });

                }
            );


        document
            .getElementById("exploreDeals")
            .addEventListener(
                "click",
                function() {

                    document
                        .getElementById("deals")
                        .scrollIntoView({
                            behavior: "smooth"
                        });

                }
            );


        document
            .getElementById("buyDeal")
            .addEventListener(
                "click",
                function() {

                    document
                        .getElementById("products")
                        .scrollIntoView({
                            behavior: "smooth"
                        });

                }
            );


        /* =========================
           NEWSLETTER
        ========================== */

        document
            .getElementById("newsletterForm")
            .addEventListener(
                "submit",
                function(event) {

                    event.preventDefault();

                    const email =
                        document.getElementById(
                            "newsletterEmail"
                        ).value;

                    if (!email) return;

                    showNotification(
                        "Thanks for subscribing!"
                    );

                    event.target.reset();

                }
            );


        /* =========================
           DEAL TIMER
        ========================== */

        const dealEnd =
            Date.now() +
            (
                24 * 60 * 60 * 1000
            );


        function updateTimer() {

            const remaining =
                Math.max(
                    0,
                    dealEnd - Date.now()
                );


            const totalSeconds =
                Math.floor(
                    remaining / 1000
                );


            const hours =
                Math.floor(
                    totalSeconds / 3600
                );

            const minutes =
                Math.floor(
                    (totalSeconds % 3600) / 60
                );

            const seconds =
                totalSeconds % 60;


            document.getElementById(
                "hours"
            ).textContent =
                String(hours).padStart(2, "0");


            document.getElementById(
                "minutes"
            ).textContent =
                String(minutes).padStart(2, "0");


            document.getElementById(
                "seconds"
            ).textContent =
                String(seconds).padStart(2, "0");

        }


        updateTimer();

        setInterval(
            updateTimer,
            1000
        );


        /* =========================
           INITIAL LOAD
        ========================== */

        renderProducts(products);

        updateCartCount();

    </script>

</body>
</html>
