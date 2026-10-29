class Place {
  final String id;
  final String judul;
  final String kategori;
  final String lokasi;
  final String deskripsi;
  final String gambar;
  final double rating;

  Place({
    required this.id,
    required this.judul,
    required this.kategori,
    required this.lokasi,
    required this.deskripsi,
    required this.gambar,
    required this.rating,
  });

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      id: json['id'],
      judul: json['judul'],
      kategori: json['kategori'],
      lokasi: json['lokasi'],
      deskripsi: json['deskripsi'],
      gambar: json['gambar'],
      rating: json['rating'].toDouble(),
    );
  }
}