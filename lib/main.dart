import 'package:antoiler/view/SplashPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'CustomClasses/AllTitles.dart';
import 'CustomClasses/routes/OnPageGenerateRoute.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AllTitles.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: OnPageGenerateRoute.route,
      initialRoute: '/',
      routes: {
        "/": (context) {
          return SplashPage();
        }
      },
    );
  }
}