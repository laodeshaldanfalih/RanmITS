import 'package:flutter/material.dart';

class LaporanKehilangan4Page extends StatelessWidget {
  static const routeName = '/laporan-kehilangan4';
  const LaporanKehilangan4Page({super.key});

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
          'Laporan Kehilangan',
          style: TextStyle(
              color: Color(0xff374151),
              fontSize: 14.99,
              fontWeight: FontWeight.w700),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
              offset: Offset(0, 10),
            ),
          ],
        ),
        height: 86,
        child: InkWell(
          onTap: () => print('sukses/tidak'),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Center(
              child: Container(
                height: 44,
                width: 327,
                decoration: BoxDecoration(
                  color: const Color(0xff1C64F2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Selanjutnya',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: SizedBox(
          height: 327,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Deskripsi Pendukung',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff4B5563),
                ),
              ),
              Container(
                height: 78,
                decoration: BoxDecoration(
                  color: const Color(0xffEBF5FF),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/images/information-circle.png',
                      scale: 2,
                    ),
                    const SizedBox(
                      width: 265,
                      child: Text(
                        'Deskripsi dapat berupa hal spesifik yang ada pada kendaraan anda seperti stiker, part modif, ataupun bekas tabrakan.',
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 169,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Deskripsi Pendukung',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff4B5563),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Container(
                              height: 137,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(
                                    0xffC9C9C9,
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            const Positioned(
                              left: 12,
                              top: 12,
                              child: Text(
                                'Tulis deskripsi disini',
                                style: TextStyle(
                                    color: Color(0xffAEAEAE),
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Form extends StatelessWidget {
  const Form({super.key, required this.formTitle, required this.formSubTitle});
  final String formTitle;
  final String formSubTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            formTitle,
            style: const TextStyle(
                color: Color(0xff393939),
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              Container(
                height: 42,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(
                      0xffC9C9C9,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              Positioned(
                left: 12,
                child: Text(
                  formSubTitle,
                  style: const TextStyle(
                      color: Color(0xffAEAEAE),
                      fontSize: 12,
                      fontWeight: FontWeight.normal),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
