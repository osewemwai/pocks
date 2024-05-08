import 'package:flutter/material.dart';
import 'package:pocks/shared/navigation/app_route.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Pocks',
      debugShowCheckedModeBanner: false,
     theme: ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.purple,
      ),
     ),
      routerConfig: appRouter,
    );
  }
}
