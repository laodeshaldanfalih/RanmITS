import 'package:flutter/material.dart';

class AlertBox extends StatelessWidget {
  const AlertBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      // width: 327,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xffEBF5FF),
        border: Border.all(
          color: const Color(0xffA4CAFE),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/speakerphone.png'),
            const SizedBox(
              height: 72,
              width: 227,
              child: Text(
                'Selalu letakkan kendaraan anda pada tempat parkir yang sesuai dan gunakan kunci ganda sebelum meninggalkan kendaraan',
                overflow: TextOverflow.visible,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff1E429F),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
