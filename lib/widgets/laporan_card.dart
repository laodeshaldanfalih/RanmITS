import 'package:flutter/material.dart';

class LaporanCard extends StatelessWidget {
  const LaporanCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 418,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color(0xff8E8E8E),
            blurRadius: 4,
            offset: Offset(0, 4), // Shadow position
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/motor_beat.png',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: SizedBox(
              width: 187,
              height: 156,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'W 1234 PL',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 187,
                    height: 118,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 181,
                          height: 34,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 16,
                                width: 123,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/images/tag.png',
                                      scale: 2,
                                    ),
                                    const Text(
                                      'Deskripsi Kendaraan',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xff8E8E8E),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Text(
                                'Honda Beat 115 | Warna Hitam | 2019',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff575757),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 181,
                          height: 34,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 16,
                                width: 123,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/images/tag.png',
                                      scale: 2,
                                    ),
                                    const Text(
                                      'Deskripsi Kendaraan',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xff8E8E8E),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Text(
                                'Honda Beat 115 | Warna Hitam | 2019',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff575757),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 181,
                          height: 34,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 16,
                                width: 123,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/images/tag.png',
                                      scale: 2,
                                    ),
                                    const Text(
                                      'Deskripsi Kendaraan',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xff8E8E8E),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Text(
                                'Honda Beat 115 | Warna Hitam | 2019',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff575757),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16, left: 16),
            child: Container(
              width: 152,
              height: 32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xff1C64F2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/phone.png',
                    scale: 2,
                  ),
                  const Text(
                    'Hubungi Pemilik',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
