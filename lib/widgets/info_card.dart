import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 405,
      color: const Color(0xff374151),
      child: Padding(
        padding: const EdgeInsets.only(top: 42),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/white_logo.png',
                  scale: 2,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 24, bottom: 56),
                  child: Text(
                    'Platform pencarian kendaraan hilang',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  width: 142,
                  height: 114,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Lapor Kehilangan',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      Text(
                        'Panggil Petugas',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      Text(
                        'Tentang Produk',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 58,
              width: 375,
              color: const Color(0xff1F2937),
              child: const Center(
                child: Text(
                  'Created by erbepeel a  ©  2023',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
