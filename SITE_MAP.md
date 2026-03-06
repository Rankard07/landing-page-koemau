# 🗺️ Dapur Koemau Landing Page - Site Map & Structure

## 📊 Visual Site Map

```
                          🍲 DAPUR KOEMAU
                          Landing Page
                              |
                ┌─────────────┼─────────────┐
                |             |             |
             [HOME]        [MENU]      [NAVIGATION]
               /           (Links)      (Navbar)
               |              |            |
         ┌─────┴──────┐   ┌────┴────┐   ┌─┴───┐
    [HERO]   [PRODUCTS] |        |    [LOGO]  [CTA]
     |           |      |        |        |      |
  [CTA]    [6 ITEMS]   |        |     [HOME]   [🟢WA]
  [🟢WA]              |        |     [ABOUT]
                      |        |     [CONTACT]
                      ↓        ↓     [LOCATION]
                      [LINK]  [LINK]
                       |       |
                    [ABOUT]  [CONTACT]  [LOCATION]
```

---

## 📄 Page Hierarchy

```
ROOT (/)
│
├─ Home Page (/)
│  ├─ Navbar
│  │  ├─ Logo (Dapur Koemau)
│  │  ├─ Navigation Links
│  │  │  ├─ Home
│  │  │  ├─ Menu (anchor)
│  │  │  ├─ About
│  │  │  ├─ Contact
│  │  │  └─ Location
│  │  └─ [🟢 WhatsApp CTA]
│  │
│  ├─ Hero Section
│  │  ├─ Title: "🍲 Dapur Koemau"
│  │  ├─ Subtitle: "Cita Rasa Autentik..."
│  │  └─ [🟢 Pesan Sekarang via WhatsApp]
│  │
│  ├─ Why Choose Us
│  │  ├─ ✨ Bahan Berkualitas
│  │  ├─ 👨‍🍳 Resep Tradisional
│  │  └─ ⚡ Pengiriman Cepat
│  │
│  ├─ Menu Section (#menu)
│  │  ├─ 🤤 Siomay
│  │  ├─ 🥟 Dimsum
│  │  ├─ 🍗 Katsu
│  │  ├─ 🍟 Nugget
│  │  ├─ 🌮 Risol & Corndog
│  │  └─ 🥠 Cireng
│  │     (Each has: [Image] [Description] [🟢 Pesan])
│  │
│  ├─ Testimonials
│  │  ├─ ⭐⭐⭐⭐⭐ Budi
│  │  ├─ ⭐⭐⭐⭐⭐ Siti
│  │  └─ ⭐⭐⭐⭐⭐ Andi
│  │
│  ├─ CTA Section
│  │  └─ [🟢 Siap Memesan? Chat via WhatsApp]
│  │
│  └─ Footer
│     ├─ About Section
│     ├─ Quick Links
│     ├─ Products
│     ├─ Contact Info
│     ├─ Social Links
│     └─ Copyright
│
│
├─ About Page (/about)
│  ├─ Header Section
│  │  └─ "👋 Tentang Dapur Koemau"
│  │
│  ├─ Content
│  │  ├─ Siapa Kami?
│  │  ├─ Mission & Vision
│  │  │  ├─ 🎯 Misi (4 points)
│  │  │  └─ 🌟 Visi (4 points)
│  │  ├─ Core Values
│  │  │  ├─ 🌾 Kualitas
│  │  │  ├─ ❤️ Dedikasi
│  │  │  ├─ 🤝 Integritas
│  │  │  └─ 🌱 Inovasi
│  │  └─ What Makes Us Special (5 points)
│  │
│  ├─ CTA Section
│  │  └─ [🟢 Hubungi Kami Sekarang]
│  │
│  └─ Footer
│
│
├─ Contact Page (/contact)
│  ├─ Header Section
│  │  └─ "📞 Hubungi Kami"
│  │
│  ├─ Content (2 Columns)
│  │  ├─ LEFT: Contact Info
│  │  │  ├─ 💬 WhatsApp → [Link] → +62 812 3456 789
│  │  │  ├─ 📧 Email → [Link] → info@koemau.com
│  │  │  ├─ 📱 Phone → [Link] → +62 812 3456 789
│  │  │  ├─ 📍 Location → [Link] → /location
│  │  │  └─ ⏰ Operating Hours
│  │  │     ├─ Senin-Jumat: 08:00-20:00
│  │  │     ├─ Sabtu: 09:00-21:00
│  │  │     └─ Minggu: 09:00-21:00
│  │  │
│  │  └─ RIGHT: Contact Form
│  │     ├─ [Input] Name
│  │     ├─ [Input] Email
│  │     ├─ [Input] Phone
│  │     ├─ [Textarea] Message
│  │     └─ [🟢 Kirim via WhatsApp]
│  │        (Auto-generates WhatsApp message)
│  │
│  ├─ Ordering Process
│  │  ├─ 1️⃣ Hubungi Kami
│  │  ├─ 2️⃣ Pilih Menu
│  │  ├─ 3️⃣ Konfirmasi
│  │  └─ 4️⃣ Pengiriman
│  │
│  └─ Footer
│
│
├─ Location Page (/location)
│  ├─ Header Section
│  │  └─ "📍 Lokasi Kami"
│  │
│  ├─ Content (2 Columns)
│  │  ├─ LEFT: Google Maps
│  │  │  ├─ [Embedded Map]
│  │  │  └─ [📍 Link Google Maps]
│  │  │
│  │  └─ RIGHT: Location Details
│  │     ├─ 📍 Alamat
│  │     │  ├─ Dapur Koemau
│  │     │  ├─ Jalan Raya Utama No. 123
│  │     │  ├─ Jakarta
│  │     │  └─ [🗺️ Arahkan ke Lokasi]
│  │     │
│  │     ├─ ⏰ Jam Operasional
│  │     │  ├─ Senin-Jumat: 08:00-20:00
│  │     │  ├─ Sabtu: 09:00-21:00
│  │     │  └─ Minggu: 09:00-21:00
│  │     │
│  │     ├─ 📞 Kontak
│  │     │  ├─ 💬 WhatsApp: [+62 812 3456 789]
│  │     │  ├─ 📱 Telepon: [+62 812 3456 789]
│  │     │  └─ 📧 Email: [info@koemau.com]
│  │     │
│  │     └─ 🚚 Layanan
│  │        ├─ ✓ Pengiriman ke seluruh Jakarta
│  │        ├─ ✓ Pesan Online via WhatsApp
│  │        ├─ ✓ Ambil Sendiri (Pickup)
│  │        └─ ✓ Pesanan Spesial & Catering
│  │
│  ├─ Navigation Guide
│  │  ├─ Dari Bandara (5 steps)
│  │  └─ Dari Pusat Jakarta (5 steps)
│  │
│  ├─ Facilities
│  │  ├─ 🅿️ Parkir Luas
│  │  ├─ ♿ Akses Mudah
│  │  ├─ 🧽 Bersih & Higienis
│  │  └─ 😊 Staf Ramah
│  │
│  ├─ CTA Section
│  │  ├─ [💬 Pesan Sekarang]
│  │  └─ [🗺️ Lihat Peta]
│  │
│  └─ Footer
│
│
└─ Global Components
   │
   ├─ Navbar (on all pages)
   │  ├─ Logo: 🍲 Dapur Koemau
   │  ├─ Links: Home, Menu, About, Contact, Location
   │  └─ [🟢 Contact Button]
   │
   └─ Footer (on all pages)
      ├─ About Dapur Koemau
      ├─ Quick Links
      ├─ Our Products (6 items)
      ├─ Contact Info
      ├─ CTA Links
      ├─ Social Media
      └─ Copyright Info
```

