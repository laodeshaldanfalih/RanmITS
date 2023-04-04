import 'package:flutter/material.dart';
import 'package:ranmits/pages/home_page.dart';
import 'package:ranmits/pages/login_page.dart';
import 'package:ranmits/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        RegisterPage.routename: (context) => const RegisterPage(),
        LoginPage.routename: (context) => const LoginPage()
      },
    );
  }
}
