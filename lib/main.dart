import 'package:educ8/firebase_options.dart';
import 'package:educ8/screens/categories_screen.dart';
import 'package:educ8/screens/home_screen.dart';
import 'package:educ8/screens/lecture_screen.dart';
import 'package:educ8/screens/login_screen.dart';
import 'package:educ8/screens/projects_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      builder: (context, child) {
        return const MaterialApp(
          title: 'EDUC8',
          debugShowCheckedModeBanner: false,
          home: LoginScreen(),
        );
      },
    );
  }
}
