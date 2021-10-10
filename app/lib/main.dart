import 'package:flutter/material.dart';
import 'package:notes_buddy/screens/auth/login.screen.dart';
import 'package:notes_buddy/services/connection_check.service.dart';
import 'package:notes_buddy_api_client/notes_buddy_api_client.dart';

void main() {
  ConnectionStatusSingleton connectionStatus =
      ConnectionStatusSingleton.getInstance();
  connectionStatus.initialize();
  NotesBuddyApiClient(basePathOverride: 'http://localhost:3000');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes Buddy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: const TextTheme(
          headline5: TextStyle(
              fontFamily: 'Sans',
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 24),
          bodyText2: TextStyle(
              fontFamily: 'Sans',
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20),
          bodyText1: TextStyle(
              fontFamily: 'Sans',
              fontWeight: FontWeight.normal,
              color: Colors.black,
              fontSize: 18),
          subtitle2: TextStyle(
              fontFamily: 'Sans',
              fontWeight: FontWeight.normal,
              color: Colors.black,
              fontSize: 14),
        ),
      ),
      home: const LoginPage(),
    );
  }
}
