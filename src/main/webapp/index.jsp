<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>RohitShop — Modern E‑Commerce</title>
    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">
    <style>
        /* ========== ROOT VARIABLES ========== */
        :root {
            --bg: #0b0b12;
            --bg-card: #15151f;
            --primary: #ffffff;
            --primary-light: #a5a5c0;
            --accent: #ff7b54;
            --accent-glow: rgba(255, 123, 84, 0.3);
            --accent-2: #00d4ff;
            --surface: #1e1e2a;
            --glass: rgba(255, 255, 255, 0.04);
            --border: rgba(255, 255, 255, 0.08);
            --radius: 24px;
            --transition: 0.3s cubic-bezier(0.25, 0.46, 0.45, 0.94);
        }

        /* ========== RESET & BASE ========== */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Inter', sans-serif;
            background-color: var(--bg);
            color: var(--primary);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            overflow-x: hidden;
            line-height: 1.6;
            /* Subtle animated gradient background */
            background-image: 
                radial-gradient(circle at 10% 20%, rgba(255, 123, 84, 0.06) 0%, transparent 35%),
                radial-gradient(circle at 90% 80%, rgba(0, 212, 255, 0.05) 0%, transparent 35%);
            background-attachment: fixed;
        }

        /* ========== CONTAINER ========== */
        .container {
            width: min(1300px, 92%);
            margin: 0 auto;
        }

        /* ========== HEADER / NAV ========== */
        header {
            width: 100%;
            padding: 1.5rem 0;
            position: sticky;
            top: 0;
            z-index: 100;
            backdrop-filter: blur(16px);
            -webkit-backdrop-filter: blur(16px);
            background: rgba(11, 11, 18, 0.75);
            border-bottom: 1px solid var(--border);
        }

        .header-inner {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-family: 'Playfair Display', serif;
            font-size: 1.9rem;
            font-weight: 700;
            letter-spacing: -0.02em;
            background: linear-gradient(135deg, #ffffff 30%, var(--accent) 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            display: flex;
            align-items: center;
            gap: 0.4rem;
        }

        .logo i {
            font-size: 1.5rem;
            background: linear-gradient(135deg, var(--accent), #ffb347);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        nav ul {
            display: flex;
            gap: 2.5rem;
            list-style: none;
            align-items: center;
        }

        nav a {
            color: var(--primary-light);
            text-decoration: none;
            font-weight: 500;
            font-size: 0.95rem;
            letter-spacing: 0.01em;
            transition: color var(--transition);
            position: relative;
        }

        nav a::after {
            content: '';
            position: absolute;
            bottom: -6px;
            left: 0;
            width: 0;
            height: 2px;
            background: var(--accent);
            transition: width var(--transition);
            border-radius: 2px;
        }

        nav a:hover {
            color: var(--primary);
        }

        nav a:hover::after {
            width: 100%;
        }

        .nav-icons {
            display: flex;
            gap: 1.2rem;
            align-items: center;
        }

        .nav-icons button {
            background: var(--glass);
            border: 1px solid var(--border);
            color: var(--primary-light);
            width: 44px;
            height: 44px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: all var(--transition);
            font-size: 1.05rem;
            position: relative;
        }

        .nav-icons button:hover {
            background: var(--accent);
            color: #fff;
            border-color: var(--accent);
            box-shadow: 0 0 20px var(--accent-glow);
            transform: translateY(-2px);
        }

        .cart-badge {
            position: absolute;
            top: -4px;
            right: -4px;
            background: var(--accent-2);
            color: #0b0b12;
            font-size: 0.65rem;
            font-weight: 800;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            border: 2px solid var(--bg);
        }

        /* ========== HERO SECTION ========== */
        .hero {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 4rem;
            align-items: center;
            padding: 5rem 0 3rem;
        }

        .hero-content {
            animation: fadeUp 0.8s ease-out;
        }

        .hero-badge {
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
            background: var(--glass);
            border: 1px solid var(--border);
            padding: 0.5rem 1.2rem;
            border-radius: 50px;
            font-size: 0.85rem;
            font-weight: 600;
            color: var(--accent-2);
            letter-spacing: 0.05em;
            text-transform: uppercase;
            margin-bottom: 1.8rem;
            backdrop-filter: blur(8px);
        }

        .hero-badge i {
            font-size: 0.8rem;
        }

        .hero h1 {
            font-family: 'Playfair Display', serif;
            font-size: clamp(2.8rem, 5vw, 4.2rem);
            line-height: 1.1;
            font-weight: 700;
            letter-spacing: -0.03em;
            margin-bottom: 1.5rem;
        }

        .hero h1 span {
            background: linear-gradient(135deg, var(--accent) 0%, #ffb347 50%, var(--accent-2) 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .hero p {
            color: var(--primary-light);
            font-size: 1.1rem;
            max-width: 480px;
            margin-bottom: 2.5rem;
            line-height: 1.7;
        }

        .hero-buttons {
            display: flex;
            gap: 1.2rem;
            flex-wrap: wrap;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 0.7rem;
            padding: 1rem 2.2rem;
            border-radius: 60px;
            font-weight: 600;
            font-size: 0.95rem;
            cursor: pointer;
            transition: all var(--transition);
            text-decoration: none;
            border: none;
            font-family: 'Inter', sans-serif;
            letter-spacing: 0.01em;
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--accent), #ff9a6b);
            color: #0b0b12;
            box-shadow: 0 8px 32px var(--accent-glow);
        }

        .btn-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 12px 40px rgba(255, 123, 84, 0.45);
        }

        .btn-outline {
            background: transparent;
            color: var(--primary);
            border: 1.5px solid var(--border);
        }

        .btn-outline:hover {
            border-color: var(--accent);
            background: rgba(255, 123, 84, 0.08);
            transform: translateY(-3px);
        }

        /* ========== HERO VISUAL ========== */
        .hero-visual {
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
            animation: fadeUp 0.8s ease-out 0.2s both;
        }

        .hero-glow {
            position: absolute;
            width: 420px;
            height: 420px;
            background: radial-gradient(circle, var(--accent-glow) 0%, transparent 70%);
            border-radius: 50%;
            filter: blur(60px);
            z-index: 0;
            animation: pulse 4s ease-in-out infinite;
        }

        .hero-card {
            position: relative;
            z-index: 1;
            width: 380px;
            height: 460px;
            border-radius: var(--radius);
            background: linear-gradient(145deg, #1e1e2e, #14141f);
            border: 1px solid var(--border);
            overflow: hidden;
            box-shadow: 0 40px 80px rgba(0, 0, 0, 0.5);
            transition: transform var(--transition);
        }

        .hero-card:hover {
            transform: translateY(-8px) scale(1.01);
        }

        .hero-card img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            opacity: 0.85;
            transition: opacity var(--transition), transform var(--transition);
        }

        .hero-card:hover img {
            opacity: 1;
            transform: scale(1.04);
        }

        .hero-card-overlay {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            padding: 2rem;
            background: linear-gradient(to top, rgba(11, 11, 18, 0.95) 0%, transparent 100%);
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
        }

        .hero-card-overlay h3 {
            font-size: 1.3rem;
            font-weight: 700;
        }

        .hero-card-overlay p {
            font-size: 0.85rem;
            color: var(--primary-light);
            margin-top: 0.2rem;
        }

        .price-tag {
            background: var(--accent);
            color: #0b0b12;
            padding: 0.5rem 1.2rem;
            border-radius: 50px;
            font-weight: 800;
            font-size: 1.1rem;
            box-shadow: 0 4px 20px var(--accent-glow);
        }

        /* ========== FEATURED STRIP ========== */
        .featured-strip {
            display: flex;
            justify-content: space-between;
            gap: 1.5rem;
            padding: 2.5rem 0 4rem;
            flex-wrap: wrap;
            animation: fadeUp 0.8s ease-out 0.4s both;
        }

        .feature-item {
            flex: 1;
            min-width: 200px;
            display: flex;
            align-items: center;
            gap: 1rem;
            padding: 1.4rem 1.8rem;
            background: var(--glass);
            border: 1px solid var(--border);
            border-radius: 18px;
            backdrop-filter: blur(12px);
            transition: all var(--transition);
        }

        .feature-item:hover {
            border-color: rgba(255, 123, 84, 0.3);
            background: rgba(255, 123, 84, 0.04);
            transform: translateY(-4px);
        }

        .feature-icon {
            width: 48px;
            height: 48px;
            border-radius: 14px;
            background: linear-gradient(135deg, var(--accent), #ffb347);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.3rem;
            color: #0b0b12;
            flex-shrink: 0;
        }

        .feature-item:nth-child(2) .feature-icon {
            background: linear-gradient(135deg, var(--accent-2), #00ffcc);
        }

        .feature-item:nth-child(3) .feature-icon {
            background: linear-gradient(135deg, #a78bfa, #7c3aed);
            color: #fff;
        }

        .feature-item:nth-child(4) .feature-icon {
            background: linear-gradient(135deg, #f472b6, #ec4899);
            color: #fff;
        }

        .feature-text h4 {
            font-size: 0.95rem;
            font-weight: 700;
            margin-bottom: 0.15rem;
        }

        .feature-text p {
            font-size: 0.8rem;
            color: var(--primary-light);
        }

        /* ========== SECTION TITLES ========== */
        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            margin-bottom: 2.5rem;
            padding-top: 2rem;
        }

        .section-header h2 {
            font-family: 'Playfair Display', serif;
            font-size: 2.4rem;
            font-weight: 700;
            letter-spacing: -0.02em;
        }

        .section-header h2 span {
            color: var(--accent);
        }

        .section-header a {
            color: var(--accent-2);
            text-decoration: none;
            font-weight: 600;
            font-size: 0.95rem;
            display: flex;
            align-items: center;
            gap: 0.5rem;
            transition: gap var(--transition);
        }

        .section-header a:hover {
            gap: 0.8rem;
        }

        /* ========== PRODUCT GRID ========== */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 1.8rem;
            padding-bottom: 5rem;
        }

        .product-card {
            background: var(--bg-card);
            border: 1px solid var(--border);
            border-radius: var(--radius);
            overflow: hidden;
            transition: all var(--transition);
            position: relative;
            animation: fadeUp 0.6s ease-out both;
        }

        .product-card:nth-child(1) { animation-delay: 0.05s; }
        .product-card:nth-child(2) { animation-delay: 0.1s; }
        .product-card:nth-child(3) { animation-delay: 0.15s; }
        .product-card:nth-child(4) { animation-delay: 0.2s; }

        .product-card:hover {
            transform: translateY(-8px);
            border-color: rgba(255, 123, 84, 0.3);
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.4);
        }

        .product-image {
            position: relative;
            height: 260px;
            overflow: hidden;
            background: #1a1a28;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.6s cubic-bezier(0.25, 0.46, 0.45, 0.94);
        }

        .product-card:hover .product-image img {
            transform: scale(1.08);
        }

        .product-actions {
            position: absolute;
            top: 1rem;
            right: 1rem;
            display: flex;
            flex-direction: column;
            gap: 0.6rem;
            opacity: 0;
            transform: translateX(10px);
            transition: all var(--transition);
        }

        .product-card:hover .product-actions {
            opacity: 1;
            transform: translateX(0);
        }

        .product-actions button {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: rgba(11, 11, 18, 0.8);
            backdrop-filter: blur(8px);
            border: 1px solid var(--border);
            color: var(--primary);
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: all var(--transition);
            font-size: 0.9rem;
        }

        .product-actions button:hover {
            background: var(--accent);
            color: #0b0b12;
            border-color: var(--accent);
        }

        .product-badge {
            position: absolute;
            top: 1rem;
            left: 1rem;
            padding: 0.35rem 0.9rem;
            border-radius: 50px;
            font-size: 0.7rem;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: 0.06em;
        }

        .badge-new {
            background: var(--accent-2);
            color: #0b0b12;
        }

        .badge-sale {
            background: var(--accent);
            color: #0b0b12;
        }

        .badge-hot {
            background: #f472b6;
            color: #fff;
        }

        .product-info {
            padding: 1.5rem;
        }

        .product-category {
            font-size: 0.75rem;
            text-transform: uppercase;
            letter-spacing: 0.08em;
            color: var(--accent-2);
            font-weight: 700;
            margin-bottom: 0.5rem;
        }

        .product-info h3 {
            font-size: 1.15rem;
            font-weight: 700;
            margin-bottom: 0.4rem;
            line-height: 1.3;
        }

        .product-rating {
            display: flex;
            align-items: center;
            gap: 0.4rem;
            margin-bottom: 1rem;
        }

        .product-rating i {
            color: #fbbf24;
            font-size: 0.85rem;
        }

        .product-rating span {
            font-size: 0.8rem;
            color: var(--primary-light);
        }

        .product-bottom {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .product-price {
            font-size: 1.3rem;
            font-weight: 800;
            color: var(--primary);
        }

        .product-price .old {
            font-size: 0.9rem;
            font-weight: 500;
            color: var(--primary-light);
            text-decoration: line-through;
            margin-left: 0.5rem;
        }

        .add-to-cart {
            background: var(--glass);
            border: 1px solid var(--border);
            color: var(--primary);
            padding: 0.6rem 1.2rem;
            border-radius: 50px;
            font-weight: 600;
            font-size: 0.85rem;
            cursor: pointer;
            display: flex;
            align-items: center;
            gap: 0.5rem;
            transition: all var(--transition);
            font-family: 'Inter', sans-serif;
        }

        .add-to-cart:hover {
            background: var(--accent);
            color: #0b0b12;
            border-color: var(--accent);
            box-shadow: 0 4px 20px var(--accent-glow);
        }

        /* ========== CTA BANNER ========== */
        .cta-banner {
            background: linear-gradient(135deg, #1a1a2e 0%, #16162a 50%, #0f0f1e 100%);
            border: 1px solid var(--border);
            border-radius: var(--radius);
            padding: 4rem;
            text-align: center;
            position: relative;
            overflow: hidden;
            margin-bottom: 5rem;
            animation: fadeUp 0.8s ease-out 0.3s both;
        }

        .cta-banner::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: radial-gradient(circle at 30% 50%, var(--accent-glow) 0%, transparent 50%),
                        radial-gradient(circle at 70% 50%, rgba(0, 212, 255, 0.08) 0%, transparent 50%);
            animation: rotateGlow 20s linear infinite;
        }

        .cta-banner > * {
            position: relative;
            z-index: 1;
        }

        .cta-banner h2 {
            font-family: 'Playfair Display', serif;
            font-size: 2.8rem;
            margin-bottom: 1rem;
            letter-spacing: -0.02em;
        }

        .cta-banner p {
            color: var(--primary-light);
            font-size: 1.1rem;
            max-width: 550px;
            margin: 0 auto 2rem;
        }

        .cta-banner .btn-primary {
            font-size: 1.05rem;
            padding: 1.1rem 2.8rem;
        }

        /* ========== FOOTER ========== */
        footer {
            width: 100%;
            border-top: 1px solid var(--border);
            padding: 3rem 0;
            margin-top: auto;
        }

        .footer-inner {
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
            gap: 1.5rem;
        }

        .footer-inner p {
            color: var(--primary-light);
            font-size: 0.85rem;
        }

        .social-links {
            display: flex;
            gap: 1rem;
        }

        .social-links a {
            width: 42px;
            height: 42px;
            border-radius: 50%;
            background: var(--glass);
            border: 1px solid var(--border);
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--primary-light);
            text-decoration: none;
            transition: all var(--transition);
            font-size: 1rem;
        }

        .social-links a:hover {
            background: var(--accent);
            color: #0b0b12;
            border-color: var(--accent);
            transform: translateY(-4px);
            box-shadow: 0 8px 24px var(--accent-glow);
        }

        /* ========== ANIMATIONS ========== */
        @keyframes fadeUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes pulse {
            0%, 100% { transform: scale(1); opacity: 0.7; }
            50% { transform: scale(1.15); opacity: 1; }
        }

        @keyframes rotateGlow {
            from { transform: rotate(0deg); }
            to { transform: rotate(360deg); }
        }

        /* ========== RESPONSIVE ========== */
        @media (max-width: 1024px) {
            .hero {
                grid-template-columns: 1fr;
                text-align: center;
                gap: 3rem;
                padding: 3rem 0;
            }

            .hero p {
                margin-left: auto;
                margin-right: auto;
            }

            .hero-buttons {
                justify-content: center;
            }

            .hero-visual {
                order: -1;
            }

            .hero-card {
                width: 320px;
                height: 400px;
            }

            .hero-glow {
                width: 320px;
                height: 320px;
            }
        }

        @media (max-width: 768px) {
            nav ul {
                display: none;
            }

            .featured-strip {
                flex-direction: column;
            }

            .section-header {
                flex-direction: column;
                align-items: flex-start;
                gap: 1rem;
            }

            .section-header h2 {
                font-size: 1.9rem;
            }

            .cta-banner {
                padding: 2.5rem 1.5rem;
            }

            .cta-banner h2 {
                font-size: 2rem;
            }

            .footer-inner {
                flex-direction: column;
                text-align: center;
            }

            .product-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>

    <!-- ========== HEADER ========== -->
    <header>
        <div class="container header-inner">
            <div class="logo">
                <i class="fas fa-bolt"></i> NexusShop
            </div>
            <nav>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Shop</a></li>
                    <li><a href="#">Collections</a></li>
                    <li><a href="#">About</a></li>
                </ul>
            </nav>
            <div class="nav-icons">
                <button aria-label="Search"><i class="fas fa-search"></i></button>
                <button aria-label="Wishlist"><i class="far fa-heart"></i></button>
                <button aria-label="Cart">
                    <i class="fas fa-shopping-bag"></i>
                    <span class="cart-badge">3</span>
                </button>
            </div>
        </div>
    </header>

    <!-- ========== MAIN ========== -->
    <main class="container">

        <!-- HERO -->
        <section class="hero">
            <div class="hero-content">
                <div class="hero-badge">
                    <i class="fas fa-star"></i> New Season 2025
                </div>
                <h1>Elevate Your <span>Everyday</span> Style</h1>
                <p>Discover curated collections of premium products designed to inspire. Where modern aesthetics meet timeless quality.</p>
                <div class="hero-buttons">
                    <a href="#" class="btn btn-primary">
                        Shop Now <i class="fas fa-arrow-right"></i>
                    </a>
                    <a href="#" class="btn btn-outline">
                        Explore <i class="fas fa-compass"></i>
                    </a>
                </div>
            </div>
            <div class="hero-visual">
                <div class="hero-glow"></div>
                <div class="hero-card">
                    <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=600&q=80" alt="Featured product">
                    <div class="hero-card-overlay">
                        <div>
                            <h3>Minimal Watch</h3>
                            <p>Premium Collection</p>
                        </div>
                        <div class="price-tag">$249</div>
                    </div>
                </div>
            </div>
        </section>

        <!-- FEATURED STRIP -->
        <section class="featured-strip">
            <div class="feature-item">
                <div class="feature-icon"><i class="fas fa-truck-fast"></i></div>
                <div class="feature-text">
                    <h4>Free Shipping</h4>
                    <p>On orders over $99</p>
                </div>
            </div>
            <div class="feature-item">
                <div class="feature-icon"><i class="fas fa-shield-halved"></i></div>
                <div class="feature-text">
                    <h4>Secure Payment</h4>
                    <p>100% protected</p>
                </div>
            </div>
            <div class="feature-item">
                <div class="feature-icon"><i class="fas fa-rotate-left"></i></div>
                <div class="feature-text">
                    <h4>Easy Returns</h4>
                    <p>30-day guarantee</p>
                </div>
            </div>
            <div class="feature-item">
                <div class="feature-icon"><i class="fas fa-headset"></i></div>
                <div class="feature-text">
                    <h4>24/7 Support</h4>
                    <p>Always here to help</p>
                </div>
            </div>
        </section>

        <!-- PRODUCTS -->
        <div class="section-header">
            <h2>Trending <span>Now</span></h2>
            <a href="#">View All <i class="fas fa-arrow-right"></i></a>
        </div>

        <section class="product-grid">
            <!-- Product 1 -->
            <div class="product-card">
                <div class="product-image">
                    <img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=600&q=80" alt="Sneakers">
                    <span class="product-badge badge-new">New</span>
                    <div class="product-actions">
                        <button aria-label="Wishlist"><i class="far fa-heart"></i></button>
                        <button aria-label="Quick view"><i class="far fa-eye"></i></button>
                    </div>
                </div>
                <div class="product-info">
                    <div class="product-category">Footwear</div>
                    <h3>Air Max Runner</h3>
                    <div class="product-rating">
                        <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i>
                        <span>(128)</span>
                    </div>
                    <div class="product-bottom">
                        <div class="product-price">$159 <span class="old">$199</span></div>
                        <button class="add-to-cart"><i class="fas fa-plus"></i> Add</button>
                    </div>
                </div>
            </div>

            <!-- Product 2 -->
            <div class="product-card">
                <div class="product-image">
                    <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=600&q=80" alt="Watch">
                    <span class="product-badge badge-sale">-30%</span>
                    <div class="product-actions">
                        <button aria-label="Wishlist"><i class="far fa-heart"></i></button>
                        <button aria-label="Quick view"><i class="far fa-eye"></i></button>
                    </div>
                </div>
                <div class="product-info">
                    <div class="product-category">Accessories</div>
                    <h3>Classic Chrono</h3>
                    <div class="product-rating">
                        <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
                        <span>(94)</span>
                    </div>
                    <div class="product-bottom">
                        <div class="product-price">$249 <span class="old">$359</span></div>
                        <button class="add-to-cart"><i class="fas fa-plus"></i> Add</button>
                    </div>
                </div>
            </div>

            <!-- Product 3 -->
            <div class="product-card">
                <div class="product-image">
                    <img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&q=80" alt="Headphones">
                    <span class="product-badge badge-hot">Hot</span>
                    <div class="product-actions">
                        <button aria-label="Wishlist"><i class="far fa-heart"></i></button>
                        <button aria-label="Quick view"><i class="far fa-eye"></i></button>
                    </div>
                </div>
                <div class="product-info">
                    <div class="product-category">Audio</div>
                    <h3>Studio Pro X</h3>
                    <div class="product-rating">
                        <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i>
                        <span>(67)</span>
                    </div>
                    <div class="product-bottom">
                        <div class="product-price">$189</div>
                        <button class="add-to-cart"><i class="fas fa-plus"></i> Add</button>
                    </div>
                </div>
            </div>

            <!-- Product 4 -->
            <div class="product-card">
                <div class="product-image">
                    <img src="https://images.unsplash.com/photo-1549298916-b41d501d3772?w=600&q=80" alt="Sneaker">
                    <span class="product-badge badge-new">New</span>
                    <div class="product-actions">
                        <button aria-label="Wishlist"><i class="far fa-heart"></i></button>
                        <button aria-label="Quick view"><i class="far fa-eye"></i></button>
                    </div>
                </div>
                <div class="product-info">
                    <div class="product-category">Footwear</div>
                    <h3>Cloud Walker</h3>
                    <div class="product-rating">
                        <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i>
                        <span>(203)</span>
                    </div>
                    <div class="product-bottom">
                        <div class="product-price">$139 <span class="old">$179</span></div>
                        <button class="add-to-cart"><i class="fas fa-plus"></i> Add</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- CTA BANNER -->
        <section class="cta-banner">
            <h2>Get <span style="color:var(--accent);">20% Off</span> Your First Order</h2>
            <p>Join the Nexus community and unlock exclusive deals, early access drops, and member-only pricing.</p>
            <a href="#" class="btn btn-primary">
                Claim Offer <i class="fas fa-arrow-right"></i>
            </a>
        </
