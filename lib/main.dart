import 'package:chat_app/shared/helper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/main_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDdRXrkocrXopW9UsseuvpYHzz7XMf5s84",
          appId: "chat-app-c886b",
          messagingSenderId: "messagingSenderId",
          projectId: "chat-app-c886b"));
  runApp(const Home(),);
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Courgette",
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home: const FirstScreen(),
    );
  }
}
