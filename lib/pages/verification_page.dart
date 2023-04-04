import 'package:flutter/material.dart';

class VerificationPage extends StatelessWidget {
  static const routeName = '/verif-page';
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        iconTheme: const IconThemeData(color: Color(0xff1C64F2)),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          'Verivikasi Akun',
          style: TextStyle(
              color: Color(0xff374151),
              fontSize: 14.99,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
        child: Container(
          height: 331,
          width: 343,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 231,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 126,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/mail.png',
                            scale: 2,
                          ),
                          Container(
                            width: double.infinity,
                            height: 79,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Masukkan Kode Verivikasi',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff374151),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Kami telah mengirimkan kode verifikasi melalui alamat email: halo.semua@gmail.com',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff6B7280),
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 72,
                      width: 232,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Kode Verifikasi',
                            style: TextStyle(
                                color: Color(0xff4B5563),
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xffD5D5D5),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xffD5D5D5),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xffD5D5D5),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xffD5D5D5),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 44,
                width: 327,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xff1C64F2),
                ),
                child: const Center(
                  child: Text(
                    'Verivikasi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
