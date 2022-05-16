import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_remake/responsive/mobile_screen_layout.dart';
import 'package:instagram_remake/responsive/responsive_layout_screen.dart';
import 'package:instagram_remake/responsive/web_screen_layout.dart';
import 'package:instagram_remake/screens/signup_screen.dart';
import 'package:instagram_remake/utilities/colors.dart';
import 'Screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyB2fg-K50Q_XLnLM6MziYzHR8_zZo0JrSI',
        appId: '1:1038756800282:web:ab40b4553787cf96f3aea3',
        messagingSenderId: '1038756800282',
        projectId: 'instagram-remake-67dc6',
        storageBucket: 'instagram-remake-67dc6.appspot.com',
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Remake',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      /* home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
 */
      home: const SignupScreen(),
    ),
  );
}