---

## 🔗 Navigation Flow

```
                    ┌─────────────┐
                    │   HOME (/)  │
                    └────────┬────┘
                             │
                ┌────────┬───┴───┬───────┐
                ↓        ↓       ↓       ↓
            [ABOUT]  [CONTACT] [LOCATION] [MENU] ┐
              │        │         │               → Goes to #menu
              │        │         │                  (anchor on home)
              └────┬───┴────┬────┘
                   ↓        ↓
              ┌─[HOME]─────[WA]─┐
              │                  │
              └──────────────────┘
              (All pages link back)
```

---

## 📱 Responsive Breakpoints

```
Desktop (lg: ≥1024px)
├─ 3 columns for menu
├─ 2 columns for testimonials
├─ Header: Full width navbar
└─ Footer: 4 columns

Tablet (md: ≥768px)
├─ 2 columns for menu
├─ 1-2 columns for testimonials
├─ Header: Mobile menu consideration
└─ Footer: 2 columns

Mobile (< 768px)
├─ 1 column for menu
├─ 1 column for testimonials
├─ Header: Stacked layout
└─ Footer: Single column
```

---

## 🎨 Color System

```
Primary Colors:
├─ Orange: #f97316 (Dapur Koemau brand color)
├─ Orange (darker): #ea580c (hover state)
├─ Orange (light): #fed7aa (background)

Neutral Colors:
├─ White: #ffffff
├─ Gray: #6b7280 (body text)
├─ Gray (light): #f3f4f6 (backgrounds)
├─ Dark Gray: #1f2937 (dark theme)

Status Colors:
├─ Green: #22c55e (WhatsApp, success)
├─ Yellow: #fbbf24 (ratings, warnings)
├─ Blue: #3b82f6 (info, secondary CTA)
└─ Red: #ef4444 (destructive, errors)
```

