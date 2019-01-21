import 'package:flutter/material.dart';
import 'appLocalizations.dart';

class AccountsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).accounts),
      ),
      body: Center(
        child: Text('')
      ),
    );
  }
}

