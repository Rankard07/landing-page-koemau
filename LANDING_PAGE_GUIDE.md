# 🍲 Dapur Koemau - Landing Page

Selamat datang ke landing page yang telah diperbarui untuk Dapur Koemau! Panduan lengkap di bawah ini akan membantu Anda memahami struktur dan cara mengkustomisasi landing page ini.

## 📋 Daftar Halaman

### 1. **Home Page** (`/`)

Halaman utama dengan:

- ✨ Hero section dengan CTA WhatsApp
- 📋 Daftar menu produk Koemau (Siomay, Dimsum, Katsu, Nugget, Risol & Corndog, Cireng)
- 💬 Tombol "Pesan Sekarang" untuk setiap produk yang langsung buka WhatsApp
- ⭐ Testimoni pelanggan
- 🎯 Keunggulan Koemau

### 2. **Contact Page** (`/contact`)

Halaman kontak dengan:

- 📞 Informasi kontak lengkap (WhatsApp, Email, Telepon)
- 📍 Lokasi
- ⏰ Jam operasional
- 📝 Form kontak otomatis ke WhatsApp
- 📋 Cara memesan (4 langkah)

### 3. **About Page** (`/about`)

Halaman tentang kami dengan:

- 👋 Cerita Dapur Koemau
- 🎯 Misi kami
- 🌟 Visi kami
- 💎 Nilai-nilai perusahaan
- ⭐ Yang membuat kami istimewa

### 4. **Location Page** (`/location`)

Halaman lokasi dengan:

- 🗺️ Peta Google Maps embedded
- 📍 Alamat lengkap
- ⏰ Jam operasional
- 📞 Kontak
- 🚚 Layanan (Pengiriman, Pickup, Catering)
- 🧭 Arah menuju lokasi
- 🏢 Fasilitas kami

---

## 🔧 Cara Mengkustomisasi

### 1. **Ubah Nomor WhatsApp**

Ganti nomor `6281298809641` di tempat-tempat berikut dengan nomor WhatsApp Anda yang sebenarnya:

**File-file yang perlu diubah:**

- `src/components/Navbar.astro` - Baris 16
- `src/components/Footer.astro` - Baris 27, 50
- `src/pages/index.astro` - Baris 21, 37, 76, 93
- `src/pages/contact.astro` - Baris 29, 90, 110, 135
- `src/pages/about.astro` - Baris 180
- `src/pages/location.astro` - Baris 65, 93, 102, 169

**Cari dan ganti:**

```
https://wa.me/6281298809641
```

Dengan:

```
https://wa.me/YOUR_WHATSAPP_NUMBER
```

### 2. **Ubah Email**

Ganti `info@koemau.com` dengan email Anda:

**File-file yang perlu diubah:**

- `src/components/Footer.astro` - Baris 50
- `src/pages/contact.astro` - Baris 56

### 3. **Ubah Alamat & Lokasi**

**Untuk Address:**

- `src/pages/location.astro` - Baris 63-66

**Untuk Google Maps Embed:**

