import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/quotation');
              },
              child: Text('Quotation'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/transfer');
              },
              child: Text('Transfer'),
            ),
          ],
        ),
      ),
    );
  }
}
