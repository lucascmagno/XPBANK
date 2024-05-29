import 'package:flutter/material.dart';

class QuotationPage extends StatefulWidget {
  final Future<double> Function()? fetchExchangeRate;

  QuotationPage({this.fetchExchangeRate});

  @override
  _QuotationPageState createState() => _QuotationPageState();
}

class _QuotationPageState extends State<QuotationPage> {
  double _exchangeRate = 0.0;
  bool _loading = false;

  Future<void> fetchExchangeRate() async {
    setState(() {
      _loading = true;
    });

    final rate = await widget.fetchExchangeRate!();
    setState(() {
      _exchangeRate = rate;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quotation'),
      ),
      body: Center(
        child: _loading
            ? CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '1 USD = $_exchangeRate BRL',
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: fetchExchangeRate,
                    child: Text('Fetch Exchange Rate'),
                  ),
                ],
              ),
      ),
    );
  }
}
