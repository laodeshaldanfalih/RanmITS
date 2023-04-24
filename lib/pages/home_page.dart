import 'package:flutter/material.dart';
import 'package:ranmits/pages/detail_laporan_page.dart';
import 'package:ranmits/pages/laporan_kehilangan1_page.dart';
import 'package:ranmits/widgets/alert_box.dart';
import 'package:ranmits/widgets/custom_drawer.dart';
import 'package:ranmits/widgets/daftar_laporan_kehilangan.dart';
import 'package:ranmits/widgets/data_kejadian.dart';
import 'package:ranmits/widgets/info_card.dart';
import 'package:ranmits/widgets/laporan_card.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home-page';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9FAFB),
      endDrawer: Drawer(
        backgroundColor: const Color(0xffF9FAFB),
        child: Column(
          children: [
            AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              actions: <Widget>[Container()],
              title: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.close,
                    size: 28,
                    color: Color(0xff1C64F2),
                  ),
                ),
              ),
            ),
            const CustomDrawer(),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xff1C64F2)),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Image.asset(
          'assets/images/logo.png',
          scale: 2,
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          'assets/images/shield.png',
                          scale: 2,
                        ),
                      ),
                      SizedBox(
                        height: 259,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 175,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  RichText(
                                    textAlign: TextAlign.center,
                                    text: const TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                          text:
                                              'Temukan Kembali Kendaraan yang Hilang dengan ',
                                        ),
                                        TextSpan(
                                          text: 'Mudah',
                                          style: TextStyle(
                                              color: Color(0xff1C64F2)),
                                        ),
                                      ],
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    'Kehilangan kendaraan Anda? Kami tahu perasaan itu, dan kami hadir untuk membantu menemukan kembali kendaraan anda!',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xff8E8E8E)),
                                  ),
                                ],
                              ),
                            ),
                            // Image.asset('assets/images/Frame123.png'),
                            Container(
                              width: 235,
                              height: 44,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xff1C64F2),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    'assets/images/exclamation-circle-white.png',
                                    scale: 1,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pushNamed(
                                          LaporanKehilangan1Page.routeName);
                                    },
                                    child: const Text(
                                      'Laporkan Kehilangan',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 64),
                      const AlertBox(),
                      const SizedBox(height: 64),
                      const Text(
                        'Yuk! Perhatikan Keamanan Kendaraanmu',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 13),
                      const Text(
                        'Berikut kami hadirkan data kejadian kehilangan kendaraan sebagai upaya meningkatkan kewaspadaan anda!',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: Color(0xff8E8E8E)),
                      ),
                      const SizedBox(height: 32),
                      const DataKejadian(),
                      const SizedBox(height: 32),
                      const DaftarLaporanKehilangan(),
                      const SizedBox(height: 16),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(DetailLaporan.routeName);
                        },
                        child: const LaporanCard(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 72),
                const InfoCard(),
              ],
            ),
          ),
          Positioned(
            bottom: 56,
            right: 20,
            child: Container(
              width: 195,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: const Color(0xffE02424),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/status-online-white.png',
                    scale: 2,
                  ),
                  const Text(
                    'Panggil Petugas',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
