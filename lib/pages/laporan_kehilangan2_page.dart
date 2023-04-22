import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:ranmits/pages/laporan_kehilangan3_page.dart';

class LaporanKehilangan2Page extends StatelessWidget {
  static const routeName = '/laporan-kehilangan2';
  const LaporanKehilangan2Page({super.key});

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
          onTap: () {
            Navigator.of(context).pushNamed(LaporanKehilangan3Page.routeName);
          },
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
          height: 288,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Foto Kendaraan',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff4B5563),
                ),
              ),
              Container(
                height: 230,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DottedBorder(
                      borderType: BorderType.RRect,
                      dashPattern: const [5, 5],
                      radius: const Radius.circular(8),
                      strokeWidth: 1,
                      color: const Color(0xff9CA3AF),
                      child: SizedBox(
                        height: 162,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/images/cloud-upload.png',
                              scale: 2,
                            ),
                            RichText(
                              textAlign: TextAlign.center,
                              text: const TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Click to upload ',
                                  ),
                                  TextSpan(
                                    text: 'or drag and drop',
                                    style: TextStyle(color: Color(0xff9CA3AF)),
                                  ),
                                ],
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff6B7280),
                                ),
                              ),
                            ),
                            const Text(
                              'SVG, PNG, JPG',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff9CA3AF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 187,
                      height: 44,
                      decoration: BoxDecoration(
                        color: const Color(0xffE1EFFE),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text(
                          'Pilih Foto',
                          style: TextStyle(
                            color: Color(0xff1C64F2),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    )
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
