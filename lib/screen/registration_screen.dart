import 'package:edspert/constant/app_colors.dart';
import 'package:edspert/constant/route_constant.dart';
import 'package:edspert/widget/data_form.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 43,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logoP.png'),
            SizedBox(
              height: 80,
            ),
            const Text(
              'Daftar',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 36,
            ),
            DataForm(hintText: 'Alamat Email', icon: Icons.mail_outline),
            const SizedBox(
              height: 12,
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
              height: 12,
            ),
            DataForm(
              hintText: 'Ulangi Password',
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
                  'Sudah Punya Akun? ',
                  style: TextStyle(
                    color: Colors.white38,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.go(RouteConstant.login);
                  },
                  child: Text(
                    'Masuk',
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
            onPressed: () {},
            child: Text(
              'Daftar',
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
