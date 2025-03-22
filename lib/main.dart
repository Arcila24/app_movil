import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/login_screen.dart';  // Importamos la pantalla de login

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Inicializar Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ApunCo", // Título de la app
      theme: ThemeData(
        primarySwatch: Colors.blue, // Tema de la aplicación
      ),
      home: LoginScreen(), // Pantalla inicial
    );
  }
}
