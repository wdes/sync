import 'package:flutter/material.dart';
import 'appLocalizations.dart';
import 'package:intl/intl.dart';

class FoldersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).folders),
      ),
      body: Center(
        child: Text('')
      ),
    );
  }
}

