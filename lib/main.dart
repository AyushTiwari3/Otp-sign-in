import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:log_in_using_otp/phone_otp_ui/home.dart';
import 'package:log_in_using_otp/phone_otp_ui/phone.dart';
import 'package:log_in_using_otp/phone_otp_ui/verify.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  User? user;
  @override
  void initState() {
    super.initState();
    user = FirebaseAuth.instance.currentUser;
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: user!=null?'home':'phone',
      debugShowCheckedModeBanner: false,
      routes: {
        'phone': (context) => const MyPhone(),
        'verify': (context) =>const  MyVerify(),
        'home': (context) => const MyHome(),
      },
    );
  }
}
