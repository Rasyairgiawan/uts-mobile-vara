VARA - Katalog Ruang Publik & Arsitektur

Aplikasi mobile berbasis Flutter untuk mengeksplorasi destinasi ruang publik, museum, dan taman ikonik. Proyek ini dikembangkan sebagai pemenuhan Ujian Tengah Semester (UTS) mata kuliah Mobile Programming.

Fitur Utama

Beranda Terintegrasi: Menampilkan sapaan, kategori destinasi, dan spotlight bulanan.

Eksplorasi Data (JSON): Membaca dan menampilkan daftar destinasi dari file assets/data.json menggunakan model arsitektur yang siap diintegrasikan dengan REST API.

Navigasi Dinamis: Perpindahan halaman dari daftar eksplorasi menuju detail spesifik destinasi menggunakan Navigator.push.

Struktur Halaman

home_screen.dart : Antarmuka utama dengan BottomNavigationBar.

list_screen.dart : Menampilkan daftar tempat (hasil parsing JSON) dalam bentuk Custom Card.

detail_screen.dart : Menampilkan informasi lengkap, rating, dan deskripsi tempat yang dipilih.

Cara Menjalankan Aplikasi

Pastikan Flutter SDK telah terinstal.

Kloning repositori ini: git clone [masukkan link github anda nanti]

Masuk ke direktori proyek dan jalankan: flutter pub get

Jalankan aplikasi pada emulator atau perangkat asli: flutter run