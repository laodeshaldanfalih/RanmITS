import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/info_card.dart';

class TentangProdukPage extends StatelessWidget {
  static const routeName = '/tentang-produk';
  const TentangProdukPage({super.key});

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
              automaticallyImplyLeading: true,
              actions: <Widget>[
                Container(),
              ],
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
                    children: [
                      const SizedBox(height: 47.77),
                      SizedBox(
                        width: 327,
                        height: 61,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/logo.png',
                              scale: 2,
                            ),
                            const Text(
                              'Platform pencarian kendaraan hilang',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff374151),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 44),
                      SizedBox(
                        width: 327,
                        height: 204,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/information-circle.png',
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                const Text(
                                  'Tentang Produk',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff374151),
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                              style: TextStyle(
                                color: Color(0xff6B7280),
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 36),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 327,
                        height: 204,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/information-circle.png',
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                const Text(
                                  'Tentang Pengembang',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff374151),
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                              style: TextStyle(
                                color: Color(0xff6B7280),
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 36),
                          ],
                        ),
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
