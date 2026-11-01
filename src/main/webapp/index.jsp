<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>RohitShop — Modern E‑Commerce</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">
    <style>
        :root {
            --bg: #0b0b12;
            --bg-card: #15151f;
            --primary: #ffffff;
            --primary-light: #a5a5c0;
            --accent: #ff7b54;
            --accent-glow: rgba(255, 123, 84, 0.3);
            --accent-secondary: #7c5cff;
            --gradient-accent: linear-gradient(135deg, #ff7b54, #ff4d8d, #7c5cff);
            --radius: 16px;
            --transition: all 0.35s cubic-bezier(0.25, 0.46, 0.45, 0.94);
        }
        * { margin: 0; padding: 0; box-sizing: border-box; }
        html { scroll-behavior: smooth; }
        body {
            font-family: 'Inter', sans-serif;
            background: var(--bg);
            color: var(--primary);
            overflow-x: hidden;
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
        }
        body::before {
            content: '';
            position: fixed;
            top: -20%; right: -10%;
            width: 600px; height: 600px;
            background: radial-gradient(circle, rgba(255,123,84,0.1) 0%, transparent 70%);
            border-radius: 50%;
            pointer-events: none;
            z-index: 0;
        }
        body::after {
            content: '';
            position: fixed;
            bottom: -20%; left: -10%;
            width: 600px; height: 600px;
            background: radial-gradient(circle, rgba(124,92,255,0.08) 0%, transparent 70%);
            border-radius: 50%;
            pointer-events: none;
            z-index: 0;
        }
        .container { width: 100%; max-width: 1280px; margin: 0 auto; padding: 0 24px; position: relative; z-index: 1; }

        /* NAVBAR */
        .navbar {
            position: sticky; top: 0; z-index: 100;
            padding: 16px 0;
            background: rgba(11,11,18,0.75);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid rgba(255,255,255,0.05);
        }
        .navbar-inner { display: flex; align-items: center; justify-content: space-between; gap: 24px; }
        .logo { display: flex; align-items: center; gap: 10px; font-size: 1.5rem; font-weight: 800; letter-spacing: -0.03em; }
        .logo-icon {
            width: 36px; height: 36px; border-radius: 10px;
            background: var(--gradient-accent);
            display: flex; align-items: center; justify-content: center;
            color: #fff; box-shadow: 0 0 20px var(--accent-glow);
        }
        .logo span { background: var(--gradient-accent); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text; }
        .nav-links { display: flex; align-items: center; gap: 8px; list-style: none; }
        .nav-links a {
            color: var(--primary-light); text-decoration: none; font-size: 0.9rem; font-weight: 500;
            padding: 8px 16px; border-radius: 10px; transition: var(--transition);
        }
        .nav-links a:hover { color: var(--primary); background: rgba(255,255,255,0.05); }
        .nav-actions { display: flex; align-items: center; gap: 8px; }
        .icon-btn {
            width: 42px; height: 42px; border-radius: 12px;
            border: 1px solid rgba(255,255,255,0.08);
            background: rgba(255,255,255,0.03);
            color: var(--primary-light);
            display: flex; align-items: center; justify-content: center;
            cursor: pointer; transition: var(--transition); position: relative; font-size: 1rem;
        }
        .icon-btn:hover { background: rgba(255,255,255,0.08); color: var(--primary); transform: translateY(-2px); }
        .icon-btn .badge {
            position: absolute; top: -4px; right: -4px;
            width: 18px; height: 18px; border-radius: 50%;
            background: var(--gradient-accent); font-size: 0.6rem; font-weight: 700;
            display: flex; align-items: center; justify-content: center; color: #fff;
            box-shadow: 0 0 10px var(--accent-glow);
        }
        .mobile-toggle { display: none; }

        /* HERO */
        .hero { position: relative; padding: 80px 0 100px; overflow: hidden; }
        .hero-glow {
            position: absolute; top: 10%; right: -15%;
            width: 700px; height: 700px;
            background: radial-gradient(circle, rgba(255,123,84,0.14) 0%, transparent 65%);
            border-radius: 50%; pointer-events: none;
            animation: pulse-glow 6s ease-in-out infinite alternate;
        }
        @keyframes pulse-glow {
            0% { opacity: 0.5; transform: scale(1); }
            100% { opacity: 1; transform: scale(1.15); }
        }
        .hero-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 60px; align-items: center; position: relative; z-index: 1; }
        .hero-badge {
            display: inline-flex; align-items: center; gap: 8px;
            padding: 8px 18px; border-radius: 100px;
            background: rgba(255,123,84,0.08); border: 1px solid rgba(255,123,84,0.2);
            font-size: 0.8rem; font-weight: 600; color: var(--accent);
            margin-bottom: 24px; letter-spacing: 0.02em;
            animation: fadeInUp 0.8s ease-out;
        }
        .hero-title {
            font-family: 'Playfair Display', serif;
            font-size: clamp(2.8rem, 5.5vw, 4.2rem);
            line-height: 1.08; letter-spacing: -0.03em; margin-bottom: 20px;
            animation: fadeInUp 0.8s ease-out 0.1s both;
        }
        .hero-title .gradient-text {
            background: var(--gradient-accent);
            -webkit-background-clip: text; -webkit-text-fill-color: transparent;
            background-clip: text; display: inline-block;
        }
        .hero-subtitle {
            font-size: 1.1rem; color: var(--primary-light); max-width: 480px;
            margin-bottom: 36px; line-height: 1.7;
            animation: fadeInUp 0.8s ease-out 0.2s both;
        }
        .hero-actions { display: flex; align-items: center; gap: 16px; flex-wrap: wrap; animation: fadeInUp 0.8s ease-out 0.3s both; }
        .btn {
            display: inline-flex; align-items: center; gap: 10px;
            padding: 14px 32px; border-radius: 100px;
            font-size: 0.95rem; font-weight: 600; text-decoration: none;
            cursor: pointer; transition: var(--transition); border: none;
        }
        .btn-primary {
            background: var(--gradient-accent); color: #fff;
            box-shadow: 0 8px 32px var(--accent-glow);
        }
        .btn-primary:hover { transform: translateY(-3px) scale(1.02); box-shadow: 0 12px 48px var(--accent-glow); }
        .btn-ghost {
            background: rgba(255,255,255,0.04); color: var(--primary);
            border: 1px solid rgba(255,255,255,0.1); backdrop-filter: blur(10px);
        }
        .btn-ghost:hover { background: rgba(255,255,255,0.08); transform: translateY(-3px); }

        .hero-visual { position: relative; display: flex; justify-content: center; animation: fadeInUp 0.8s ease-out 0.2s both; }
        .hero-card {
            width: 100%; max-width: 440px; aspect-ratio: 4/5;
            border-radius: 24px; background: var(--bg-card);
            border: 1px solid rgba(255,255,255,0.06);
            overflow: hidden; position: relative;
            box-shadow: 0 24px 80px rgba(0,0,0,0.5), 0 0 60px var(--accent-glow);
            transform: perspective(1000px) rotateY(-4deg) rotateX(2deg);
            transition: var(--transition);
        }
        .hero-card:hover { transform: perspective(1000px) rotateY(0) rotateX(0) scale(1.02); }
        .hero-card-img {
            width: 100%; height: 70%;
            background: linear-gradient(145deg, #1e1e2b, #15151f);
            display: flex; align-items: center; justify-content: center;
            position: relative; overflow: hidden;
        }
        .hero-card-img::before {
            content: '';
            position: absolute; inset: 0;
            background:
                radial-gradient(circle at 30% 40%, rgba(255,123,84,0.3) 0%, transparent 50%),
                radial-gradient(circle at 70% 60%, rgba(124,92,255,0.25) 0%, transparent 50%);
            animation: shimmer 4s ease-in-out infinite alternate;
        }
        @keyframes shimmer { 0% { opacity: 0.6; } 100% { opacity: 1; } }
        .hero-card-img i { font-size: 5rem; color: rgba(255,255,255,0.18); position: relative; z-index: 1; }
        .hero-card-body { padding: 24px; position: relative; z-index: 2; }
        .hero-card-tag {
            display: inline-block; padding: 4px 12px; border-radius: 100px;
            background: rgba(255,123,84,0.12); color: var(--accent);
            font-size: 0.7rem; font-weight: 700; text-transform: uppercase;
            letter-spacing: 0.08em; margin-bottom: 10px;
        }
        .hero-card-title { font-size: 1.15rem; font-weight: 700; margin-bottom: 6px; }
        .hero-card-price {
            font-size: 1.3rem; font-weight: 800;
            background: var(--gradient-accent);
            -webkit-background-clip: text; -webkit-text-fill-color: transparent;
            background-clip: text; display: inline-block;
        }
        .float-badge {
            position: absolute;
            background: rgba(21,21,31,0.85); backdrop-filter: blur(16px);
            border: 1px solid rgba(255,255,255,0.08); border-radius: 14px;
            padding: 12px 18px; display: flex; align-items: center; gap: 10px;
            font-size: 0.8rem; font-weight: 600; z-index: 3;
            box-shadow: 0 8px 32px rgba(0,0,0,0.4);
            animation: float 5s ease-in-out infinite;
        }
        .float-badge-1 { top: 12%; left: -8%; color: var(--accent); }
        .float-badge-2 { bottom: 18%; right: -6%; color: var(--accent-secondary); animation-delay: 2.5s; }
        @keyframes float { 0%, 100% { transform: translateY(0); } 50% { transform: translateY(-12px); } }

        /* TRUST BAR */
        .trust-bar {
            padding: 48px 0;
            border-top: 1px solid rgba(255,255,255,0.05);
            border-bottom: 1px solid rgba(255,255,255,0.05);
            background: linear-gradient(135deg, rgba(255,123,84,0.05), rgba(124,92,255,0.05));
        }
        .trust-grid { display: grid; grid-template-columns: repeat(4, 1fr); gap: 32px; }
        .trust-item { display: flex; align-items: center; gap: 14px; justify-content: center; transition: var(--transition); }
        .trust-item:hover { transform: translateY(-3px); }
        .trust-icon {
            width: 48px; height: 48px; border-radius: 14px;
            background: rgba(255,123,84,0.08); border: 1px solid rgba(255,123,84,0.15);
            display: flex; align-items: center; justify-content: center;
            color: var(--accent); font-size: 1.1rem; flex-shrink: 0;
        }
        .trust-text h4 { font-size: 0.85rem; font-weight: 700; margin-bottom: 2px; }
        .trust-text p { font-size: 0.75rem; color: var(--primary-light); }

        /* PRODUCTS */
        .section-header { text-align: center; margin-bottom: 56px; padding-top: 80px; }
        .section-label {
            display: inline-flex; align-items: center; gap: 8px;
            padding: 6px 16px; border-radius: 100px;
            background: rgba(124,92,255,0.08); border: 1px solid rgba(124,92,255,0.18);
            font-size: 0.75rem; font-weight: 700; color: var(--accent-secondary);
            text-transform: uppercase; letter-spacing: 0.1em; margin-bottom: 20px;
        }
        .section-title { font-family: 'Playfair Display', serif; font-size: clamp(2rem, 3.5vw, 2.8rem); letter-spacing: -0.03em; margin-bottom: 12px; }
        .section-subtitle { color: var(--primary-light); font-size: 1rem; max-width: 520px; margin: 0 auto; }
        .products-section { padding-bottom: 100px; }
        .products-grid { display: grid; grid-template-columns: repeat(4, 1fr); gap: 24px; }
        .product-card {
            background: var(--bg-card); border-radius: var(--radius);
            border: 1px solid rgba(255,255,255,0.06);
            overflow: hidden; transition: var(--transition); position: relative; cursor: pointer;
        }
        .product-card:hover {
            transform: translateY(-8px);
            border-color: rgba(255,123,84,0.25);
            box-shadow: 0 20px 60px rgba(0,0,0,0.4), 0 0 40px var(--accent-glow);
        }
        .product-img {
            height: 220px;
            background: linear-gradient(145deg, #1a1a28, #12121c);
            display: flex; align-items: center; justify-content: center;
            position: relative; overflow: hidden;
        }
        .product-img i { font-size: 3.5rem; color: rgba(255,255,255,0.12); transition: var(--transition); }
        .product-card:hover .product-img i { transform: scale(1.15) rotate(-5deg); color: rgba(255,255,255,0.2); }
        .product-badge {
            position: absolute; top: 12px; left: 12px;
            padding: 4px 10px; border-radius: 6px;
            font-size: 0.65rem; font-weight: 700; text-transform: uppercase;
            letter-spacing: 0.06em; z-index: 2;
        }
        .badge-new { background: var(--gradient-accent); color: #fff; box-shadow: 0 4px 16px var(--accent-glow); }
        .badge-sale { background: rgba(255,123,84,0.15); color: var(--accent); border: 1px solid rgba(255,123,84,0.25); }
        .product-body { padding: 20px; }
        .product-category { font-size: 0.7rem; font-weight: 600; text-transform: uppercase; letter-spacing: 0.08em; color: var(--accent-secondary); margin-bottom: 6px; }
        .product-name { font-size: 0.95rem; font-weight: 600; margin-bottom: 8px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; }
        .product-bottom { display: flex; align-items: center; justify-content: space-between; margin-top: 12px; }
        .product-price {
            font-size: 1.1rem; font-weight: 800;
            background: var(--gradient-accent);
            -webkit-background-clip: text; -webkit-text-fill-color: transparent;
            background-clip: text;
        }
        .product-price .old-price {
            font-size: 0.75rem; font-weight: 500; color: var(--primary-light);
            -webkit-text-fill-color: var(--primary-light);
            text-decoration: line-through; margin-left: 6px;
        }
        .add-to-cart {
            width: 38px; height: 38px; border-radius: 12px;
            background: rgba(255,255,255,0.04); border: 1px solid rgba(255,255,255,0.08);
            color: var(--primary-light); display: flex; align-items: center; justify-content: center;
            cursor: pointer; transition: var(--transition); font-size: 0.9rem;
        }
        .add-to-cart:hover {
            background: var(--gradient-accent); color: #fff;
            border-color: transparent; transform: scale(1.1) rotate(90deg);
            box-shadow: 0 4px 20px var(--accent-glow);
        }

        /* CTA */
        .cta-banner { margin: 0 0 80px; position: relative; }
        .cta-inner {
            background: var(--bg-card); border-radius: 24px;
            border: 1px solid rgba(255,255,255,0.06);
            padding: 60px 48px; display: flex; align-items: center; justify-content: space-between;
            gap: 40px; position: relative; overflow: hidden;
            box-shadow: 0 0 80px rgba(255,123,84,0.06);
        }
        .cta-inner::before {
            content: ''; position: absolute; top: -50%; right: -10%;
            width: 500px; height: 500px;
            background: radial-gradient(circle, rgba(255,123,84,0.14) 0%, transparent 65%);
            border-radius: 50%; pointer-events: none;
        }
        .cta-content { position: relative; z-index: 1; }
        .cta-content h2 { font-family: 'Playfair Display', serif; font-size: clamp(1.8rem, 3vw, 2.4rem); letter-spacing: -0.03em; margin-bottom: 12px; line-height: 1.15; }
        .cta-content p { color: var(--primary-light); font-size: 0.95rem; max-width: 420px; }
        .cta-actions { position: relative; z-index: 1; flex-shrink: 0; }

        /* FOOTER */
        .footer { border-top: 1px solid rgba(255,255,255,0.06); padding: 60px 0 40px; position: relative; z-index: 1; }
        .footer-grid { display: grid; grid-template-columns: 2fr 1fr 1fr 1fr; gap: 48px; margin-bottom: 48px; }
        .footer-brand p { color: var(--primary-light); font-size: 0.85rem; margin-top: 16px; max-width: 300px; line-height: 1.7; }
        .footer-socials { display: flex; gap: 10px; margin-top: 24px; }
        .social-btn {
            width: 38px; height: 38px; border-radius: 10px;
            border: 1px solid rgba(255,255,255,0.08); background: rgba(255,255,255,0.03);
            display: flex; align-items: center; justify-content: center;
            color: var(--primary-light); font-size: 0.85rem; transition: var(--transition);
        }
        .social-btn:hover { background: var(--gradient-accent); color: #fff; border-color: transparent; transform: translateY(-3px); }
        .footer-col h4 { font-size: 0.8rem; font-weight: 700; text-transform: uppercase; letter-spacing: 0.08em; margin-bottom: 20px; }
        .footer-col ul { list-style: none; display: flex; flex-direction: column; gap: 12px; }
        .footer-col a { color: var(--primary-light); text-decoration: none; font-size: 0.85rem; transition: var(--transition); }
        .footer-col a:hover { color: var(--accent); padding-left: 4px; }
        .footer-bottom {
            display: flex; align-items: center; justify-content: space-between;
            padding-top: 32px; border-top: 1px solid rgba(255,255,255,0.05);
            font-size: 0.8rem; color: var(--primary-light);
        }

        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(24px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @media (max-width: 1024px) {
            .products-grid { grid-template-columns: repeat(3, 1fr); }
            .footer-grid { grid-template-columns: 1fr 1fr; }
        }
        @media (max-width: 768px) {
            .nav-links { display: none; }
            .mobile-toggle { display: flex; }
            .hero-grid { grid-template-columns: 1fr; gap: 48px; text-align: center; }
            .hero-subtitle { margin-left: auto; margin-right: auto; }
            .hero-actions { justify-content: center; }
            .hero-visual { order: -1; }
            .hero-card { max-width: 340px; margin: 0 auto; }
            .float-badge-1 { left: 0; }
            .float-badge-2 { right: 0; }
            .trust-grid { grid-template-columns: repeat(2, 1fr); }
            .products-grid { grid-template-columns: repeat(2, 1fr); }
            .cta-inner { flex-direction: column; text-align: center; padding: 40px 24px; }
            .footer-grid { grid-template-columns: 1fr; gap: 32px; }
            .footer-bottom { flex-direction: column; gap: 12px; text-align: center; }
        }
        @media (max-width: 480px) {
            .products-grid { grid-template-columns: 1fr; }
            .trust-grid { grid-template-columns: 1fr; }
            .hero-actions { flex-direction: column; width: 100%; }
            .hero-actions .btn { width: 100%; justify-content: center; }
        }
    </style>
</head>
<body>

    <!-- NAVBAR -->
    <nav class="navbar">
        <div class="container navbar-inner">
            <a href="#" class="logo">
                <div class="logo-icon"><i class="fa-solid fa-bag-shopping"></i></div>
                Rohit<span>Shop</span>
            </a>
            <ul class="nav-links">
                <li><a href="#">Home</a></li>
                <li><a href="#">Shop</a></li>
                <li><a href="#">Collections</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
            <div class="nav-actions">
                <button class="icon-btn" aria-label="Search"><i class="fa-solid fa-magnifying-glass"></i></button>
                <button class="icon-btn" aria-label="Cart">
                    <i class="fa-solid fa-cart-shopping"></i>
                    <span class="badge">3</span>
                </button>
                <button class="icon-btn mobile-toggle" aria-label="Menu"><i class="fa-solid fa-bars"></i></button>
            </div>
        </div>
    </nav>

    <!-- HERO -->
    <section class="hero">
        <div class="hero-glow"></div>
        <div class="container">
            <div class="hero-grid">
                <div class="hero-content">
                    <div class="hero-badge">
                        <i class="fa-solid fa-bolt"></i> New Season 2026
                    </div>
                    <h1 class="hero-title">
                        Discover <span class="gradient-text">Premium</span><br>Style Redefined
                    </h1>
                    <p class="hero-subtitle">
                        Curated collections of timeless essentials and bold statement pieces — crafted for the modern individual.
                    </p>
                    <div class="hero-actions">
                        <a href="#" class="btn btn-primary">
                            Shop Now <i class="fa-solid fa-arrow-right"></i>
                        </a>
                        <a href="#" class="btn btn-ghost">
                            <i class="fa-solid fa-play"></i> Watch Lookbook
                        </a>
                    </div>
                </div>
                <div class="hero-visual">
                    <div class="hero-card">
                        <div class="hero-card-img">
                            <i class="fa-solid fa-headphones"></i>
                        </div>
                        <div class="hero-card-body">
                            <div class="hero-card-tag">Trending</div>
                            <div class="hero-card-title">Aura Pro Headphones</div>
                            <div class="hero-card-price">$249 <span>$349</span></div>
                        </div>
                    </div>
                    <div class="float-badge float-badge-1">
                        <i class="fa-solid fa-star"></i> 4.9 Rating
                    </div>
                    <div class="float-badge float-badge-2">
                        <i class="fa-solid fa-truck-fast"></i> Free Shipping
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- TRUST BAR -->
    <section class="trust-bar">
        <div class="container trust-grid">
            <div class="trust-item">
                <div class="trust-icon"><i class="fa-solid fa-truck-fast"></i></div>
                <div class="trust-text"><h4>Free Shipping</h4><p>On orders over $99</p></div>
            </div>
            <div class="trust-item">
                <div class="trust-icon"><i class="fa-solid fa-rotate-left"></i></div>
                <div class="trust-text"><h4>Easy Returns</h4><p>30-day guarantee</p></div>
            </div>
            <div class="trust-item">
                <div class="trust-icon"><i class="fa-solid fa-shield-halved"></i></div>
                <div class="trust-text"><h4>Secure Payment</h4><p>100% protected</p></div>
            </div>
            <div class="trust-item">
                <div class="trust-icon"><i class="fa-solid fa-headset"></i></div>
                <div class="trust-text"><h4>24/7 Support</h4><p>Always here for you</p></div>
            </div>
        </div>
    </section>

    <!-- PRODUCTS -->
    <section class="products-section">
        <div class="container">
            <div class="section-header">
                <div class="section-label"><i class="fa-solid fa-fire"></i> Best Sellers</div>
                <h2 class="section-title">Featured Products</h2>
                <p class="section-subtitle">Hand-picked favorites loved by our community</p>
            </div>
            <div class="products-grid">
                <!-- 1 -->
                <div class="product-card">
                    <div class="product-img">
                        <span class="product-badge badge-new">New</span>
                        <i class="fa-solid fa-headphones"></i>
                    </div>
                    <div class="product-body">
                        <div class="product-category">Audio</div>
                        <div class="product-name">Aura Pro Headphones</div>
                        <div class="product-bottom">
                            <div class="product-price">$249 <span class="old-price">$349</span></div>
                            <button class="add-to-cart"><i class="fa-solid fa-plus"></i></button>
                        </div>
                    </div>
                </div>
                <!-- 2 -->
                <div class="product-card">
                    <div class="product-img">
                        <span class="product-badge badge-sale">-20%</span>
                        <i class="fa-solid fa-watch"></i>
                    </div>
                    <div class="product-body">
                        <div class="product-category">Wearables</div>
                        <div class="product-name">Nova Smartwatch</div>
                        <div class="product-bottom">
                            <div class="product-price">$199 <span class="old-price">$249</span></div>
                            <button class="add-to-cart"><i class="fa-solid fa-plus"></i></button>
                        </div>
                    </div>
                </div>
                <!-- 3 -->
                <div class="product-card">
                    <div class="product-img">
                        <i class="fa-solid fa-camera"></i>
                    </div>
                    <div class="product-body">
                        <div class="product-category">Photography</div>
                        <div class="product-name">Lumen X Mirrorless</div>
                        <div class="product-bottom">
                            <div class="product-price">$899</div>
                            <button class="add-to-cart"><i class="fa-solid fa-plus"></i></button>
                        </div>
                    </div>
                </div>
                <!-- 4 -->
                <div class="product-card">
                    <div class="product-img">
                        <span class="product-badge badge-new">New</span>
                        <i class="fa-solid fa-mobile-screen"></i>
                    </div>
                    <div class="product-body">
                        <div class="product-category">Mobile</div>
                        <div class="product-name">Edge Ultra 5G</div>
                        <div class="product-bottom">
                            <div class="product-price">$1,099</div>
                            <button class="add-to-cart"><i class="fa-solid fa-plus"></i></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- CTA BANNER -->
    <section class="cta-banner">
        <div class="container">
            <div class="cta-inner">
                <div class="cta-content">
                    <h2>Get 20% Off Your First Order</h2>
                    <p>Join our newsletter and unlock exclusive deals, early access drops, and insider perks.</p>
                </div>
                <div class="cta-actions">
                    <a href="#" class="btn btn-primary">Claim Offer <i class="fa-solid fa-gift"></i></a>
                </div>
            </div>
        </div>
    </section>

    <!-- FOOTER -->
    <footer class="footer">
        <div class="container">
            <div class="footer-grid">
                <div class="footer-brand">
                    <a href="#" class="logo">
                        <div class="logo-icon"><i class="fa-solid fa-bag-shopping"></i></div>
                        Rohit<span>Shop</span>
                    </a>
                    <p>Premium products for the modern individual. Curated with care, delivered with speed.</p>
                    <div class="footer-socials">
                        <a href="#" class="social-btn"><i class="fa-brands fa-instagram"></i></a>
                        <a href="#" class="social-btn"><i class="fa-brands fa-x-twitter"></i></a>
                        <a href="#" class="social-btn"><i class="fa-brands fa-facebook-f"></i></a>
                        <a href="#" class="social-btn"><i class="fa-brands fa-youtube"></i></a>
                    </div>
                </div>
                <div class="footer-col">
                    <h4>Shop</h4>
                    <ul>
                        <li><a href="#">New Arrivals</a></li>
                        <li><a href="#">Best Sellers</a></li>
                        <li><a href="#">Sale</a></li>
                        <li><a href="#">Gift Cards</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Support</h4>
                    <ul>
                        <li><a href="#">Help Center</a></li>
                        <li><a href="#">Track Order</a></li>
                        <li><a href="#">Returns</a></li>
                        <li><a href="#">Shipping</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Company</h4>
                    <ul>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Press</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                <span>© 2026 RohitShop. All rights reserved.</span>
                <span>Privacy ·
