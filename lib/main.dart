import 'package:edspert/constant/route_constant.dart';
import 'package:edspert/screen/login_screen.dart';
import 'package:edspert/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: const Color(0xFF1C1A29),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: GoRouter(
        routes: [
          GoRoute(path: '/splash'),
          GoRoute(path: '/login'),
          GoRoute(path: '/registration'),
          GoRoute(
            path: '/',
            routes: [
              GoRoute(path: '/movies'),
              GoRoute(path: '/movies/:details')
            ],
          ),
        ],
      ),
    );
  }
}
