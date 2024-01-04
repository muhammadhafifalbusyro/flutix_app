import 'package:flutter/material.dart';

class MyWalletPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Gantilah data dummy ini dengan data saldo aktual dari server atau penyimpanan lokal
    double balance = 100.0;

    return Center(
      child: Text('My Wallet\nBalance: \$${balance.toStringAsFixed(2)}'),
    );
  }
}
