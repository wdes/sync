import 'package:flutter/material.dart';
import 'appLocalizations.dart';
import 'accounts.dart';
import 'folders.dart';

class Main extends StatefulWidget {
  Main({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the Drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Text('WdesSync', style: TextStyle(
                    color: Colors.white
                  )
                )
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text(AppLocalizations.of(context).home),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(AppLocalizations.of(context).folders),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FoldersScreen()),
                );
              },
            ),
            ListTile(
              title: Text(AppLocalizations.of(context).accounts),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AccountsScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

