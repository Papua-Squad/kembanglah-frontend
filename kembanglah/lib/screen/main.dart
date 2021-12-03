import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kembanglah/screen/add_category_screen.dart';
import 'package:kembanglah/screen/add_product_screen.dart';
import 'package:kembanglah/screen/best_seller_product_screen.dart';
import 'package:kembanglah/screen/dana_penjualan_screen.dart';
import 'package:kembanglah/screen/history_pemasukan_screen.dart';
import 'package:kembanglah/screen/history_pengeluaran_screen.dart';
import 'package:kembanglah/screen//login_screen.dart';
import 'package:kembanglah/screen/home_screen.dart';
import 'package:kembanglah/screen/info_screen.dart';
import 'package:kembanglah/screen/konfirmasi_pengiriman_screen.dart';
import 'package:kembanglah/screen/list_product_screen.dart';
import 'package:kembanglah/screen/login_mitra_screen.dart';
import 'package:kembanglah/screen/onboardingone_screen.dart';
import 'package:kembanglah/screen/onboardingtwo_screen.dart';
import 'package:kembanglah/screen/pencairan_dana_screen.dart';
import 'package:kembanglah/screen/prepare_transaksi_screen.dart';
import 'package:kembanglah/screen/recommended_product_screen.dart';
import 'package:kembanglah/screen/regist_mitra_screen.dart';
import 'package:kembanglah/screen/splash_screen.dart';
import 'package:kembanglah/screen/transaksi_masuk_screen.dart';
import 'package:kembanglah/screen/transaksi_screen.dart';
import 'package:kembanglah/screen/user_profile_mitra_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => SplashScreen()),
        GetPage(name: '/OnBoardingOne', page: () => OnBoardingOneScreen()),
        GetPage(name: '/OnBoardingTwo', page: () => OnBoardingTwoScreen()),
        GetPage(name: '/LoginScreen', page: () => LoginScreen()),
        GetPage(name: '/LoginMitraScreen', page: () => LoginMitraScreen()),
        GetPage(name: '/RegistMitraScreen', page: () => RegistMitraScreen()),
        GetPage(name: '/AddCategoryScreen', page: () => AddCategoryScreen()),
        GetPage(name: '/AddProductScreen', page: () => AddProductScreen()),
        GetPage(
            name: '/BestSellerScreen', page: () => BestSellerProductScreen()),
        GetPage(
            name: '/DanaPenjualanScreen', page: () => DanaPenjualanScreen()),
        GetPage(
            name: '/HistoryPemasukanScreen',
            page: () => HistoryPemasukanScreen()),
        GetPage(
            name: '/HistoryPengeluaranScreen',
            page: () => HistoryPengeluaranScreen()),
        GetPage(name: '/HomeScreen', page: () => HomeScreen()),
        GetPage(name: '/InfoScreen', page: () => InfoScreen()),
        GetPage(
            name: '/KonfirmasiPengirimanScreen',
            page: () => KonfirmasiPengirimanScreen()),
        GetPage(name: '/ListProductScreen', page: () => ListProductScreen()),
        GetPage(
            name: '/PencairanDanaScreen', page: () => PencairanDanaScreen()),
        GetPage(
            name: '/PrepareTransaksiScreen',
            page: () => PrepareTransaksiScreen()),
        GetPage(name: '/ProductMitraScreen', page: () => LoginMitraScreen()),
        GetPage(
            name: '/RecommendedProductScreen',
            page: () => RecomendedProductScreen()),
        GetPage(name: '/TransaksiMasukScreen', page: () => TransaksiMasuk()),
        GetPage(name: '/TransaksiScreen', page: () => TransaksiScreen()),
        GetPage(
            name: '/UserProfileMitraScreen',
            page: () => UserProfileMitraScreen()),
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
