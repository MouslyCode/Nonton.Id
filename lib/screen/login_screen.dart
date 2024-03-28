import 'dart:ui';

import 'package:edspert/constant/app_colors.dart';
import 'package:edspert/constant/route_constant.dart';
import 'package:edspert/widget/data_form.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formkey = GlobalKey();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 43,
        ),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/logo.svg'),
              SizedBox(
                height: 80,
              ),
              const Text(
                'Masuk',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 36,
              ),
              DataForm(
                hintText: 'Username',
                icon: Icons.person_2_outlined,
              ),
              const SizedBox(
                height: 12,
              ),
              DataForm(
                hintText: 'Password',
                icon: Icons.lock_outline_rounded,
                obscureText: true,
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Belum Punya Akun? ',
                    style: TextStyle(
                      color: Colors.white38,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context.go(RouteConstant.registration);
                    },
                    child: Text(
                      'Daftar',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        child: Container(
          decoration: BoxDecoration(
            gradient: AppColors.accent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ElevatedButton(
            onPressed: () {
              context.go(RouteConstant.dashboard);
            },
            child: Text(
              'Masuk',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            style: ElevatedButton.styleFrom(
              shadowColor: Colors.transparent,
              backgroundColor: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}
