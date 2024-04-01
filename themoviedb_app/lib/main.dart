import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:themoviedb_app/services/movie_service.dart';
import 'package:themoviedb_app/widgets/auth_gate.dart';
import 'package:themoviedb_app/widgets/login_page/login_widget.dart';
import 'package:themoviedb_app/widgets/main_screen/main_screen_widget.dart';
import 'package:themoviedb_app/widgets/movie_details/movie_details_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:themoviedb_app/widgets/profile_page/profile.dart';
import 'firebase_options.dart';

void serviceLocator() {
  GetIt.instance.registerSingleton(MovieService());
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  serviceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(3, 37, 65, 1),
          centerTitle: true,
          titleTextStyle: TextStyle(),
        ),
      ),
      routes: {
        '/login': (context) => const LoginPage(),
        '/main_screen': (context) => const MainScreenWidget(),
        '/film': (context) => const MovieDetailsWidget(),
        '/profile': (context) => Profile(),
      },
      home: const AuthGate(),
      // initialRoute: '/login',
    );
  }
}
