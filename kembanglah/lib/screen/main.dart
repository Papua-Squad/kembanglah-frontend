import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kembanglah/screen/Customer/home_user_screen.dart';
import 'package:kembanglah/screen/Customer/login_user_screen.dart';
import 'package:kembanglah/screen/Mitra/add_category_screen.dart';
import 'package:kembanglah/screen/Mitra/add_product_screen.dart';
import 'package:kembanglah/screen/Mitra/best_seller_product_screen.dart';
import 'package:kembanglah/screen/Mitra/dana_penjualan_screen.dart';
import 'package:kembanglah/screen/Mitra/history_pemasukan_screen.dart';
import 'package:kembanglah/screen/Mitra/history_pengeluaran_screen.dart';
import 'package:kembanglah/screen/login_screen.dart';
import 'package:kembanglah/screen/Mitra/home_screen.dart';
import 'package:kembanglah/screen/Mitra/info_screen.dart';
import 'package:kembanglah/screen/Mitra/konfirmasi_pengiriman_screen.dart';
import 'package:kembanglah/screen/Mitra/list_category_screen.dart';
import 'package:kembanglah/screen/Mitra/list_product_screen.dart';
import 'package:kembanglah/screen/Mitra/login_mitra_screen.dart';
import 'package:kembanglah/screen/onboardingone_screen.dart';
import 'package:kembanglah/screen/onboardingtwo_screen.dart';
import 'package:kembanglah/screen/Mitra/pencairan_dana_screen.dart';
import 'package:kembanglah/screen/Mitra/prepare_transaksi_screen.dart';
import 'package:kembanglah/screen/Mitra/recommended_product_screen.dart';
import 'package:kembanglah/screen/Mitra/regist_mitra_screen.dart';
import 'package:kembanglah/screen/splash_screen.dart';
import 'package:kembanglah/screen/Mitra/transaksi_masuk_screen.dart';
import 'package:kembanglah/screen/Mitra/transaksi_screen.dart';
import 'package:kembanglah/screen/Mitra/user_profile_mitra_screen.dart';

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
        GetPage(name: '/ListCategory', page: () => ListCategoryScreen()),
        GetPage(name: '/LoginUserScreen', page: () => LoginUserScreen()),
        GetPage(name: '/HomeUserScreen', page: () => HomeUserScreen()),
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
