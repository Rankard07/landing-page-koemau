# 📚 Penjelasan Lengkap Embla Carousel - FoodCarousel.jsx

## 🎯 Tujuan Component

Component ini membuat carousel (slider gambar) yang **otomatis berjalan** menampilkan gambar makanan dengan indikator dot di bawahnya.

---

## 📖 PENJELASAN KODE BARIS PER BARIS

### **BAGIAN 1: IMPORTS (Baris 1-8)**

```jsx
import React from "react";
import useEmblaCarousel from "embla-carousel-react";
import Autoplay from "embla-carousel-autoplay";
import CirengImg from "../assets/Cireng/[Display]-Cireng.jpeg";
import DimsumImg from "../assets/Dimsum/Dimsum.jpeg";
import KatsuImg from "../assets/Katsu/Katsu.jpeg";
import NuggetImg from "../assets/Nugget/Spicy Chicken 10 (Ayam).jpeg";
import RisolImg from "../assets/Risol - Corndog/Risol 5 (Ayam Pds - Bolognaise - Sayur).jpeg";
import SiomayImg from "../assets/Siomay/Siomay 25.jpeg";
```

**Penjelasan:**

| Baris                                                 | Apa itu                     | Alasan Diperlukan                                                                           |
| ----------------------------------------------------- | --------------------------- | ------------------------------------------------------------------------------------------- |
| `import React from "react"`                           | Mengimpor library React     | Diperlukan untuk membuat component dan menggunakan hook seperti useState dan useEffect      |
| `import useEmblaCarousel from "embla-carousel-react"` | Hook untuk kontrol carousel | Ini adalah "otak" dari carousel, yang mengatur gerak slide dan menyimpan referensi carousel |
| `import Autoplay from "embla-carousel-autoplay"`      | Plugin autoplay             | Membuat carousel otomatis bergerak sendiri tanpa user klik (interval waktu tertentu)        |
| `import CirengImg from ...`                           | Gambar Cireng               | Semua gambar diimpor agar React bisa optimasi dan mereferensi dengan benar                  |

---

### **BAGIAN 2: DATA MAKANAN (Baris 10-17)**

```jsx
const foodItems = [
  { image: CirengImg, name: "Cireng" },
  { image: DimsumImg, name: "Dimsum" },
  { image: KatsuImg, name: "Katsu" },
  { image: NuggetImg, name: "Nugget" },
  { image: RisolImg, name: "Risol & Corndog" },
  { image: SiomayImg, name: "Siomay" },
];
```

**Penjelasan:**

- **Apa ini:** Array (daftar) yang berisi data makanan
- **Alasan:** Supaya mudah menambah/mengurangi makanan tanpa mengubah HTML berulang-ulang
- **Struktur:** Setiap item punya `image` (gambar) dan `name` (nama) yang diperlukan untuk ditampilkan
- **Keuntungan:** Jika nanti ingin tambah makanan, cukup tambah 1 baris di sini, tidak perlu edit HTML

---

### **BAGIAN 3: SETUP EMBLA CAROUSEL (Baris 19-24)**

```jsx
export default function FoodCarousel() {
  const [emblaRef, emblaApi] = useEmblaCarousel(
    { loop: true, align: "center" },
    [Autoplay({ delay: 4000, stopOnInteraction: false })],
  );
```

**Penjelasan Detil:**

| Bagian                      | Maksud                                 | Alasan                                                                                      |
| --------------------------- | -------------------------------------- | ------------------------------------------------------------------------------------------- |
| `useEmblaCarousel()`        | Hook khusus untuk carousel             | Ini yang mengatur semua logika carousel (geser, animasi, dll)                               |
| `emblaRef`                  | Referensi ke elemen carousel           | Digunakan untuk menghubungkan state React ke elemen HTML (ditulis di `ref={emblaRef}`)      |
| `emblaApi`                  | Kontrol carousel (method)              | Bisa digunakan untuk kontrol carousel seperti `scrollTo()`, `on()` untuk mendengarkan event |
| `loop: true`                | Carousel berputar terus                | Ketika habis slide terakhir, kembali ke slide pertama                                       |
| `align: "center"`           | Posisi slide di tengah                 | Slide aktif berada di tengah tampilan                                                       |
| `Autoplay({ delay: 4000 })` | Otomatis slide setiap 4000ms (4 detik) | Carousel tidak perlu diklik, otomatis jalan sendiri                                         |
| `stopOnInteraction: false`  | Jangan stop saat user klik             | Carousel tetap berjalan meski user interaksi                                                |

---

### **BAGIAN 4: STATE MANAGEMENT (Baris 26)**

```jsx
const [selectedIndex, setSelectedIndex] = React.useState(0);
```

**Penjelasan:**

