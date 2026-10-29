# VARA - Katalog Ruang Publik & Arsitektur

Aplikasi mobile berbasis Flutter untuk mengeksplorasi destinasi ruang publik, museum, dan taman ikonik. Proyek ini dikembangkan sebagai pemenuhan Ujian Tengah Semester (UTS) mata kuliah Mobile Programming.

## Fitur Utama
1. **Beranda Terintegrasi:** Menampilkan sapaan, kategori destinasi, dan *spotlight* bulanan.
2. **Eksplorasi Data (JSON):** Membaca dan menampilkan daftar destinasi dari file `assets/data.json` menggunakan model arsitektur yang siap diintegrasikan dengan REST API.
3. **Navigasi Dinamis:** Perpindahan halaman dari daftar eksplorasi menuju detail spesifik destinasi menggunakan `Navigator.push`.

## Struktur Halaman
- `home_screen.dart` : Antarmuka utama dengan `BottomNavigationBar`.
- `list_screen.dart` : Menampilkan daftar tempat (hasil *parsing* JSON) dalam bentuk *Custom Card*.
- `detail_screen.dart` : Menampilkan informasi lengkap, *rating*, dan deskripsi tempat yang dipilih.

## Cara Menjalankan Aplikasi
1. Pastikan Flutter SDK telah terinstal.
2. Kloning repositori ini: `git clone https://github.com/Rasyairgiawan/uts-mobile-vara.git`
3. Masuk ke direktori proyek dan jalankan: `flutter pub get`
4. Jalankan aplikasi pada emulator atau perangkat asli: `flutter run`
