import 'dart:io';
import 'package:flutter/material.dart';
import 'package:wallpaper_app/core/functions/on_generate_route.dart';
import 'package:wallpaper_app/features/home_view/presentation/home_view.dart';
import 'package:wallpaper_app/my_http_overrides.dart';

void main() {
  runApp(const MainApp());
  HttpOverrides.global = MyHttpOverrides();
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      color: Colors.white,
      onGenerateRoute: onGenerateRoute,
      initialRoute: HomeView.routeName,
      debugShowCheckedModeBanner: false,
    );
  }
}
