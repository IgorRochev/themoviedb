import 'package:flutter/material.dart';
import 'package:themoviedb_app/widgets/login_page/login_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme:
            const AppBarTheme(backgroundColor: Color.fromRGBO(3, 37, 65, 1)),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}