---

## 📊 Data Structure

```
Products:
├─ Siomay (with image & description)
├─ Dimsum (with image & description)
├─ Katsu (with image & description)
├─ Nugget (with image & description)
├─ Risol & Corndog (with image & description)
└─ Cireng (with image & description)

Contact Methods:
├─ WhatsApp: +62 812 3456 789
├─ Email: info@koemau.com
├─ Phone: +62 812 3456 789
└─ Location: Jalan Raya Utama No. 123, Jakarta

Operating Hours:
├─ Mon-Fri: 08:00 - 20:00
├─ Sat: 09:00 - 21:00
└─ Sun: 09:00 - 21:00

Services:
├─ Delivery (Pengiriman)
├─ Online Order via WhatsApp
├─ Pickup (Ambil Sendiri)
└─ Special Orders & Catering
```

---

## 🚀 Deployment Structure

```
Production URLs:
├─ Home: https://koemau.com/ (or your domain)
├─ About: https://koemau.com/about
├─ Contact: https://koemau.com/contact
└─ Location: https://koemau.com/location

All WhatsApp links point to: https://wa.me/6281298809641
All Google Maps link: https://maps.app.goo.gl/7djWu5wsy4KhJvCe6
```

---

## ✅ Feature Checklist

```
✅ Home Page
   ├─ Hero Section
   ├─ Why Choose Us
   ├─ Menu Showcase (6 products)
   ├─ Testimonials (3 reviews)
   └─ Final CTA

✅ Contact Page
   ├─ Contact Info Display
   ├─ Contact Form
   ├─ Ordering Process Guide
   └─ Map Link

✅ About Page
   ├─ Story
   ├─ Mission & Vision
   ├─ Core Values
   └─ What Makes Us Special

✅ Location Page
   ├─ Google Maps
   ├─ Address Info
   ├─ Contact Details
   ├─ Services Listed
   ├─ Navigation Guide
   └─ Facilities

✅ Global Components
   ├─ Navbar (all pages)
   ├─ Footer (all pages)
   ├─ WhatsApp Links (all pages)
   └─ Responsive Design (all pages)
```

---

## 🎯 User Journey

```
First Time Visitor
│
├─ Lands on Home Page
│  ├─ Sees Hero Section + Main CTA
│  ├─ Option: Click CTA → WhatsApp
│  ├─ Option: Explore Menu
│  ├─ Option: Click menu item → WhatsApp
│  ├─ Option: Read testimonials
│  └─ Option: Click footer links
│
├─ Explores About Page
│  ├─ Learn about company
│  ├─ Understand values
│  └─ Can click CTA → WhatsApp
│
├─ Visits Location Page
│  ├─ See location on map
│  ├─ Get navigation directions
│  ├─ See contact info
│  └─ Can click CTA → WhatsApp
│
└─ Goes to Contact Page
   ├─ Fills contact form
   ├─ Submits → Auto WhatsApp
   ├─ Or direct WhatsApp chat
   └─ Completes order journey
```

---

_Site Map generated for Dapur Koemau Landing Page - Feb 25, 2026_