- **`selectedIndex`**: Menyimpan nomor slide mana yang sedang aktif (0, 1, 2, dst)
- **`setSelectedIndex`**: Fungsi untuk mengubah slide mana yang aktif
- **`useState(0)`**: Awalnya slide 0 (pertama) yang aktif
- **Alasan:** Supaya bisa highlight dot yang aktif dan membuat perubahan visual di UI

**Analogi:** Seperti lampu yang bisa "hidup" (active) atau "mati" (not active). State ini melacak lampu mana yang hidup.

---

### **BAGIAN 5: MENDENGARKAN EVENT (Baris 28-38)**

```jsx
React.useEffect(() => {
  if (!emblaApi) return;

  const onSelect = () => {
    setSelectedIndex(emblaApi.selectedIndex());
  };

  emblaApi.on("select", onSelect);
  return () => {
    emblaApi.off("select", onSelect);
  };
}, [emblaApi]);
```

**Penjelasan Step by Step:**

| Baris                                        | Maksud                                       | Alasan                                                                       |
| -------------------------------------------- | -------------------------------------------- | ---------------------------------------------------------------------------- |
| `React.useEffect(() => {...}, [emblaApi])`   | Jalankan kode setiap kali `emblaApi` berubah | Diperlukan untuk setup listener carousel                                     |
| `if (!emblaApi) return;`                     | Jika carousel belum siap, keluar             | Carousel perlu waktu untuk initialize, jangan jalankan kode jika belum ready |
| `const onSelect = () => {...}`               | Fungsi yang dijalankan saat slide berubah    | Ketika slide berubah, kita perlu update `selectedIndex` untuk highlight dot  |
| `setSelectedIndex(emblaApi.selectedIndex())` | Update state dengan nomor slide aktif        | Ini yang membuat dot berubah warna saat slide berubah                        |
| `emblaApi.on("select", onSelect)`            | **Subscribe** ke event "select"              | "Dengarkan" setiap kali slide berubah, jalankan `onSelect`                   |
| `emblaApi.off("select", onSelect)`           | **Unsubscribe** dari event                   | Cleanup: jangan dengarkan lagi saat component dihapus (prevent memory leak)  |

**Analogi:** Seperti subscribe YouTube. `emblaApi.on()` = subscribe channel, `emblaApi.off()` = unsubscribe saat tidak butuh lagi.

---

### **BAGIAN 6: STRUKTUR HTML - CAROUSEL CONTAINER (Baris 40-67)**

```jsx
<div className="w-full px-4 py-8">
  <div className="max-w-4xl mx-auto">
    {/* Carousel Container */}
    <div
      className="embla rounded-2xl overflow-hidden shadow-lg"
      ref={emblaRef}>
      <div className="embla__container flex">
        {foodItems.map((item, index) => (
          <div
            key={index}
            className="embla__slide flex-shrink-0 w-full h-96 relative bg-gray-200">
            <img
              src={item.image}
              alt={item.name}
              className="w-full h-full object-cover"
            />
            {/* Overlay dengan nama makanan */}
            <div className="absolute bottom-0 left-0 right-0 bg-gradient-to-t from-black via-black/50 to-transparent p-6">
              <h3 className="text-white text-2xl font-bold">{item.name}</h3>
            </div>
          </div>
        ))}
      </div>
    </div>
```

**Penjelasan:**

| Bagian                                                                    | Maksud                      | CSS/Alasan                                                                                                                            |
| ------------------------------------------------------------------------- | --------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- |
| `<div ... ref={emblaRef}>`                                                | **Div utama carousel**      | `ref={emblaRef}` menghubungkan state React ke elemen ini                                                                              |
| `className="embla rounded-2xl overflow-hidden shadow-lg"`                 | Styling carousel            | `overflow-hidden` = potong gambar yang keluar dari batas, `rounded-2xl` = sudut melengkung, `shadow-lg` = bayangan                    |
| `<div className="embla__container flex">`                                 | **Container slide**         | Harus class `.embla__container` supaya Embla recognize, `flex` = susun slide dalam 1 baris                                            |
| `{foodItems.map((item, index) => (`                                       | **Loop semua makanan**      | Buat slide untuk setiap item di array `foodItems`                                                                                     |
| `<div className="embla__slide ...">`                                      | **1 Slide**                 | `.embla__slide` = class yang diperlukan Embla untuk tahu slide mana                                                                   |
| `flex-shrink-0`                                                           | Slide tidak boleh kecil     | Menjaga setiap slide tetap ukuran penuh (100%)                                                                                        |
| `w-full h-96`                                                             | Lebar penuh, tinggi 384px   | Ukuran slide                                                                                                                          |
| `<img src={item.image} alt={item.name} />`                                | **Gambar makanan**          | `src` = sumber gambar, `alt` = text jika gambar error                                                                                 |
| `object-cover`                                                            | Gambar penuh tanpa distorsi | Gambar dipotong jika perlu supaya tidak melebar                                                                                       |
| `<div className="absolute bottom-0 ... bg-gradient-to-t from-black ...">` | **Overlay nama**            | `absolute` = letakkan di atas gambar, `bottom-0` = letakkan di bawah, `gradient-to-t` = warna black ke transparent dari bawah ke atas |

