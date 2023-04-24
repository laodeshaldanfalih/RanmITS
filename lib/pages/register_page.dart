import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ranmits/pages/login_page.dart';
import 'package:ranmits/pages/verification_page.dart';

class RegisterPage extends StatelessWidget {
  static const routename = 'RegisterPagePage-page';

  final alamatEmailController = TextEditingController();
  final namaAndaController = TextEditingController();
  final passwordController = TextEditingController();
  final konfirmasiPasswordController = TextEditingController();

  RegisterPage({super.key});

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
          'Buat Akun',
          style: TextStyle(
              color: Color(0xff374151),
              fontSize: 14.99,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
        child: SizedBox(
            height: 499,
            // width: 327,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Buat Akun',
                  style: TextStyle(
                    color: Color(0xff374151),
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 306,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Form(
                        formTitle: 'Alamat Email',
                        formSubTitle: 'Masukkan alamat email',
                        obscureText: false,
                        controller: alamatEmailController,
                      ),
                      Form(
                        formTitle: 'Nama Anda',
                        formSubTitle: 'Masukkan nama anda ',
                        obscureText: false,
                        controller: namaAndaController,
                      ),
                      Form(
                        formTitle: 'Password',
                        formSubTitle: 'Buat password baru',
                        obscureText: true,
                        controller: passwordController,
                      ),
                      Form(
                        formTitle: 'Konfirmasi Password',
                        formSubTitle: 'Masukkan password anda',
                        obscureText: true,
                        controller: konfirmasiPasswordController,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(VerificationPage.routeName);
                  },
                  child: Container(
                    height: 44,
                    width: double.infinity,
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
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Sudah punya akun ? ',
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context)
                                .pushNamed(LoginPage.routename);
                          },
                        text: 'Login',
                        style: const TextStyle(
                          color: Color(0xff1C64F2),
                        ),
                      ),
                    ],
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff575757),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

class Form extends StatelessWidget {
  const Form(
      {super.key,
      required this.formTitle,
      required this.formSubTitle,
      required this.obscureText,
      required this.controller});
  final String formTitle;
  final String formSubTitle;
  final bool obscureText;
  final controller;

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
          SizedBox(
            height: 42,
            child: TextField(
              controller: controller,
              obscureText: obscureText,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 12),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Color(0xffC9C9C9),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Color(0xff1C64F2)),
                  ),
                  hintText: formSubTitle),
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
