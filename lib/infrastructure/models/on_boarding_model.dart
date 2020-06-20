class OnBoardingModel {
  final String title;
  final String subtitle;
  final String image;
  OnBoardingModel({this.image, this.subtitle, this.title});
}

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    title: "TOKO ONLINE\nPERTAMA DIKETAPANG",
    subtitle: "Temukan banyak produk terbaik dan\ntoko rekomendasi di Ketapang",
    image: "assets/images/on_boarding_1.jpg",
  ),
  OnBoardingModel(
    title: "JUAL BARANG KAMU",
    subtitle:
        "Ayo mulai membuka usaha anda\ndan dapatkan penghasilan dengan\ncara yang mudah",
    image: "assets/images/on_boarding_2.png",
  ),
  OnBoardingModel(
    title: "PENGIRIMAN CEPAT",
    subtitle:
        "Dalam pengiriman khusus kami,\nAnda akan mendapatkan barang\ndengan cepat",
    image: "assets/images/on_boarding_3.png",
  ),
];
