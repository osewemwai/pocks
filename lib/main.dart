
import 'package:flutter/material.dart';
import 'package:pocks/shared/navigation/app_route.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadApp.router(
        title: 'Pocks',
        debugShowCheckedModeBanner: false,
        materialThemeBuilder: (context, theme) {
          return theme.copyWith(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          );
        },
        routerConfig: appRouter,
        );
  }
}
