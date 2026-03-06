# Koemau — Landing Page

## Ringkasan

Repositori ini adalah implementasi landing page untuk usaha "Koemau" menggunakan Astro. Situs menampilkan produk makanan, memudahkan pelanggan memesan via WhatsApp, dan menyediakan halaman pendukung: About, Contact, dan Location.

## Struktur Proyek (ringkas)

- src/pages/ — Halaman aplikasi: index.astro, about.astro, contact.astro, location.astro
- src/components/ — Komponen UI bersama: Navbar.astro, Footer.astro, MainCard.astro, Welcome.astro
- src/styles/ — Style global dan komponen (global.css, EmblaCarousel.css)
- public/ — Aset statis (gambar produk, favicon, dsb.)
- bin/ — Skrip atau eksperimen developer (bukan bagian runtime utama)
- package.json, astro.config.mjs — Konfigurasi dan skrip build/dev

## Instruksi Pengembangan

1. Pasang dependensi:

   npm install

2. Jalankan server development:

   npm run dev

3. Build untuk produksi:

   npm run build

4. Pratinjau hasil build:

   npm run preview

## Catatan Pengoperasian

- Link WhatsApp utama: perbarui di komponen `Navbar.astro` dan `Footer.astro` jika ingin mengganti nomor/format.
- Gambar produk berada di `public/assets/` — tambahkan folder baru untuk produk baru.
- Komponen UI berada di `src/components/` — buat komponen ulang bila fitur baru diperlukan.

<!-- ## Pemeliharaan Dokumentasi

Dokumentasi tambahan telah dirapikan: file markdown terpisah di root dihapus untuk menjaga repositori fokus. Bila Anda ingin dokumentasi terperinci (peta situs, panduan deploy, dsb.), saya bisa menambah folder `docs/` atau membuat kembali file ringkas yang terintegrasi ke README.

## Butuh Bantuan?

Jika ingin saya membuat ulang SITE_MAP ringkas, menambahkan panduan deploy, atau commit perubahan, beri tahu saya — saya bisa lanjutkan. -->

## Lisensi

Tambahkan informasi lisensi di sini bila diperlukan.
