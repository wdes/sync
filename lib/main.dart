import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'appLocalizations.dart';
import 'app.dart';

class WdesSync extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'WdesSync';
    return MaterialApp(
      localizationsDelegates: [
        const AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English
        const Locale('fr', 'FR'), // French
      ],
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Main(title: appTitle),
    );
  }
}



void main() => runApp(WdesSync());