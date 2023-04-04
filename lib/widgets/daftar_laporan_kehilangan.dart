import 'package:flutter/material.dart';

class DaftarLaporanKehilangan extends StatelessWidget {
  const DaftarLaporanKehilangan({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Daftar Laporan Kendaran Hilang',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 16),
        Container(
          height: 30,
          width: 232,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 79,
                height: 30,
                decoration: BoxDecoration(
                    color: const Color(0xff1C64F2),
                    borderRadius: BorderRadius.circular(24)),
                child: const Center(
                  child: Text(
                    'Semua',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 67,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: const Color(0xffD1D5DB),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Motor',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffD1D5DB)),
                  ),
                ),
              ),
              Container(
                width: 67,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: const Color(0xffD1D5DB),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Mobil',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffD1D5DB),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
