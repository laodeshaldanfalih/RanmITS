import 'package:flutter/material.dart';
import 'package:ranmits/pages/detail_laporan_page.dart';
import 'package:ranmits/pages/home_page.dart';
import 'package:ranmits/pages/laporan_kehilangan1_page.dart';
import 'package:ranmits/pages/laporan_kehilangan2_page.dart';
import 'package:ranmits/pages/laporan_kehilangan3_page.dart';
import 'package:ranmits/pages/laporan_kehilangan4_page.dart';
import 'package:ranmits/pages/login_page.dart';
import 'package:ranmits/pages/register_page.dart';
import 'package:ranmits/pages/tentang_produk_page.dart';
import 'package:ranmits/pages/verification_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomePage.routeName,
      routes: {
        VerificationPage.routeName: (context) => const VerificationPage(),
        HomePage.routeName: (context) => const HomePage(),
        RegisterPage.routename: (context) => const RegisterPage(),
        LoginPage.routename: (context) => const LoginPage(),
        TentangProdukPage.routeName: (context) => const TentangProdukPage(),
        DetailLaporan.routeName: (context) => const DetailLaporan(),
        LaporanKehilangan1Page.routeName: (context) =>
            const LaporanKehilangan1Page(),
        LaporanKehilangan2Page.routeName: (context) =>
            const LaporanKehilangan2Page(),
        LaporanKehilangan3Page.routeName: (context) =>
            const LaporanKehilangan3Page(),
        LaporanKehilangan4Page.routeName: (context) =>
            const LaporanKehilangan4Page(),
      },
    );
  }
}