**Visualisasi struktur:**

```
[Carousel Container] --- ref={emblaRef} (tempat geser)
  └─ [Embla Container] --- class="embla__container"
      ├─ [Slide 1] --- class="embla__slide"
      │   └─ [Gambar]
      │   └─ [Overlay Nama]
      ├─ [Slide 2]
      │   └─ [Gambar]
      │   └─ [Overlay Nama]
      └─ ... dst
```

---

### **BAGIAN 7: PAGINATION DOTS (Baris 69-87)**

```jsx
{
  /* Pagination Dots */
}
<div className="flex justify-center gap-3 mt-6">
  {foodItems.map((_, index) => (
    <button
      key={index}
      onClick={() => {
        if (emblaApi) {
          emblaApi.scrollTo(index);
        }
      }}
      className={`h-3 rounded-full transition-all duration-300 ${
        index === selectedIndex
          ? "bg-blue-600 w-8"
          : "bg-gray-400 w-3 hover:bg-gray-500"
      }`}
      aria-label={`Go to slide ${index + 1}`}
    />
  ))}
</div>;
```

**Penjelasan:**

| Bagian                                             | Maksud                            | Alasan                                                                                                |
| -------------------------------------------------- | --------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `<div className="flex justify-center gap-3 mt-6">` | **Container dots**                | `flex` + `justify-center` = dots di tengah, `gap-3` = jarak antar dot, `mt-6` = margin atas           |
| `{foodItems.map(...)}`                             | **Buat dot untuk setiap makanan** | Jika ada 6 makanan, ada 6 dot                                                                         |
| `<button ... onClick={() => {...}}>`               | **Dot yang bisa diklik**          | Klik dot untuk lompat ke slide tertentu                                                               |
| `emblaApi.scrollTo(index)`                         | Geser carousel ke slide nomor X   | Ini yang membuat carousel lompat ke slide saat dot diklik                                             |
| `index === selectedIndex ? ... : ...`              | **Conditional styling**           | Jika dot aktif (sesuai slide sekarang), warna biru dan panjang. Jika tidak, warna abu-abu dan pendek. |
| `bg-blue-600 w-8`                                  | Dot aktif: biru, lebar            | Menunjukkan slide mana yang sedang dilihat                                                            |
| `bg-gray-400 w-3`                                  | Dot tidak aktif: abu-abu, pendek  |                                                                                                       |
| `transition-all duration-300`                      | Smooth animasi perubahan          | Dot tidak langsung berubah, tapi smooth dalam 300ms                                                   |
| `aria-label="Go to slide ...`                      | Label aksesibilitas               | Untuk user yang pakai screen reader                                                                   |

**Visualisasi:**

```
Slide 1 aktif:  ████████ ○ ○ ○ ○ ○ ○  (dot 1 panjang biru)
Slide 2 aktif:  ○ ████████ ○ ○ ○ ○ ○  (dot 2 panjang biru)
```

---

### **BAGIAN 8: CSS STYLING (Baris 89-104)**

```jsx
<style>{`
  .embla {
    overflow: hidden;
  }
  .embla__container {
    display: flex;
    touch-action: pan-y pinch-zoom;
  }
  .embla__slide {
    flex: 0 0 100%;
    min-width: 0;
  }
`}</style>
```

**Penjelasan:**

| CSS                                    | Maksud                                  | Alasan                                                          |
| -------------------------------------- | --------------------------------------- | --------------------------------------------------------------- |
| `.embla { overflow: hidden; }`         | Potong semua yang keluar dari batas     | Jika slide keluar dari container, jangan tampilkan              |
| `.embla__container { display: flex; }` | Susun slide dalam 1 baris               | Flex membuat slide dapat digeser horizontal                     |
| `touch-action: pan-y pinch-zoom;`      | User bisa geser ke atas/bawah dan zoom  | Tapi geser kiri/kanan dikontrol oleh Embla (bukan scroll biasa) |
| `.embla__slide { flex: 0 0 100%; }`    | **Setiap slide panjang 100% container** | `flex: 0 0 100%` = tidak shrink, tidak grow, tepat 100%         |
| `min-width: 0;`                        | Izinkan slide mengecil jika perlu       | Supaya flex sizing bekerja dengan baik                          |

**Analogi Flex:**

