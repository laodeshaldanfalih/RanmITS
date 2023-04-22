import 'package:flutter/material.dart';
import 'package:ranmits/pages/laporan_kehilangan2_page.dart';

class LaporanKehilangan1Page extends StatelessWidget {
  static const routeName = '/laporan-kehilangan1';
  const LaporanKehilangan1Page({super.key});

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
            Navigator.of(context).pushNamed(LaporanKehilangan2Page.routeName);
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
          height: 526,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Data Kendaraan & Pemilik',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff4B5563),
                ),
              ),
              SizedBox(
                height: 468,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Form(
                        formTitle: 'No. Handphone Pelapor',
                        formSubTitle: 'Masukkan alamat email'),
                    Form(
                        formTitle: 'Jenis Kendaraan',
                        formSubTitle: 'Pilih Jenis kendaraan'),
                    Form(
                        formTitle: 'Model Kendaraan',
                        formSubTitle: 'Masukkan Jenis kendaraan'),
                    Form(
                        formTitle: 'Tahun Keluaran',
                        formSubTitle: 'Masukkan tahun keluaran'),
                    Form(
                        formTitle: 'Warna Kendaraan',
                        formSubTitle: 'Masukkan warna kendaraan'),
                    Form(
                        formTitle: 'Plat Nomor Kendaraan',
                        formSubTitle: 'Masukkan plat nomor kendaraan'),
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
