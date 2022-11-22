import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone_flutter/responsive/mobile_screen_layout.dart';
import 'package:insta_clone_flutter/responsive/responsive_layout_screen.dart';
import 'package:insta_clone_flutter/responsive/web_screen_layout.dart';
import 'package:insta_clone_flutter/screens/login_screen.dart';
import 'package:insta_clone_flutter/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyBejhDonTE_UE6UthaSRD34q4xVcd4Zkmo",
        appId: "1:472696065294:web:422ddf4b7f20069cf95b5f",
        messagingSenderId: "472696065294",
        projectId: "instaclone-50a6f",
        storageBucket: "instaclone-50a6f.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'InstaClone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      // home: const ResponsiveLayout(
      //   mobileScreenLayout: MobileScreenLayout(),
      //   webScreenLayout: WebeScreenLayout(),
      // ),
      home: const LoginScreen(),
    );
  }
}