1. Buka [Google Maps](https://maps.google.com)
2. Cari lokasi Anda
3. Klik tombol "Share"
4. Pilih "Embed a map"
5. Copy kode iframe
6. Ganti kode di `src/pages/location.astro` - Baris 48

**Untuk Google Maps Link:**

- Buka Google Maps, klik lokasi Anda
- Klik "Share" → copy link
- Ganti link di `src/pages/location.astro` - Baris 71

### 4. **Ubah Data Kontak**

**Nomor Telepon:**

- `src/components/Footer.astro` - Baris 51
- `src/pages/contact.astro` - Baris 60
- `src/pages/location.astro` - Baris 103

**Email:**

- `src/components/Footer.astro` - Baris 50
- `src/pages/contact.astro` - Baris 56

**Jam Operasional:**

- `src/components/Footer.astro` - Baris 28-29
- `src/pages/contact.astro` - Baris 143-145
- `src/pages/location.astro` - Baris 77-80

### 5. **Ubah Menu Produk**

Edit daftar produk di `src/pages/index.astro` - Baris 4-9:

```astro
const foodItems = [
  { image: "/src/assets/Siomay/Siomay 25.jpeg", name: "Siomay", description: "Siomay tradisional dengan soal nikmat" },
  { image: "/src/assets/Dimsum/Dimsum.jpeg", name: "Dimsum", description: "Dimsum lezat dibuat dengan bahan segar" },
  { image: "/src/assets/Katsu/Katsu.jpeg", name: "Katsu", description: "Katsu crispy dengan saus spesial" },
  { image: "/src/assets/Nugget/Spicy Chicken 10 (Ayam).jpeg", name: "Nugget", description: "Nugget ayam gurih dan empuk" },
  { image: "/src/assets/Risol - Corndog/Risol 5 (Ayam Pds - Bolognaise - Sayur).jpeg", name: "Risol & Corndog", description: "Risol isi pilihan dan corndog lezat" },
  { image: "/src/assets/Cireng/[Display]-Cireng.jpeg", name: "Cireng", description: "Cireng gurih tradisional Bandung" },
];
```

### 6. **Ubah Nama Bisnis**

Ganti "Dapur Koemau" atau "🍲 Dapur Koemau" di file-file berikut:

- `src/components/Navbar.astro` - Baris 6
- `src/components/Footer.astro` - Baris 6
- `src/pages/index.astro` - Baris 16
- `src/layouts/Layout.astro` - Baris 11
- File-file lainnya untuk konsistensi

---

## 🎨 Fitur Utama

### 🟠 Warna Tema

Landing page ini menggunakan warna orange sebagai warna utama. Untuk mengubah warna:

- Cari `text-orange-600`, `bg-orange-600`, dll
- Ganti dengan warna pilihan Anda (Tailwind CSS)

### 📱 Responsive Design

- Mobile-first approach
- Optimal di semua ukuran layar
- Menu responsive dengan Tailwind

### 💬 WhatsApp Integration

- Semua tombol CTA langsung membuka WhatsApp
- Pesan otomatis digenerate berdasarkan menu yang dipilih
- Form kontak otomatis mengirim ke WhatsApp

### 🗺️ Google Maps

- Google Maps embedded di halaman Location
- Link langsung ke Google Maps untuk navigasi

---

## 🚀 Cara Menjalankan

```bash
# Install dependencies
npm install

# Run development server
npm run dev

# Build untuk production
npm run build
```

---

## 📁 Struktur File

```
src/
├── components/
│   ├── Navbar.astro          # Navigasi utama
│   └── Footer.astro          # Footer
├── pages/
│   ├── index.astro           # Home page
│   ├── contact.astro         # Contact page
│   ├── about.astro           # About page
│   └── location.astro        # Location page
├── layouts/
│   └── Layout.astro          # Layout utama
└── styles/
    └── global.css            # Global styles
```

---

## 💡 Tips Pengembangan

### Menambah Halaman Baru

1. Buat file baru di `src/pages/nama-halaman.astro`
2. Import Layout: `import Layout from "../layouts/Layout.astro"`
3. Wrap konten dengan `<Layout>...</Layout>`

### Menambah Komponen Baru

1. Buat file di `src/components/NamaKomponen.astro`
2. Import ke halaman yang membutuhkan
3. Gunakan dengan `<NamaKomponen />`

### Styling

- Project ini menggunakan Tailwind CSS
- Gunakan class Tailwind untuk styling
- Tambahkan custom CSS di `src/styles/global.css` jika diperlukan

---

## 🔐 Keamanan & Best Practices

- ✅ Jangan expose informasi sensitif di browser console
- ✅ Gunakan HTTPS untuk website production
- ✅ Backup data penting secara regular
- ✅ Monitor analytics dan customer feedback
- ✅ Update dependencies secara berkala

---

## 📞 Update Kontak - Checklist

Ketika Anda ingin mengupdate informasi kontak, gunakan checklist ini:

- [ ] Nomor WhatsApp diperbarui di semua halaman
- [ ] Email diperbarui
- [ ] Nomor telepon diperbarui
- [ ] Jam operasional diperbarui
- [ ] Alamat diperbarui
- [ ] Google Maps link dan embed diperbarui
- [ ] Testing di mobile dan desktop
- [ ] Testing WhatsApp link berfungsi

---

## 🎯 Optimization Tips

1. **Gambar:** Compress gambar menu untuk performa lebih baik
2. **Meta Tags:** Tambahkan meta description untuk SEO
3. **Analytics:** Tambahkan Google Analytics untuk tracking
4. **Mobile Menu:** Pertimbangkan hamburger menu untuk mobile

---

## 📝 Catatan

- Website ini fully responsive dan mobile-friendly
- Semua CTA (Call-to-Action) terintegrasi dengan WhatsApp
- Design modern dan professional
- Mudah dikustomisasi sesuai kebutuhan

---

**Selamat menggunakan Dapur Koemau Landing Page! 🍲**

Untuk pertanyaan lebih lanjut, hubungi customer support atau dokumentasi Astro di https://docs.astro.build