- `flex: grow shrink basis`
- `flex: 0 0 100%` = slide tidak tumbuh (0), tidak menyusut (0), basis 100%
- Jadi setiap slide selalu persis 100% lebar container

---

## 🔄 ALUR KERJA CAROUSEL (Cara Kerja dari Awal)

```
1. SETUP AWAL
   ├─ useEmblaCarousel() initialize carousel
   ├─ useState(0) = slide pertama (index 0) aktif
   └─ Autoplay dimulai (geser otomatis setiap 4000ms)

2. SETIAP 4 DETIK (Autoplay)
   ├─ Carousel secara otomatis geser ke slide berikutnya
   ├─ Event "select" dipicu
   ├─ onSelect() dipanggil
   ├─ setSelectedIndex(nomor_slide_baru) dijalankan
   └─ State berubah → Component re-render → Dot di-highlight

3. USER KLIK DOT
   ├─ onClick button dot dipicu
   ├─ emblaApi.scrollTo(index) dijalankan
   ├─ Carousel geser ke slide yang diklik
   ├─ Event "select" dipicu (seperti autoplay)
   ├─ State selectedIndex diupdate
   └─ Dot yang diklik ter-highlight

4. SETIAP RENDER ULANG
   ├─ Dot di-loop ulang dengan foodItems.map()
   ├─ Dot yang index-nya === selectedIndex dapat styling biru panjang
   ├─ Dot lainnya dapat styling abu-abu pendek
   └─ CSS transition membuat perubahan smooth
```

---

## ⚙️ MENGAPA STRUKTUR SEPERTI INI?

| Komponen                    | Alasan                                                                                                     |
| --------------------------- | ---------------------------------------------------------------------------------------------------------- |
| **`foodItems` array**       | Mudah untuk menambah/menghapus makanan tanpa ubah HTML                                                     |
| **`useEmblaCarousel` hook** | Library Embla yang specialized untuk carousel (performa baik)                                              |
| **`useEffect`**             | Subscribe ke event carousel agar state selalu sync dengan slide aktual                                     |
| **`selectedIndex` state**   | Melacak slide mana yang aktif untuk highlight dot                                                          |
| **`.map()` untuk slide**    | Dinamis, tidak hardcode HTML berulang-ulang                                                                |
| **`.map()` untuk dots**     | Jumlah dot otomatis sesuai jumlah slide                                                                    |
| **`emblaApi.scrollTo()`**   | Kontrol carousel saat user klik dot                                                                        |
| **CSS inline `<style>`**    | Embla requires class names `.embla`, `.embla__container`, `.embla__slide` dengan CSS tertentu agar bekerja |

---

## 🚀 LANGKAH-LANGKAH MEMODIFIKASI

### Jika ingin tambah makanan baru:

```jsx
// 1. Import gambar di atas
import MenuBaru from "../assets/MenuBaru/gambar.jpeg";

// 2. Tambah ke array foodItems
const foodItems = [
  // ... yang lama
  { image: MenuBaru, name: "Menu Baru" },
];
// Selesai! Dot dan slide otomatis bertambah.
```

### Jika ingin ubah kecepatan autoplay:

```jsx
Autoplay({ delay: 6000 }); // 6 detik ganti dari 4000
```

### Jika ingin ubah warna dot aktif:

```jsx
className={`... ${
  index === selectedIndex
    ? "bg-red-600 w-8"  // Ubah warna sini
    : "bg-gray-400 w-3"
}`}
```

---

## 📝 CATATAN PENTING

- **`emblaRef` vs `emblaApi`**:
  - `emblaRef` = koneksi ke HTML (digunakan di `ref={...}`)
  - `emblaApi` = methods/kontrol carousel (gunakan untuk `scrollTo`, `on`, dll)

- **Mengapa `if (!emblaApi) return`?**
  - `useEffect` berjalan sebelum carousel selesai initialize
  - Jadi `emblaApi` mungkin undefined di awal
  - Harus check dulu sebelum gunakan

- **Mengapa perlu `cleanup` di `useEffect`?**
  - Saat component dihapus, listener harus dihapus juga
  - Ini mencegah "memory leak" (konsumsi memori terus naik)

---

## ✅ KESIMPULAN

Carousel ini bekerja dengan:

1. **Data** (`foodItems`) = daftar makanan
2. **Hook** (`useEmblaCarousel`) = logika carousel
3. **State** (`selectedIndex`) = melacak slide aktif
4. **Events** (`useEffect`) = dengarkan perubahan slide
5. **UI** (HTML + Tailwind) = tampilan visual
6. **Interaksi** (dot klik) = kontrol manual

Semua bagian saling terhubung untuk membuat carousel yang smooth, interaktif, dan otomatis berputar! 🎠
