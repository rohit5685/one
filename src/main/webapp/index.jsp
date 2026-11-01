<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>RohitShop — Modern E‑Commerce</title>
    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">
    <style>
        /* ========== ROOT VARIABLES ========== */
        :root {
            --bg: #0b0b12;
            --bg-card: #15151f;
            --bg-card-hover: #1e1e2b;
            --primary: #ffffff;
            --primary-light: #a5a5c0;
            --accent: #ff7b54;
            --accent-glow: rgba(255, 123, 84, 0.3);
            --accent-secondary: #7c5cff;
            --accent-secondary-glow: rgba(124, 92, 255, 0.25);
            --gradient-accent: linear-gradient(135deg, #ff7b54, #ff4d8d, #7c5cff);
            --gradient-subtle: linear-gradient(135deg, rgba(255,123,84,0.1), rgba(124,92,255,0.1));
            --radius: 16px;
            --radius-sm: 12px;
            --shadow-glow: 0 0 40px rgba(255,123,84,0.15);
            --shadow-glow-secondary: 0 0 40px rgba(124,92,255,0.12);
            --transition: all 0.35s cubic-bezier(0.25, 0.46, 0.45, 0.94);
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
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
            background-color: var(--bg);
            color: var(--primary);
            min-height: 100vh;
            overflow-x: hidden;
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
        }

        /* Ambient glow spots */
        body::before {
            content: '';
            position: fixed;
            top: -20%;
            right: -10%;
            width: 600px;
            height: 600px;
            background: radial-gradient(circle, rgba(255,123,84,0.08) 0%, transparent 70%);
            border-radius: 50%;
            pointer-events: none;
            z-index: 0;
        }

        body::after {
            content: '';
            position: fixed;
            bottom: -20%;
            left: -10%;
            width: 600px;
            height: 600px;
            background: radial-gradient(circle, rgba(124,92,255,0.06) 0%, transparent 70%);
            border-radius: 50%;
            pointer-events: none;
            z-index: 0;
        }

        /* ========== TYPOGRAPHY ========== */
        .font-display {
            font-family: 'Playfair Display', Georgia, serif;
            font-weight: 700;
        }

        /* ========== LAYOUT ========== */
        .container {
            width: 100%;
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 24px;
            position: relative;
            z-index: 1;
        }

        /* ========== NAVBAR ========== */
        .navbar {
            position: sticky;
            top: 0;
            z-index: 100;
            padding: 16px 0;
            background: rgba(11, 11, 18, 0.75);
            backdrop-filter: blur(20px) saturate(180%);
            -webkit-backdrop-filter: blur(20px) saturate(180%);
            border-bottom: 1px solid rgba(255, 255, 255, 0.05);
            transition: var(--transition);
        }

        .navbar-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 1.5rem;
            font-weight: 800;
            color: var(--primary);
            text-decoration: none;
            letter-spacing: -0.03em;
            transition: var(--transition);
        }

        .logo:hover {
            transform: scale(1.02);
        }

        .logo-icon {
            width: 36px;
            height: 36px;
            border-radius: 10px;
            background: var(--gradient-accent);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1rem;
            color: #fff;
            box-shadow: 0 0 20px var(--accent-glow);
        }

        .logo span {
            background: var(--gradient-accent);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .nav-links {
            display: flex;
            align-items: center;
            gap: 8px;
            list-style: none;
        }

        .nav-links a {
            color: var(--primary-light);
            text-decoration: none;
            font-size: 0.9rem;
            font-weight: 500;
            padding: 8px 16px;
            border-radius: 10px;
            transition: var(--transition);
            position: relative;
        }

        .nav-links a:hover {
            color: var(--primary);
            background: rgba(255, 255, 255, 0.05);
        }

        .nav-links a.active {
            color: var(--primary);
        }

        .nav-links a.active::after {
            content: '';
            position: absolute;
            bottom: 2px;
            left: 50%;
            transform: translateX(-50%);
            width: 20px;
            height: 2px;
            background: var(--gradient-accent);
            border-radius: 2px;
        }

        .nav-actions {
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .icon-btn {
            width: 42px;
            height: 42px;
            border-radius: 12px;
            border: 1px solid rgba(255, 255, 255, 0.08);
            background: rgba(255, 255, 255, 0.03);
            color: var(--primary-light);
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: var(--transition);
            position: relative;
            font-size: 1rem;
        }

        .icon-btn:hover {
            background: rgba(255, 255, 255, 0.08);
            color: var(--primary);
            border-color: rgba(255, 255, 255, 0.15);
            transform: translateY(-2px);
        }

        .icon-btn .badge {
            position: absolute;
            top: -4px;
            right: -4px;
            width: 18px;
            height: 18px;
            border-radius: 50%;
            background: var(--gradient-accent);
            font-size: 0.6rem;
            font-weight: 700;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #fff;
            box-shadow: 0 0 10px var(--accent-glow);
        }

        .mobile-toggle {
            display: none;
        }

        /* ========== HERO SECTION ========== */
        .hero {
            position: relative;
            padding: 80px 0 100px;
            overflow: hidden;
        }

        .hero-glow {
            position: absolute;
            top: 10%;
            right: -15%;
            width: 700px;
            height: 700px;
            background: radial-gradient(circle, rgba(255,123,84,0.12) 0%, transparent 65%);
            border-radius: 50%;
            pointer-events: none;
            animation: pulse-glow 6s ease-in-out infinite alternate;
        }

        .hero-glow-2 {
            position: absolute;
            bottom: -20%;
            left: -10%;
            width: 500px;
            height: 500px;
            background: radial-gradient(circle, rgba(124,92,255,0.1) 0%, transparent 65%);
            border-radius: 50%;
            pointer-events: none;
            animation: pulse-glow 8s ease-in-out infinite alternate-reverse;
        }

        @keyframes pulse-glow {
            0% { opacity: 0.5; transform: scale(1); }
            100% { opacity: 1; transform: scale(1.15); }
        }

        .hero-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 60px;
            align-items: center;
            position: relative;
            z-index: 1;
        }

        .hero-badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 8px 18px;
            border-radius: 100px;
            background: rgba(255, 123, 84, 0.08);
            border: 1px solid rgba(255, 123, 84, 0.2);
            font-size: 0.8rem;
            font-weight: 600;
            color: var(--accent);
            margin-bottom: 24px;
            letter-spacing: 0.02em;
            animation: fadeInUp 0.8s ease-out;
        }

        .hero-badge i {
            font-size: 0.7rem;
            animation: sparkle 2s ease-in-out infinite;
        }

        @keyframes sparkle {
            0%, 100% { opacity: 1; transform: scale(1); }
            50% { opacity: 0.5; transform: scale(0.8); }
        }

        .hero-title {
            font-size: clamp(2.8rem, 5.5vw, 4.2rem);
            line-height: 1.08;
            letter-spacing: -0.03em;
            margin-bottom: 20px;
            animation: fadeInUp 0.8s ease-out 0.1s both;
        }

        .hero-title .gradient-text {
            background: var(--gradient-accent);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            position: relative;
            display: inline-block;
        }

        .hero-title .gradient-text::after {
            content: '';
            position: absolute;
            bottom: 4px;
            left: 0;
            width: 100%;
            height: 8px;
            background: var(--gradient-accent);
            border-radius: 4px;
            opacity: 0.2;
            filter: blur(4px);
        }

        .hero-subtitle {
            font-size: 1.1rem;
            color: var(--primary-light);
            max-width: 480px;
            margin-bottom: 36px;
            line-height: 1.7;
            animation: fadeInUp 0.8s ease-out 0.2s both;
        }

        .hero-actions {
            display: flex;
            align-items: center;
            gap: 16px;
            flex-wrap: wrap;
            animation: fadeInUp 0.8s ease-out 0.3s both;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 14px 32px;
            border-radius: 100px;
            font-family: 'Inter', sans-serif;
            font-size: 0.95rem;
            font-weight: 600;
            text-decoration: none;
            cursor: pointer;
            transition: var(--transition);
            border: none;
            position: relative;
            overflow: hidden;
        }

        .btn-primary {
            background: var(--gradient-accent);
            color: #fff;
            box-shadow: 0 8px 32px var(--accent-glow);
        }

        .btn-primary:hover {
            transform: translateY(-3px) scale(1.02);
            box-shadow: 0 12px 48px var(--accent-glow), 0 0 60px rgba(255,123,84,0.15);
        }

        .btn-primary i {
            transition: var(--transition);
        }

        .btn-primary:hover i {
            transform: translateX(4px);
        }

        .btn-ghost {
            background: rgba(255, 255, 255, 0.04);
            color: var(--primary);
            border: 1px solid rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
        }

        .btn-ghost:hover {
            background: rgba(255, 255, 255, 0.08);
            border-color: rgba(255, 255, 255, 0.2);
            transform: translateY(-3px);
        }

        /* Hero visual */
        .hero-visual {
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
            animation: fadeInUp 0.8s ease-out 0.2s both;
        }

        .hero-card {
            width: 100%;
            max-width: 440px;
            aspect-ratio: 4/5;
            border-radius: 24px;
            background: var(--bg-card);
            border: 1px solid rgba(255, 255, 255, 0.06);
            overflow: hidden;
            position: relative;
            box-shadow: 0 24px 80px rgba(0, 0, 0, 0.5), 0 0 60px var(--accent-glow);
            transform: perspective(1000px) rotateY(-4deg) rotateX(2deg);
            transition: var(--transition);
        }

        .hero-card:hover {
            transform: perspective(1000px) rotateY(0deg) rotateX(0deg) scale(1.02);
            box-shadow: 0 32px 100px rgba(0, 0, 0, 0.6), 0 0 80px var(--accent-glow);
        }

        .hero-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 40%;
            background: linear-gradient(180deg, rgba(255,123,84,0.15), transparent);
            z-index: 1;
            pointer-events: none;
        }

        .hero-card-img {
            width: 100%;
            height: 70%;
            background: linear-gradient(145deg, #1e1e2b, #15151f);
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            overflow: hidden;
        }

        .hero-card-img::before {
            content: '';
            position: absolute;
            inset: 0;
            background: 
                radial-gradient(circle at 30% 40%, rgba(255,123,84,0.25) 0%, transparent 50%),
                radial-gradient(circle at 70% 60%, rgba(124,92,255,0.2) 0%, transparent 50%);
            animation: shimmer 4s ease-in-out infinite alternate;
        }

        @keyframes shimmer {
            0% { opacity: 0.6; }
            100% { opacity: 1; }
        }

        .hero-card-img i {
            font-size: 5rem;
            color: rgba(255, 255, 255, 0.15);
            position: relative;
            z-index: 1;
            transition: var(--transition);
        }

        .hero-card:hover .hero-card-img i {
            transform: scale(1.1);
            color: rgba(255, 255, 255, 0.25);
        }

        .hero-card-body {
            padding: 24px;
            position: relative;
            z-index: 2;
        }

        .hero-card-tag {
            display: inline-block;
            padding: 4px 12px;
            border-radius: 100px;
            background: rgba(255, 123, 84, 0.12);
            color: var(--accent);
            font-size: 0.7rem;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.08em;
            margin-bottom: 10px;
        }

        .hero-card-title {
            font-size: 1.15rem;
            font-weight: 700;
            margin-bottom: 6px;
        }

        .hero-card-price {
            font-size: 1.3rem;
            font-weight: 800;
            background: var(--gradient-accent);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            display: inline-block;
        }

        .hero-card-price span {
            font-size: 0.85rem;
            font-weight: 500;
            color: var(--primary-light);
            -webkit-text-fill-color: var(--primary-light);
            text-decoration: line-through;
            margin-left: 8px;
        }

        .hero-card-rating {
            display: flex;
            align-items: center;
            gap: 4px;
            margin-top: 10px;
            color: #ffc857;
            font-size: 0.8rem;
        }

        .hero-card-rating span {
            color: var(--primary-light);
            font-size: 0.75rem;
            margin-left: 6px;
        }

        /* Floating badges */
        .float-badge {
            position: absolute;
            background: rgba(21, 21, 31, 0.85);
            backdrop-filter: blur(16px);
            border: 1px solid rgba(255, 255, 255, 0.08);
            border-radius: 14px;
            padding: 12px 18px;
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 0.8rem;
            font-weight: 600;
            z-index: 3;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.4);
            animation: float 5s ease-in-out infinite;
        }

        .float-badge i {
            font-size: 1.1rem;
        }

        .float-badge-1 {
            top: 12%;
            left: -8%;
            color: var(--accent);
            animation-delay: 0s;
        }

        .float-badge-2 {
            bottom: 18%;
            right: -6%;
            color: var(--accent-secondary);
            animation-delay: 2.5s;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0px); }
            50% { transform: translateY(-12px); }
        }

        /* ========== FEATURES / TRUST BAR ========== */
        .trust-bar {
            padding: 48px 0;
            border-top: 1px solid rgba(255, 255, 255, 0.05);
            border-bottom: 1px solid rgba(255, 255, 255, 0.05);
            background: var(--gradient-subtle);
        }

        .trust-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 32px;
        }

        .trust-item {
            display: flex;
            align-items: center;
            gap: 14px;
            justify-content: center;
            transition: var(--transition);
        }

        .trust-item:hover {
            transform: translateY(-3px);
        }

        .trust-icon {
            width: 48px;
            height: 48px;
            border-radius: 14px;
            background: rgba(255, 123, 84, 0.08);
            border: 1px solid rgba(255, 123, 84, 0.15);
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--accent);
            font-size: 1.1rem;
            flex-shrink: 0;
            transition: var(--transition);
        }

        .trust-item:hover .trust-icon {
            background: rgba(255, 123, 84, 0.15);
            box-shadow: 0 0 24px var(--accent-glow);
        }

        .trust-text h4 {
            font-size: 0.85rem;
            font-weight: 700;
            margin-bottom: 2px;
        }

        .trust-text p {
            font-size: 0.75rem;
            color: var(--primary-light);
        }

        /* ========== SECTION HEADER ========== */
        .section-header {
            text-align: center;
            margin-bottom: 56px;
            padding-top: 80px;
        }

        .section-label {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 6px 16px;
            border-radius: 100px;
            background: rgba(124, 92, 255, 0.08);
            border: 1px solid rgba(124, 92, 255, 0.18);
            font-size: 0.75rem;
            font-weight: 700;
            color: var(--accent-secondary);
            text-transform: uppercase;
            letter-spacing: 0.1em;
            margin-bottom: 20px;
        }

        .section-title {
            font-size: clamp(2rem, 3.5vw, 2.8rem);
            letter-spacing: -0.03em;
            margin-bottom: 12px;
        }

        .section-subtitle {
            color: var(--primary-light);
            font-size: 1rem;
            max-width: 520px;
            margin: 0 auto;
        }

        /* ========== PRODUCT GRID ========== */
        .products-section {
            padding-bottom: 100px;
        }

        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 24px;
        }

        .product-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            border: 1px solid rgba(255, 255, 255, 0.06);
            overflow: hidden;
            transition: var(--transition);
            position: relative;
            cursor: pointer;
        }

        .product-card:hover {
            transform: translateY(-8px);
            border-color: rgba(255, 123, 84, 0.25);
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.4), 0 0 40px var(--accent-glow);
        }

        .product-img {
            height: 220px;
            background: linear-gradient(145deg, #1a1a28, #12121c);
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            overflow: hidden;
        }

        .product-img::before {
            content: '';
            position: absolute;
            inset: 0;
            background: radial-gradient(circle at 50% 50%, rgba(255,123,84,0.08) 0%, transparent 70%);
            opacity: 0;
            transition: var(--transition);
        }

        .product-card:hover .product-img::before {
            opacity: 1;
        }

        .product-img i {
            font-size: 3.5rem;
            color: rgba(255, 255, 255, 0.12);
            transition: var(--transition);
            position: relative;
            z-index: 1;
        }

        .product-card:hover .product-img i {
            transform: scale(1.15) rotate(-5deg);
            color: rgba(255, 255, 255, 0.2);
        }

        .product-img .wishlist {
            position: absolute;
            top: 12px;
            right: 12px;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            background: rgba(11, 11, 18, 0.6);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.08);
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--primary-light);
            font-size: 0.85rem;
            transition: var(--transition);
            z-index: 2;
            opacity: 0;
            transform: translateY(-8px);
        }

        .product-card:hover .wishlist {
            opacity: 1;
            transform: translateY(0);
        }

        .wishlist:hover {
            background: rgba(255, 123, 84, 0.2);
            color: var(--accent);
            border-color: rgba(255, 123, 84, 0.3);
        }

        .product-badge {
            position: absolute;
            top: 12px;
            left: 12px;
            padding: 4px 10px;
            border-radius: 6px;
            font-size: 0.65rem;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.06em;
            z-index: 2;
        }

        .badge-new {
            background: var(--gradient-accent);
            color: #fff;
            box-shadow: 0 4px 16px var(--accent-glow);
        }

        .badge-sale {
            background: rgba(255, 123, 84, 0.15);
            color: var(--accent);
            border: 1px solid rgba(255, 123, 84, 0.25);
        }

        .product-body {
            padding: 20px;
        }

        .product-category {
            font-size: 0.7rem;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.08em;
            color: var(--accent-secondary);
            margin-bottom: 6px;
        }

        .product-name {
            font-size: 0.95rem;
            font-weight: 600;
            margin-bottom: 8px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        .product-bottom {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-top: 12px;
        }

        .product-price {
            font-size: 1.1rem;
            font-weight: 800;
            background: var(--gradient-accent);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .product-price .old-price {
            font-size: 0.75rem;
            font-weight: 500;
            color: var(--primary-light);
            -webkit-text-fill-color: var(--primary-light);
            text-decoration: line-through;
            margin-left: 6px;
        }

        .add-to-cart {
            width: 38px;
            height: 38px;
            border-radius: 12px;
            background: rgba(255, 255, 255, 0.04);
            border: 1px solid rgba(255, 255, 255, 0.08);
            color: var(--primary-light);
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: var(--transition);
            font-size: 0.9rem;
        }

        .add-to-cart:hover {
            background: var(--gradient-accent);
            color: #fff;
            border-color: transparent;
            transform: scale(1.1) rotate(90deg);
            box-shadow: 0 4px 20px var(--accent-glow);
        }

        .product-rating {
            display: flex;
            align-items: center;
            gap: 3px;
            font-size: 0.7rem;
            color: #ffc857;
            margin-top: 8px;
        }

        .product-rating span {
            color: var(--primary-light);
            margin-left: 4px;
        }

        /* ========== BANNER CTA ========== */
        .cta-banner {
            margin: 0 0 80px;
            position: relative;
        }

        .cta-inner {
            background: var(--bg-card);
            border-radius: 24px;
            border: 1px solid rgba(255, 255, 255, 0.06);
            padding: 60px 48px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 40px;
            position: relative;
            overflow: hidden;
            box-shadow: 0 0 80px rgba(255, 123, 84, 0.06), 0 0 80px rgba(124, 92, 255, 0.04);
        }

        .cta-inner::before {
            content: '';
            position: absolute;
            top: -50%;
            right: -10%;
            width: 500px;
            height: 500px;
            background: radial-gradient(circle, rgba(255,123,84,0.12) 0%, transparent 65%);
            border-radius: 50%;
            pointer-events: none;
        }

        .cta-inner::after {
            content: '';
            position: absolute;
            bottom: -40%;
            left: 10%;
            width: 400px;
            height: 400px;
            background: radial-gradient(circle, rgba(124,92,255,0.08) 0%, transparent 65%);
            border-radius: 50%;
            pointer-events: none;
        }

        .cta-content {
            position: relative;
            z-index: 1;
        }

        .cta-content h2 {
            font-size: clamp(1.8rem, 3vw, 2.4rem);
            letter-spacing: -0.03em;
            margin-bottom: 12px;
            line-height: 1.15;
        }

        .cta-content p {
            color: var(--primary-light);
            font-size: 0.95rem;
            max-width: 420px;
        }

        .cta-actions {
            position: relative;
            z-index: 1;
            flex-shrink: 0;
        }

        /* ========== FOOTER ========== */
        .footer {
            border-top: 1px solid rgba(255, 255, 255, 0.06);
            padding: 60px 0 40px;
            position: relative;
            z-index: 1;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 48px;
            margin-bottom: 48px;
        }

        .footer-brand p {
            color: var(--primary-light);
            font-size: 0.85rem;
            margin-top: 16px;
            max-width: 300px;
            line-height: 1.7;
        }

        .footer-socials {
            display: flex;
            gap: 10px;
            margin-top: 24px;
        }

        .social-btn {
            width: 38px;
            height: 38px;
            border-radius: 10px;
            border: 1px solid rgba(255, 255, 255, 0.08);
            background: rgba(255, 255, 255, 0.03);
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--primary-light);
            text-decoration: none;
            font-size: 0.85rem;
            transition: var(--transition);
        }

        .social-btn:hover {
            background: var(--gradient-accent);
            color: #fff;
            border-color: transparent;
            transform: translateY(-3px);
            box-shadow: 0 4px 20px var(--accent-glow);
        }

        .footer-col h4 {
            font-size: 0.8rem;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.08em;
            margin-bottom: 20px;
            color: var(--primary);
        }

        .footer-col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 12px;
        }

        .footer-col a {
            color: var(--primary-light);
            text-decoration: none;
            font-size: 0.85rem;
            transition: var(--transition);
        }

        .footer-col a:hover {
            color: var(--accent);
            padding-left: 4px;
        }

        .footer-bottom {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding-top: 32px;
            border-top: 1px solid rgba(255, 255, 255, 0.05);
            font-size: 0.8rem;
            color: var(--primary-light);
        }

        /* ========== ANIMATIONS ========== */
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(24px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* ========== RESPONSIVE ========== */
        @media (max-width: 1024px) {
            .hero-grid {
                gap: 40px;
            }
            .products-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .footer-grid {
                grid-template-columns: 1fr 1fr;
                gap: 32px;
            }
        }

        @media (max-width: 768px) {
            .nav-links {
                display: none;
            }
            .mobile-toggle {
                display: flex;
            }
            .hero {
                padding: 48px 0 60px;
            }
            .hero-grid {
                grid-template-columns: 1fr;
                gap: 48px;
                text-align: center;
            }
            .hero-subtitle {
                margin-left: auto;
                margin-right: auto;
            }
            .hero-actions {
                justify-content: center;
            }
            .hero-visual {
                order: -1;
            }
            .hero-card {
                max-width: 340px;
                margin: 0 auto;
            }
            .float-badge-1 {
                left: 0;
            }
            .float-badge-2 {
                right: 0;
            }
            .trust-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 24px;
            }
            .products-grid {
                grid-template-columns: repeat(2, 1fr);
            }
            .cta-inner {
                flex-direction: column;
                text-align: center;
                padding: 40px 24px;
            }
            .cta-content p {
                margin: 0 auto;
            }
            .footer-grid {
                grid-template-columns: 1fr;
                gap: 32px;
            }
            .footer-bottom {
                flex-direction: column;
                gap: 12px;
                text-align: center;
            }
        }

        @media (max-width: 480px) {
            .products-grid {
                grid-template-columns: 1fr;
            }
            .trust-grid {
                grid-template-columns: 1fr;
            }
            .hero-actions {
                flex-direction: column;
                width
