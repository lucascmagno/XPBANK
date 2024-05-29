import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/main_page.dart';
import 'pages/quotation_page.dart';
import 'pages/transfer_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banking App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/main': (context) => MainPage(),
        '/quotation': (context) => QuotationPage(),
        '/transfer': (context) => TransferPage(),
      },
    );
  }
}
