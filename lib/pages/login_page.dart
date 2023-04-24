import 'package:flutter/material.dart';
import 'package:ranmits/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  static const routename = 'login-page';
  LoginPage({super.key});
  final alamatEmailController = TextEditingController();
  final passwordController = TextEditingController();

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
          'Login',
          style: TextStyle(
              color: Color(0xff374151),
              fontSize: 14.99,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
        child: SizedBox(
            height: 339,
            // width: 327,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                    color: Color(0xff374151),
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 146,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Form(
                        formTitle: 'Alamat Email',
                        formSubTitle: 'Masukkan alamat email',
                        controller: alamatEmailController,
                        obscureText: false,
                      ),
                      Form(
                        formTitle: 'Password',
                        formSubTitle: 'Masukkan alamat email',
                        controller: passwordController,
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(HomePage.routeName);
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
                        'Login',
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
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Belum punya akun ? ',
                      ),
                      TextSpan(
                        text: 'Buat Akun',
                        style: TextStyle(color: Color(0xff1C64F2)),
                      ),
                    ],
                    style: TextStyle(
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
