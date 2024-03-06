import 'package:edspert/constant/app_colors.dart';
import 'package:edspert/constant/route_constant.dart';
import 'package:edspert/screen/login_screen.dart';
import 'package:edspert/screen/registration_screen.dart';
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
        scaffoldBackgroundColor: AppColors.background,
        backgroundColor: AppColors.background,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: GoRouter(
        initialLocation: RouteConstant.splash,
        routes: [
          GoRoute(
            path: '/splash',
            name: RouteConstant.splash,
            builder: (BuildContext context, GoRouterState state) =>
                const SplashScreen(),
          ),
          GoRoute(
            path: '/login',
            name: RouteConstant.login,
            builder: (BuildContext context, GoRouterState state) =>
                const LoginScreen(),
          ),
          GoRoute(
            path: '/registration',
            name: RouteConstant.registration,
            builder: (BuildContext context, GoRouterState state) =>
                const RegistrationScreen(),
          ),
        ],
      ),
    );
  }
}
