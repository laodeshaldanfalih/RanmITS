import 'package:flutter/material.dart';
import 'package:ranmits/pages/home_page.dart';
import 'package:ranmits/pages/login_page.dart';
import 'package:ranmits/pages/register_page.dart';
import 'package:ranmits/pages/tentang_produk_page.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 662,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 304,
            width: 256,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(HomePage.routeName);
                  },
                  child: CustomMenu(
                    menu: 'Beranda',
                    withBorder: true,
                    image: 'assets/images/home.png',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(TentangProdukPage.routeName);
                  },
                  child: CustomMenu(
                    menu: 'Tentang Produk',
                    withBorder: true,
                    image: 'assets/images/information-circle-ori.png',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CustomMenu(
                    menu: 'Lapor Kehilangan',
                    withBorder: true,
                    image: 'assets/images/exclamation-circle.png',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CustomMenu(
                    menu: 'Panggil Petugas',
                    withBorder: true,
                    image: 'assets/images/status-online.png',
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(RegisterPage.routename);
                },
                child: Container(
                  height: 44,
                  width: 252,
                  decoration: BoxDecoration(
                    color: const Color(0xff1C64F2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text(
                      'Daftar Akun',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(LoginPage.routename);
                },
                child: Container(
                  height: 44,
                  width: 252,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text(
                      'Masuk Akun',
                      style: TextStyle(
                        color: Color(0xff1C64F2),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  CustomMenu(
      {super.key,
      required this.withBorder,
      required this.image,
      required this.menu});
  bool withBorder = true;
  final String image;
  final String menu;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: withBorder
            ? const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1, color: Color(0xffE5E7EB)),
                ),
              )
            : null,
        height: 76,
        width: 256,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '$menu',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Image.asset('$image'),
            const SizedBox(
              width: 12,
            ),
          ],
        ),
      ),
    );
  }
}
