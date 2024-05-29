import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  final TextEditingController _accountController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transfer'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _accountController,
              decoration: InputDecoration(labelText: 'Account Number'),
            ),
            TextField(
              controller: _amountController,
              decoration: InputDecoration(labelText: 'Amount'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Aqui você pode adicionar a lógica de transferência
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Transfer Successful'),
                ));
              },
              child: Text('Transfer'),
            ),
          ],
        ),
      ),
    );
  }
}
